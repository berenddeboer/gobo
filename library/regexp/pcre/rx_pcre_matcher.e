indexing

	description:

		"PCRE regexp matchers"

	library: "Gobo Eiffel Regexp Library"
	copyright: "Copyright (c) 2001-2002, Harald Erdbruegger and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class RX_PCRE_MATCHER

inherit

	RX_PCRE_BYTE_CODE_CONSTANTS
		export {NONE} all end

	RX_PCRE_OPTION_ROUTINES
		export {NONE} all end

	RX_PCRE_SHARED_CHARACTER_SETS
		export {NONE} all end

	UT_CHARACTER_CODES
		export {NONE} all end

	KL_SHARED_PLATFORM

	KL_IMPORTED_NATIVE_ARRAY_ROUTINES

creation

	make

feature {NONE} -- Initialization

	make (a_regexp: RX_PCRE_REGULAR_EXPRESSION) is
			-- On entry ecode points to the first opcode, and `eptr' to the first character
			-- in the subject string, while `eptr_vector' holds the value of `eptr' at the start of the
			-- last bracketed group - used for breaking infinite loops matching zero-length
			-- strings.
		require
			a_regexp_not_void: a_regexp /= Void
		do
			regexp := a_regexp
			brastart_vector := NATIVE_INTEGER_ARRAY_.make (8)
			brastart_lower := 0
			brastart_count := 0
			brastart_capacity := 8
			eptr_vector := NATIVE_INTEGER_ARRAY_.make (8)
			eptr_lower := 0
			eptr_upper := -1
			eptr_capacity := 8
		ensure
			regexp_set: regexp = a_regexp
		end

feature -- Matching

	match_start (a_eptr: INTEGER): BOOLEAN is
		local
			new_count: INTEGER
		do
			subject := regexp.subject
			byte_code := regexp.byte_code
			code_position := 0
			eptr := a_eptr
			eptr_lower := 0
			eptr_upper := -1
			offset_top := 2 -- TODO: + regexp.offset_vector.lower
			brastart_count := regexp.offset_vector_count
			new_count := brastart_lower + brastart_count
			if brastart_capacity < new_count then
				brastart_vector := NATIVE_INTEGER_ARRAY_.resize (brastart_vector, brastart_capacity, new_count)
				brastart_capacity := new_count
			end
			is_caseless := regexp.is_caseless
			is_multiline := regexp.is_multiline
			is_dotall := regexp.is_dotall
			Result := match_internal (0, True, False) = return_true
		end

feature {NONE} -- Access

	regexp: RX_PCRE_REGULAR_EXPRESSION
			-- Associated regular expression

	byte_code: RX_BYTE_CODE
			-- Byte code of regular expression

	code_position: INTEGER
			-- Position in `byte_code'

	subject: STRING
			-- Input string

	eptr: INTEGER
			-- Position in `subject'

	offset_top: INTEGER

	brastart_vector: like NATIVE_INTEGER_ARRAY_TYPE
	brastart_lower: INTEGER
	brastart_count: INTEGER
	brastart_capacity: INTEGER

	eptr_vector: like NATIVE_INTEGER_ARRAY_TYPE
	eptr_lower: INTEGER
	eptr_upper: INTEGER
	eptr_capacity: INTEGER

feature {NONE} -- Status report

	is_caseless: BOOLEAN

	is_multiline: BOOLEAN

	is_dotall: BOOLEAN

feature {NONE} -- Matching

	match (a_ecode: INTEGER; a_isgroup, a_condassert: BOOLEAN): INTEGER is
		local
			old_eptr: INTEGER
			old_code_position: INTEGER
			old_caseless: BOOLEAN
			old_dotall: BOOLEAN
			old_multiline: BOOLEAN
			old_offset_top: INTEGER
			old_eptr_upper: INTEGER
		do
			old_eptr := eptr
			old_code_position := code_position
			old_caseless := is_caseless
			old_dotall := is_dotall
			old_multiline := is_multiline
			old_offset_top := offset_top
			old_eptr_upper := eptr_upper
			Result := match_internal (a_ecode, a_isgroup, a_condassert)
			eptr := old_eptr
			code_position := old_code_position
			is_caseless := old_caseless
			is_dotall := old_dotall
			is_multiline := old_multiline
			offset_top := old_offset_top
			eptr_upper := old_eptr_upper
		ensure
			valid_result: Result = return_true or Result = return_false
		end

	match_internal (a_ec: INTEGER; a_isgroup, a_iscondassert: BOOLEAN): INTEGER is
		local
			op: INTEGER
			ec: INTEGER
			n, off: INTEGER
			tmp, tmpptr: INTEGER
			opts: INTEGER
			i, j, nb: INTEGER
			old_brastart_lower: INTEGER
			old_eptr_lower: INTEGER
			old_eptr_upper: INTEGER
			new_capacity: INTEGER
			new_count: INTEGER
		do
			ec := a_ec
				-- At the start of a bracketed group, add the current subject pointer to the
				-- stack of such pointers, to be re-instated at the end of the group when we hit
				-- the closing ket. When `match' is called in other circumstances, we don't add to
				-- the stack.
			if a_isgroup then
				eptr_upper := eptr_upper + 1
				if eptr_capacity <= eptr_upper then
					new_capacity := 2 * (eptr_upper + 1)
					eptr_vector := NATIVE_INTEGER_ARRAY_.resize (eptr_vector, eptr_capacity, new_capacity)
					eptr_capacity := new_capacity
				end
				eptr_vector.put (eptr, eptr_upper)
			end
				-- Now start processing the operations.
			from until Result /= return_none loop
				op := byte_code.opcode_item (ec)
				if op > op_bra then
					Result := match_additional_bracket (ec, op - op_bra)
					ec := code_position
				else
						-- Other types of node can be handled by a switch.
					inspect op
					when op_bra then
							-- Non-capturing bracket: optimized.
						Result := next_matching_alternate (ec)
						if Result /= return_true then
							Result := return_false
						end
					when op_cond then
							-- Conditional group: compilation checked that there are no more than
							-- two branches. If the condition is false, skipping the first branch takes us
							-- past the end if there is only one branch, but that's OK because that is
							-- exactly what going to the ket would do.
						if byte_code.opcode_item (ec + 2) = op_cref then
								-- Condition is extraction test.
							tmp := byte_code.integer_item (ec + 3) * 2
							if tmp < offset_top and then regexp.offset_vector.item (tmp) > 0 then
								Result := match (ec + 4, True, False)
							else
								Result := match (ec + 2 + byte_code.integer_item (ec + 1), True, False)
							end
						else
								-- The condition is an assertion. Call `match' to evaluate it - setting
								-- the final argument True causes it to stop at the end of an assertion.
							Result := match (ec + 2, True, True)
							if Result = return_true then
								ec := ec + 2 + byte_code.integer_item (ec + 3)
								from until byte_code.opcode_item (ec) /= op_alt loop
									ec := ec + byte_code.integer_item (ec + 1)
								end
							else
								ec := ec + byte_code.integer_item (ec + 1)
							end
							Result := match (ec + 2, True, False)
						end
					when op_cref then
							-- Skip over conditional reference data if encountered (should not be).
						ec := ec + 2
					when op_end then
							-- End of the pattern. If PCRE_NOTEMPTY is set, fail if we have matched
							-- an empty string - recursion will then try other alternatives, if any.
						if not regexp.is_empty_allowed and then eptr = regexp.start_match then
							Result := return_false
						else
								-- Record where we ended.
							regexp.set_next_start (eptr)
								-- And how many extracts were taken.
							regexp.set_match_count (offset_top)
							Result := return_true
						end
					when op_opt then
							-- Change option settings.
						opts := byte_code.integer_item (ec + 1)
						is_caseless := is_option_caseless (opts)
						is_multiline := is_option_multiline (opts)
						is_dotall := is_option_dotall (opts)
						ec := ec + 2
					when op_assert, op_assertback then
							-- Assertion brackets. Check the alternative branches in turn - the
							-- matching won't pass the KET for an assertion. If any one branch matches,
							-- the assertion is true. Lookbehind assertions have an op_reverse item at the
							-- start of each branch to move the current point backwards, so the code at
							-- this level is identical to the lookahead case.
						old_eptr_lower := eptr_lower
						old_eptr_upper := eptr_upper
						eptr_lower := old_eptr_upper + 1
						eptr_upper := eptr_lower - 1
						Result := next_matching_alternate (ec)
						eptr_lower := old_eptr_lower
						eptr_upper := old_eptr_upper
						ec := code_position
						if byte_code.opcode_item (ec) = op_ket then
							Result := return_false
						elseif a_iscondassert then
								-- If checking an assertion for a condition, return True.
							Result := return_true
						else
							Result := return_none
								-- Continue from after the assertion, updating the offsets high water
								-- mark, since extracts may have been taken during the assertion.
							from op := op_alt until op /= op_alt loop
								ec := ec + byte_code.integer_item (ec + 1)
								op := byte_code.opcode_item (ec)
							end
							ec := ec + 2
							offset_top := regexp.match_count
						end
					when op_assert_not, op_assertback_not then
							-- Negative assertion: all branches must fail to match.
						if next_matching_alternate (ec) = return_true then
							Result := return_false
						elseif a_iscondassert then
							Result := return_true
						else
							ec := code_position + 2
						end
					when op_reverse then
							-- Move the subject pointer back. This occurs only at the start of
							-- each branch of a lookbehind assertion. If we are too close to the start to
							-- move back, this match function fails. When working with UTF-8 we move
							-- back a number of characters, not bytes.
						eptr := eptr - byte_code.integer_item (ec + 1)
						if eptr < regexp.subject_start then
							Result := return_false
						else
							ec := ec + 2
						end
					when op_recurse then
							-- Recursion matches the current regexp, nested. If there are any capturing
							-- brackets started but not finished, we have to save their starting points
							-- and reinstate them after the recursion. However, we don't know how many
							-- such there are (`offset_top' records the completed total) so we just have
							-- to save all the potential data. There may be up to 99 such values, which
							-- is a bit large to put on the stack, but using malloc for small numbers
							-- seems expensive. As a compromise, the stack is used when there are fewer
							-- than 16 values to store; otherwise malloc is used. A problem is what to do
							-- if the malloc fails ... there is no way of returning to the top level with
							-- an error. Save the top 15 values on the stack, and accept that the rest
							-- may be wrong.
						old_brastart_lower := brastart_lower
						brastart_lower := brastart_lower + brastart_count
						new_count := brastart_lower + brastart_count
						if brastart_capacity < new_count then
							brastart_vector := NATIVE_INTEGER_ARRAY_.resize (brastart_vector, brastart_capacity, new_count)
							brastart_capacity := new_count
						end
						j := brastart_lower
						nb := old_brastart_lower + brastart_count - 1
						from i := old_brastart_lower until i > nb loop
							brastart_vector.put (brastart_vector.item (i), j)
							j := j + 1
							i := i + 1
						end
						tmp := match (0, True, False)
						brastart_lower := old_brastart_lower
						if tmp = return_true then
								-- In case the recursion has set more capturing values, save the final
								-- number, then move along the subject till after the recursive match,
								-- and advance one byte in the pattern code.
							offset_top := regexp.match_count
							eptr := regexp.subject_next_start
							ec := ec + 1
						else
							Result := return_false
						end
					when op_once then
							-- "Once" brackets are like assertion brackets except that after a match,
							-- the point in the subject string is not moved back. Thus there can never be
							-- a move back into the brackets. Check the alternative branches in turn - the
							-- matching won't pass the KET for this kind of subpattern. If any one branch
							-- matches, we carry on as at the end of a normal bracket, leaving the subject
							-- pointer.
						tmp := ec
						tmpptr := eptr
							-- Never uses the result.
						n := next_matching_alternate (ec)
						ec := code_position
						op := byte_code.opcode_item (ec)
							-- If hit the end of the group (which could be repeated), fail.
						if op /= op_once and then op /= op_alt then
							Result := return_false
						else
								-- Continue as from after the assertion, updating the offsets high water
								--  mark, since extracts may have been taken.
							from op := op_alt until op /= op_alt loop
								ec := ec + byte_code.integer_item (ec + 1)
								op := byte_code.opcode_item (ec)
							end
							offset_top := regexp.match_count
							eptr := regexp.subject_next_start
								-- For a non-repeating ket, just continue at this level. This also
								-- happens for a repeating ket if no characters were matched in the group.
								-- This is the forcible breaking of infinite loops as implemented in Perl
								-- 5.005. If there is an options reset, it will get obeyed in the normal
								-- course of events.
							if op = op_ket or else eptr = tmpptr then
								ec := ec + 2
							else
									-- The repeating kets try the rest of the pattern or restart from the
									-- preceding bracket, in the appropriate order. We need to reset any options
									-- that changed within the bracket before re-running it, so check the next
									-- opcode.
								if byte_code.opcode_item (ec + 2) = op_opt then
									regexp.set_ims_options (byte_code.integer_item (ec + 3))
								end
								if op = op_ketrmin then
									Result := match (ec + 2, False, False)
									if Result /= return_true then
										Result := match (tmp, True, False)
									end
								else
									check
										op_ketrmax: op = op_ketrmax
									end
									Result := match (tmp, True, False)
									if Result /= return_true then
										Result := match (ec + 2, False, False)
									end
								end
							end
						end
					when op_alt then
							-- An alternation is the end of a branch; scan along to find the end of the
							-- bracketed group and go to there.
						from until op /= op_alt loop
							ec := ec + byte_code.integer_item (ec + 1)
							op := byte_code.opcode_item (ec)
						end
					when op_brazero then
							-- BRAZERO and BRAMINZERO occur just before a bracket group, indicating
							-- that it may occur zero times. It may repeat infinitely, or not at all -
							-- i.e. it could be ()* or ()? in the pattern. Brackets with fixed upper
							-- repeat limits are compiled as a number of copies, with the optional ones
							-- preceded by BRAZERO or BRAMINZERO.
						tmpptr := ec + 1
						if match (tmpptr, True, False) = return_true then
							Result := return_true
						else
							from op := op_alt until op /= op_alt loop
								tmpptr := tmpptr + byte_code.integer_item (tmpptr + 1)
								op := byte_code.opcode_item (tmpptr)
							end;
							ec := tmpptr + 2
						end
					when op_braminzero then
						tmpptr := ec + 1
						from op := op_alt until op /= op_alt loop
							tmpptr := tmpptr + byte_code.integer_item (tmpptr + 1)
							op := byte_code.opcode_item (tmpptr)
						end
						if match (tmpptr + 2, True, False) = return_true then
							Result := return_true
						else
							ec := ec + 1
						end
					when op_ket, op_ketrmin, op_ketrmax then
							-- End of a group, repeated or non-repeating. If we are at the end of
							-- an assertion "group", stop matching and return True, but record the
							-- current high water mark for use by positive assertions. Do this also
							-- for the "once" (not-backup up) groups.
						tmp := ec - byte_code.integer_item (ec + 1)
							-- Back up the stack of bracket start pointers.
						check can_backup: eptr_upper >= 0 end
						tmpptr := eptr_vector.item (eptr_upper)
						eptr_upper := eptr_upper - 1
						op := byte_code.opcode_item (tmp)
						if
							op = op_assert or else op = op_assert_not or else op = op_once
							or else op = op_assertback or else op = op_assertback_not
						then
								-- For ONCE.
							regexp.set_next_start (eptr)
							regexp.set_match_count (offset_top)
							Result := return_true
						else
								-- In all other cases except a conditional group we have to check the
								-- group number back at the start and if necessary complete handling an
								-- extraction by setting the offsets and bumping the high water mark.
							if op /= op_cond then
								check branch: op >= op_bra end
								n := op - op_bra
								off := n * 2
								if n > 0 then
									regexp.offset_vector.put (brastart_vector.item (brastart_lower + off), off)
									regexp.offset_vector.put (eptr, off + 1)
									if offset_top <= off then
										offset_top := off + 2
									end
								end
							end
								-- Reset the value of the ims flags, in case they got changed during the group.
							is_caseless := regexp.is_caseless
							is_multiline := regexp.is_multiline
							is_dotall := regexp.is_dotall
							op := byte_code.opcode_item (ec)
							if op = op_ket or else eptr <= tmpptr then
									-- For a non-repeating ket, just continue at this level. This also
									-- happens for a repeating ket if no characters were matched in the group.
									-- This is the forcible breaking of infinite loops as implemented in Perl
									-- 5.005. If there is an options reset, it will get obeyed in the normal
									-- course of events.
								ec := ec + 2
							else
									-- The repeating kets try the rest of the pattern or restart from the
									--  preceding bracket, in the appropriate order.
								if op = op_ketrmin then
									Result := match (ec + 2, False, False)
									if Result /= return_true then
										Result := match (tmp, True, False)
									end
								else
									check
										op_ketrmax: op = op_ketrmax
									end
									Result := match (tmp, True, False)
									if Result /= return_true then
										Result := match (ec + 2, False, False)
									end
								end
							end
						end
					when op_circ then
							-- Start of subject unless notbol, or after internal newline if multiline.
						if not regexp.is_bol and then eptr = regexp.subject_start then
							Result := return_false
						elseif is_multiline then
							if eptr > regexp.subject_start and then subject.item_code (eptr - 1) /= New_line_code then
								Result := return_false
							else
								ec := ec + 1
							end
						elseif eptr > regexp.subject_start then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_sod then
							-- Start of subject assertion.
						if eptr > regexp.subject_start then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_doll then
							-- Assert before internal newline if multiline, or before a terminating
							-- newline unless endonly is set, else end of subject unless noteol is set.
						if is_multiline then
							if eptr <= regexp.subject_end then
								if subject.item_code (eptr) /= New_line_code then
									Result := return_false
								else
									ec := ec + 1
								end
							elseif regexp.is_eol then
								ec := ec + 1
							else
								Result := return_false
							end
						elseif not regexp.is_eol then
							Result := return_false
						elseif not regexp.is_dollar_endonly then
							if
								eptr < regexp.subject_end or else
								(eptr = regexp.subject_end and then subject.item_code (eptr) /= New_line_code)
							then
								Result := return_false
							else
								ec := ec + 1
							end
						elseif eptr <= regexp.subject_end then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_eod then
							-- End of subject assertion (\z).
						if eptr <= regexp.subject_end then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_eodn then
							-- End of subject or ending \n assertion (\Z).
						if
							eptr < regexp.subject_end or else
							(eptr = regexp.subject_end and then subject.item_code (eptr) /= New_line_code)
						then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_not_word_boundary then
							-- No word boundary assertion.
						if
							(eptr > regexp.subject_start and then regexp.word_set.has (subject.item_code (eptr - 1))) /=
							(eptr <= regexp.subject_end and then regexp.word_set.has (subject.item_code (eptr)))
						then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_word_boundary then
							-- Word boundary assertions.
						if
							(eptr > regexp.subject_start and then regexp.word_set.has (subject.item_code (eptr - 1))) =
							(eptr <= regexp.subject_end and then regexp.word_set.has (subject.item_code (eptr)))
						then
							Result := return_false
						else
							ec := ec + 1
						end
					when op_any then
							-- Match a single character type; inline for speed.
						if not is_dotall and then eptr <= regexp.subject_end and then subject.item_code (eptr) = New_line_code then
							Result := return_false
						elseif eptr > regexp.subject_end then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_not_digit then
						if eptr > regexp.subject_end or else digit_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_digit then
						if eptr > regexp.subject_end or else not digit_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_not_whitespace then
						if eptr > regexp.subject_end or else space_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_whitespace then
						if eptr > regexp.subject_end or else not space_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_not_wordchar then
						if eptr > regexp.subject_end or else regexp.word_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_wordchar then
						if eptr > regexp.subject_end or else not regexp.word_set.has (subject.item_code (eptr)) then
							Result := return_false
						else
							eptr := eptr + 1
							ec := ec + 1
						end
					when op_ref then
						Result := match_repeated_refs (ec)
						ec := code_position
					when op_class then
						Result := match_repeated_classes (ec)
						ec := code_position
					when op_chars then
							-- Match a run of characters.
						n := byte_code.integer_item (ec + 1)
						ec := ec + 2
						if eptr + n - 1 > regexp.subject_end then
							Result := return_false
						elseif is_caseless then
							from until n <= 0 loop
								if
									regexp.character_case_mapping.to_lower (byte_code.character_item (ec)) /=
									regexp.character_case_mapping.to_lower (subject.item_code (eptr))
								then
									Result := return_false
									n := 0
								else
									ec := ec + 1
									eptr := eptr + 1
									n := n - 1
								end
							end
						else
							from until n <= 0 loop
								if byte_code.character_item (ec) /= subject.item_code (eptr) then
									Result := return_false
									n := 0
								else
									ec := ec + 1
									eptr := eptr + 1
									n := n - 1
								end
							end
						end
					-- Match a single character repeatedly.
					when op_exact then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_repeated_characters (ec, tmp, tmp, False)
					when op_upto, op_minupto then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_repeated_characters (ec, 0, tmp, op = op_minupto)
					when op_star, op_minstar then
						ec := ec + 2
						Result := match_repeated_characters (ec, 0, infinity, op = op_minstar)
					when op_plus, op_minplus then
						ec := ec + 2
						Result := match_repeated_characters (ec, 1, infinity, op = op_minplus)
					when op_query, op_minquery then
						ec := ec + 2
						Result := match_repeated_characters (ec, 0, 1, op = op_minquery)
					when op_not then
							-- Match a negated single character.
						if eptr > regexp.subject_end then
							Result := return_false
						else
							ec := ec + 1
							if is_caseless then
								if
									regexp.character_case_mapping.to_lower (byte_code.character_item (ec)) =
									regexp.character_case_mapping.to_lower (subject.item_code (eptr))
								then
									Result := return_false
								end
							else
								if byte_code.character_item (ec) = subject.item_code (eptr) then
									Result := return_false
								end
							end
							if Result = 0 then
								ec := ec + 1
								eptr := eptr + 1
							end
						end
					-- Match a negated single character repeatedly. This is almost a repeat of
					-- the code for a repeated single character, but I haven't found a nice way of
					-- commoning these up that doesn't require a test of the positive/negative
					-- option for each character match. Maybe that wouldn't add very much to the
					-- time taken, but character matching *is* what this is all about...
					when op_notexact then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_not_repeated_characters (ec, tmp, tmp, False)
					when op_notupto, op_notminupto then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_not_repeated_characters (ec, 0, tmp, op = op_notminupto)
					when op_notstar, op_notminstar then
						ec := ec + 2
						Result := match_not_repeated_characters (ec, 0, infinity, op = op_notminstar)
					when op_notplus, op_notminplus then
						ec := ec + 2
						Result := match_not_repeated_characters (ec, 1, infinity, op = op_notminplus)
					when op_notquery, op_notminquery then
						ec := ec + 2
						Result := match_not_repeated_characters (ec, 0, 1, op = op_notminquery)
					-- Match a single character type repeatedly; several different opcodes
					-- share code. This is very similar to the code for single characters, but we
					-- repeat it in the interests of efficiency.
					when op_typeexact then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_repeated_type (ec, tmp, tmp, True)
					when op_typeupto, op_typeminupto then
						tmp := byte_code.integer_item (ec + 1)
						ec := ec + 3
						Result := match_repeated_type (ec, 0, tmp, op = op_typeminupto)
					when op_typestar, op_typeminstar then
						ec := ec + 2
						Result := match_repeated_type (ec, 0, infinity, op = op_typeminstar)
					when op_typeplus, op_typeminplus then
						ec := ec + 2
						Result := match_repeated_type (ec, 1, infinity, op = op_typeminplus)
					when op_typequery, op_typeminquery then
						ec := ec + 2
						Result := match_repeated_type (ec, 0, 1, op = op_typeminquery)
					else
							-- There's been some horrible disaster.
							-- TODO: report error.
						check False end
					end
				end
			end
		ensure
			valid_result: Result = return_true or Result = return_false
		end

	match_additional_bracket (a_ec, a_number: INTEGER): INTEGER is
			-- Opening capturing bracket. If there is space in the offset vector, save
			-- the current subject position in the working slot at the top of the vector. We
			-- mustn't change the current values of the data slot, because they may be set
			-- from a previous iteration of this group, and be referred to by a reference
			-- inside the group.
			-- If the bracket fails to match, we need to restore this value and also the
			-- values of the final offsets, in case they were set by a previous iteration of
			-- the same bracket.
		local
			offset: INTEGER
			save_offset1: INTEGER
			save_offset2: INTEGER
			save_offset3: INTEGER
		do
			offset := a_number * 2
			save_offset1 := regexp.offset_vector.item (offset)
			save_offset2 := regexp.offset_vector.item (offset + 1)
			save_offset3 := brastart_vector.item (brastart_lower + offset)
			brastart_vector.put (eptr, brastart_lower + offset)
			Result := next_matching_alternate (a_ec)
			if Result /= return_true then
				regexp.offset_vector.put (save_offset1, offset)
				regexp.offset_vector.put (save_offset2, offset+1)
				brastart_vector.put (save_offset3, brastart_lower + offset)
				Result := return_false
			end
		end

	next_matching_alternate (a_ec: INTEGER): INTEGER is
		local
			op, res: INTEGER
		do
			code_position := a_ec
			from op := op_alt until op /= op_alt loop
				res := match (code_position + 2, True, False)
				if res = return_true then
						-- Break the loop.
					op := op_end
					Result := return_true
				else
					code_position := code_position + byte_code.integer_item (code_position + 1)
					op := byte_code.opcode_item (code_position)
				end
			end
		ensure
			valid_result: Result = return_true or Result = return_none
		end

	match_ref (a_eptr, a_offset, a_length: INTEGER): INTEGER is
			-- If a back reference hasn't been set, the length that is passed is greater
			-- than the number of characters left in the string, so the match fails.
			-- `a_offset' is the index into the offset vector. `a_length' is the length
			-- to be matched.
		local
			p, sp, ep: INTEGER
		do
			if a_length > regexp.subject_end - a_eptr + 1 then
					-- Always fail if not enough characters left.
				Result := return_false
			else
				p := regexp.offset_vector.item (a_offset)
				sp := a_eptr
				ep := p + a_length
				Result := return_true
					-- Separate the caselesss case for speed.
				if is_caseless then
					from until p >= ep loop
						if
							regexp.character_case_mapping.to_lower (subject.item_code (p)) =
							regexp.character_case_mapping.to_lower (subject.item_code (sp))
						then
							p := p + 1
							sp := sp + 1
						else
							p := ep
							Result := return_false
						end
					end
				else
					from until p >= ep loop
						if subject.item_code (p) = subject.item_code (sp) then
							p := p + 1
							sp := sp + 1
						else
							p := ep
							Result := return_false
						end
					end
				end
			end
		end

	match_repeated_refs (a_ec: INTEGER): INTEGER is
			-- Match a back reference, possibly repeatedly. Look past the end of the
			-- item to see if there is repeat information following. The code is similar
			-- to that for character classes, but repeated for efficiency. Then obey
			-- similar code to character type repeats - written out again for speed.
			-- However, if the referenced string is the empty string, always treat
			-- it as matched, any number of times (otherwise there could be infinite
			-- loops).
		local
			ec, i: INTEGER
			min, max: INTEGER
			off, length: INTEGER
			tmpptr: INTEGER
			minimize: BOOLEAN
		do
			ec := a_ec
			off := byte_code.integer_item (ec + 1) * 2
				-- Advance past the item.
			ec := ec + 2
				-- If the reference is unset, set the length to be longer than the amount
				-- of subject left; this ensures that every attempt at a match fails. We
				-- can't just fail here, because of the possibility of quantifiers with zero
				-- minima.
			if off >= offset_top or else regexp.offset_vector.item (off) <= 0 then
				length := regexp.subject_end - eptr + 2
			else
				length := regexp.offset_vector.item (off + 1) - regexp.offset_vector.item (off)
			end
				-- Set up for repetition, or handle the non-repeated case.
			inspect byte_code.opcode_item (ec)
			when op_crstar then
				ec := ec + 1
				minimize := False
				min := 0
				max := infinity
			when op_crminstar then
				ec := ec + 1
				minimize := True
				min := 0
				max := infinity
			when op_crplus then
				ec := ec + 1
				minimize := False
				min := 1
				max := infinity
			when op_crminplus then
				ec := ec + 1
				minimize := True
				min := 1
				max := infinity
			when op_crquery then
				ec := ec + 1
				minimize := False
				min := 0
				max := 1
			when op_crminquery then
				ec := ec + 1
				minimize := True
				min := 0
				max := 1
			when op_crrange, op_crminrange then
				minimize := byte_code.opcode_item (ec) = op_crminrange
				min := byte_code.integer_item (ec + 1)
				max := byte_code.integer_item (ec + 2)
				if max = 0 then
					max := infinity
				end;
				ec := ec + 3
			else
					-- No repeat follows.
				if match_ref (eptr, off, length) = return_true then
					eptr := eptr + length
					length := 0
				else
					Result := return_false
				end
			end
				-- If the length of the reference is zero, just continue with the main loop.
			if Result = return_none and then length > 0 then
					-- First, ensure the minimum number of matches are present. We get back
					-- the length of the reference string explicitly rather than passing the
					-- address of eptr, so that eptr can be a register variable.
				from i := 1 until i > min loop
					if match_ref (eptr, off, length) = return_true then
						eptr := eptr + length
						i := i + 1
					else
						Result := return_false
						i := min + 1
					end
				end
				if Result = return_none and then min < max then
						-- If min = max, continue at the same level without recursion.
						-- They are not both allowed to be zero.
					if minimize then
							-- If minimizing, keep trying and advancing the pointer
						from i := min until Result /= return_none loop
							if match (ec, False, False) = return_true then
								Result := return_true
							elseif i >= max or else match_ref (eptr, off, length) /= return_true then
								Result := return_false
							else
								eptr := eptr + length
								i := i + 1
							end
						end
					else
							-- If maximizing, find the longest string and work backwards.
						tmpptr := eptr
						from i := min until i >= max loop
							if match_ref (eptr, off, length) = return_true then
								eptr := eptr + length
								i := i + 1
							else
								i := max
							end
						end
						from until eptr < tmpptr loop
							if match (ec, False, False) = return_true then
								Result := return_true
								eptr := tmpptr - 1
							else
								eptr := eptr - length
							end
						end
						if Result = return_none then
							Result := return_false
						end
					end
				end
			end
			code_position := ec
		ensure
			valid_result: Result = return_true or Result = return_false or Result = return_none
		end

	match_repeated_classes (a_ec: INTEGER): INTEGER is
			-- Match a character class, possibly repeatedly. Look past the end of the
			-- item to see if there is repeat information following. Then obey similar
			-- code to character type repeats - written out again for speed.
		local
			ec, i, data, pp: INTEGER
			min, max: INTEGER
			c: INTEGER
			minimize: BOOLEAN
			a_set: INTEGER
		do
			data := a_ec + 1
			a_set := byte_code.integer_item (data)
			ec := a_ec + 2
			inspect byte_code.opcode_item (ec)
			when op_crstar then
				ec := ec + 1
				minimize := False
				min := 0
				max := infinity
			when op_crminstar then
				ec := ec + 1
				minimize := True
				min := 0
				max := infinity
			when op_crplus then
				ec := ec + 1
				minimize := False
				min := 1
				max := infinity
			when op_crminplus then
				ec := ec + 1
				minimize := True
				min := 1
				max := infinity
			when op_crquery then
				ec := ec + 1
				minimize := False
				min := 0
				max := 1
			when op_crminquery then
				ec := ec + 1
				minimize := True
				min := 0
				max := 1
			when op_crrange, op_crminrange then
				minimize := byte_code.opcode_item (ec) = op_crminrange
				min := byte_code.integer_item (ec + 1)
				max := byte_code.integer_item (ec + 2)
				if max = 0 then
					max := infinity
				end
				ec := ec + 3
			else
					-- No repeat follows.
				min := 1
				max := 1
			end
				-- First, ensure the minimum number of matches are present.
			from i := 1 until i > min loop
				if eptr > regexp.subject_end then
					Result := return_false
					i := min + 1
				else
					c := subject.item_code (eptr)
					eptr := eptr + 1
					if byte_code.character_set_has (a_set, c) then
						i := i + 1
					else
						Result := return_false
						i := min + 1
					end
				end
			end
				-- If max = min we can continue with the main loop without the
				-- need to recurse.
			if Result = return_none and then min < max then
				if minimize then
						-- If minimizing, keep testing the rest of the expression and advancing
						-- the pointer while it matches the class.
					from i := min until Result /= return_none loop
						if match (ec, False, False) = return_true then
							Result := return_true
						elseif i >= max or else eptr > regexp.subject_end then
							Result := return_false
						else
							c := subject.item_code (eptr)
							eptr := eptr + 1
							if byte_code.character_set_has (a_set, c) then
								i := i + 1
							else
								Result := return_false
							end
						end
					end
				else
						-- If maximizing, find the longest possible run, then work backwards.
					pp := eptr
					from
						i := min
					until
						i >= max or else eptr > regexp.subject_end
					loop
						c := subject.item_code (eptr)
						if byte_code.character_set_has (a_set, c) then
							eptr := eptr + 1
							i := i + 1
						else
							i := max
						end
					end
					from until eptr < pp loop
						if match (ec, False, False) = return_true then
							Result := return_true
							pp := eptr -- stop the loop
						end
						eptr := eptr - 1
					end
					if Result = return_none then
						Result := return_false
					end
				end
			end
			code_position := ec
		ensure
			valid_result: Result = return_true or Result = return_false or Result = return_none
		end

	match_repeated_characters (a_ec, a_min, a_max: INTEGER; a_minimize: BOOLEAN): INTEGER is
		local
			i, tmpptr: INTEGER
			c: INTEGER
		do
			if a_min > regexp.subject_end - eptr + 1 then
				Result := return_false
			else
				c := byte_code.character_item (a_ec - 1)
					-- The code is duplicated for the caseless and caseful cases, for speed,
					-- since matching characters is likely to be quite common. First, ensure the
					-- minimum number of matches are present. If min = max, continue at the same
					-- level without recursing. Otherwise, if minimizing, keep trying the rest of
					-- the expression and advancing one matching character if failing, up to the
					-- maximum. Alternatively, if maximizing, find the maximum number of
					-- characters and work backwards.
				if is_caseless then
					c := regexp.character_case_mapping.to_lower (c)
					from i := 1 until i > a_min loop
						if c /= regexp.character_case_mapping.to_lower (subject.item_code (eptr)) then
							Result := return_false
							i := a_min + 1
						else
							i := i + 1
						end
						eptr := eptr + 1
					end
					if Result = return_none and then a_min < a_max then
						if a_minimize then
							from i := a_min until Result /= return_none loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
								elseif i >= a_max or else eptr > regexp.subject_end then
									Result := return_false
								elseif c /= regexp.character_case_mapping.to_lower (subject.item_code (eptr)) then
									eptr := eptr + 1
									Result := return_false
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						else
							tmpptr := eptr
							from i := a_min until i >= a_max loop
								if
									eptr > regexp.subject_end or else
									c /= regexp.character_case_mapping.to_lower (subject.item_code (eptr))
								then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
							from until eptr < tmpptr loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
									tmpptr := eptr -- stop the loop
								end
								eptr := eptr - 1
							end
							if Result = return_none then
								Result := return_false
							end
						end
					end
				else
						-- Case-sensitive comparisons.
					from i := 1 until i > a_min loop
						if c /= subject.item_code (eptr) then
							Result := return_false
							i := a_min + 1
						else
							i := i + 1
						end
						eptr := eptr + 1
					end
					if Result = return_none and then a_min < a_max then
						if a_minimize then
							from i := a_min until Result /= return_none loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
								elseif i >= a_max or else eptr > regexp.subject_end then
									Result := return_false
								elseif c /= subject.item_code (eptr) then
									eptr := eptr + 1
									Result := return_false
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						else
							tmpptr := eptr
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else c /= subject.item_code (eptr) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
							from until eptr < tmpptr loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
									tmpptr := eptr -- stop the loop
								end
								eptr := eptr - 1
							end
							if Result = return_none then
								Result := return_false
							end
						end
					end
				end
			end
		ensure
			valid_result: Result = return_true or Result = return_false or Result = return_none
		end

	match_not_repeated_characters (a_ec, a_min, a_max: INTEGER; a_minimize: BOOLEAN): INTEGER is
		local
			i, tmpptr: INTEGER
			c: INTEGER
		do
			if a_min > regexp.subject_end - eptr + 1 then
				Result := return_false
			else
				c := byte_code.character_item (a_ec - 1)
					-- The code is duplicated for the caseless and caseful cases, for speed,
					-- since matching characters is likely to be quite common. First, ensure the
					-- minimum number of matches are present. If min = max, continue at the same
					-- level without recursing. Otherwise, if minimizing, keep trying the rest of
					-- the expression and advancing one matching character if failing, up to the
					-- maximum. Alternatively, if maximizing, find the maximum number of
					-- characters and work backwards.
				if is_caseless then
					c := regexp.character_case_mapping.to_lower (c)
					from i := 1 until i > a_min loop
						if c = regexp.character_case_mapping.to_lower (subject.item_code (eptr)) then
							Result := return_false
							i := a_min + 1
						else
							i := i + 1
						end
						eptr := eptr + 1
					end
					if Result = return_none and then a_min < a_max then
						if a_minimize then
							from i := a_min until Result /= return_none loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
								elseif i >= a_max or else eptr > regexp.subject_end then
									Result := return_false
								elseif c /= regexp.character_case_mapping.to_lower (subject.item_code (eptr)) then
									eptr := eptr + 1
									Result := return_false
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						else
							tmpptr := eptr
							from i := a_min until i >= a_max loop
								if
									eptr > regexp.subject_end or else
									c = regexp.character_case_mapping.to_lower (subject.item_code (eptr))
								then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
							from until eptr < tmpptr loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
									tmpptr := eptr -- stop the loop
								end
								eptr := eptr - 1
							end
							if Result = return_none then
								Result := return_false
							end
						end
					end
				else
					from i := 1 until i > a_min loop
						if c = subject.item_code (eptr) then
							Result := return_false
							i := a_min + 1
						else
							i := i + 1
						end
						eptr := eptr + 1
					end
					if Result = return_none and then a_min < a_max then
						if a_minimize then
							from i := a_min until Result /= return_none loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
								elseif i >= a_max or else eptr > regexp.subject_end then
									Result := return_false
								elseif c = subject.item_code (eptr) then
									eptr := eptr + 1
									Result := return_false
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						else
							tmpptr := eptr;
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else c = subject.item_code (eptr) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
							from until eptr < tmpptr loop
								if match (a_ec, False, False) = return_true then
									Result := return_true
									tmpptr := eptr -- stop the loop
								end
								eptr := eptr - 1
							end
							if Result = return_none then
								Result := return_false
							end
						end
					end
				end
			end
		ensure
			valid_result: Result = return_true or Result = return_false or Result = return_none
		end

	match_repeated_type (a_ec, a_min, a_max: INTEGER; a_minimize: BOOLEAN): INTEGER is
		local
			i, pp: INTEGER
			ctype: INTEGER
			c: INTEGER
		do
				-- Code for the character type.
			ctype := byte_code.integer_item (a_ec - 1)
				-- First, ensure the minimum number of matches are present. Use inline
				-- code for maximizing the speed, and do the type test once at the start
				-- (i.e. keep it out of the loop). Also we can test that there are at least
				-- the minimum number of bytes before we start, except when doing '.' in
				-- UTF8 mode. Leave the test in in all cases; in the special case we have
				-- to test after each character.
			if a_min > regexp.subject_end - eptr + 1 then
				Result := return_false
			else
				if a_min > 0 then
					inspect ctype
					when op_any then
						if is_dotall then
							eptr := eptr + a_min
						else
							from i := 1 until i > a_min loop
								if subject.item_code (eptr) = New_line_code then
									Result := return_false
									i := a_min + 1
								else
									i := i + 1
								end
								eptr := eptr + 1
							end
						end
					when op_not_digit then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else digit_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					when op_digit then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else not digit_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					when op_not_whitespace then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else space_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					when op_whitespace then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else not space_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					when op_not_wordchar then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else regexp.word_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					when op_wordchar then
						from i := 1 until i > a_min loop
							if eptr > regexp.subject_end or else not regexp.word_set.has (subject.item_code (eptr)) then
								Result := return_false
								i := a_min + 1
							else
								i := i + 1
							end
							eptr := eptr + 1
						end
					end
				end
					-- If min = max, continue at the same level without recursing.
				if Result = return_none and then a_min < a_max then
						-- If minimizing, we have to test the rest of the pattern before each
						-- subsequent match.
					if a_minimize then
						from i := a_min until Result /= return_none loop
							if match (a_ec, False, False) = return_true then
								Result := return_true
							elseif i >= a_max or else eptr > regexp.subject_end then
								Result := return_false
							else
								c := subject.item_code (eptr)
								eptr := eptr + 1
								inspect ctype
								when op_any then
									if not is_dotall and then c = New_line_code then
										Result := return_false
									end
								when op_not_digit then
									if digit_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								when op_digit then
									if not digit_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								when op_not_whitespace then
									if space_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								when op_whitespace then
									if not space_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								when op_not_wordchar then
									if regexp.word_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								when op_wordchar then
									if not regexp.word_set.has (subject.item_code (eptr)) then
										Result := return_false
									end
								end
								i := i + 1
							end
						end
					else
							-- If maximizing it is worth using inline code for speed, doing the type
							-- test once at the start (i.e. keep it out of the loop).
						pp := eptr
						inspect ctype
						when op_any then
							if is_dotall then
								i := a_max - a_min
								if i > regexp.subject_end - eptr then
									i := regexp.subject_end - eptr + 1
								end
								eptr := eptr + i
							else
								from i := a_min until i >= a_max loop
									if eptr > regexp.subject_end or else subject.item_code (eptr) = New_line_code then
										i := a_max
									else
										eptr := eptr + 1
										i := i + 1
									end
								end
							end
						when op_not_digit then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else digit_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						when op_digit then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else not digit_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						when op_not_whitespace then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else space_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						when op_whitespace then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else not space_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						when op_not_wordchar then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else regexp.word_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						when op_wordchar then
							from i := a_min until i >= a_max loop
								if eptr > regexp.subject_end or else not regexp.word_set.has (subject.item_code (eptr)) then
									i := a_max
								else
									eptr := eptr + 1
									i := i + 1
								end
							end
						end
						from until eptr < pp loop
							if match (a_ec, False, False) = return_true then
								Result := return_true
								eptr := pp - 1
							else
								eptr := eptr - 1
							end
						end
						if Result = return_none then
							Result := return_false
						end
					end
				end
			end
		ensure
			valid_result: Result = return_true or Result = return_false or Result = return_none
		end

feature {NONE} -- Constants

	infinity: INTEGER is
			-- Positive infinity
		once
			Result := Platform.Maximum_integer
		end

	return_true: INTEGER is 1
	return_none: INTEGER is 0
	return_false: INTEGER is -1

end
