indexing

	description:

		"Date/times (Gregorian calendar)"

	library:    "Gobo Eiffel Time Library"
	author:     "Eric Bezault <ericb@gobosoft.com>"
	copyright:  "Copyright (c) 2000-2001, Eric Bezault and others"
	license:    "Eiffel Forum Freeware License v1 (see forum.txt)"
	date:       "$Date$"
	revision:   "$Revision$"

class DT_DATE_TIME

inherit

	DT_DATE
		rename
			make as make_date,
			make_from_day_count as make_date_from_day_count,
			make_from_storage as make_from_date_storage,
			storage as date_storage,
			set_storage as set_date_storage
		undefine
			out, append_to_string
		redefine
			add_duration, duration,
			infix "<", hash_code
		end

	DT_TIME
		rename
			make as make_time,
			make_precise as make_precise_time,
			make_from_second_count as make_time_from_second_count,
			make_from_millisecond_count as make_time_from_millisecond_count,
			make_from_storage as make_from_time_storage,
			storage as time_storage,
			set_storage as set_time_storage
		undefine
			append_to_string, append_precise_to_string,
			infix "<", hash_code, out, precise_out,
			canonical_duration
		redefine
			add_hours, add_minutes, add_seconds,
			add_milliseconds, add_duration, duration
		end

	DT_DATE_TIME_VALUE
		undefine
			append_date_to_string,
			append_time_to_string,
			append_precise_time_to_string
		end

	DT_DATE_TIME_HANDLER
		undefine
			out
		end

creation

	make, make_precise, make_from_date_time, make_from_date

creation {DT_DATE_TIME_HANDLER}

	make_from_storage

feature {NONE} -- Initialization

	make (y, m, d, h, mi, s: INTEGER) is
			-- Create a new date time.
		require
			m_large_enough: m >= January
			m_small_enough: m <= December
			d_large_enough: d >= 1
			d_small_enough: d <= days_in_month (m, y)
			h_large_enough: h >= 0
			h_small_enough: h < Hours_in_day
			mi_large_enough: mi >= 0
			mi_small_enough: mi < Minutes_in_hour
			s_large_enough: s >= 0
			s_small_enough: s < Seconds_in_minute
		do
			make_date (y, m, d)
			make_time (h, mi, s)
		ensure
			year_set: year = y
			month_set: month = m
			day_set: day = d
			hour_set: hour = h
			minute_set: minute = mi
			second_set: second = s
			millisecond_set: millisecond = 0
		end

	make_precise (y, m, d, h, mi, s, ms: INTEGER) is
			-- Create a new date time with millisecond precision.
		require
			m_large_enough: m >= January
			m_small_enough: m <= December
			d_large_enough: d >= 1
			d_small_enough: d <= days_in_month (m, y)
			h_large_enough: h >= 0
			h_small_enough: h < Hours_in_day
			mi_large_enough: mi >= 0
			mi_small_enough: mi < Minutes_in_hour
			s_large_enough: s >= 0
			s_small_enough: s < Seconds_in_minute
			ms_large_enough: ms >= 0
			ms_small_enough: ms < 1000
		do
			make_date (y, m, d)
			make_precise_time (h, mi, s, ms)
		ensure
			year_set: year = y
			month_set: month = m
			day_set: day = d
			hour_set: hour = h
			minute_set: minute = mi
			second_set: second = s
			millisecond_set: millisecond = ms
		end

	make_from_date_time (a_date: DT_DATE; a_time: DT_TIME) is
			-- Create a new date time using `a_date' and `a_time'.
		require
			a_date_not_void: a_date /= Void
			a_time_not_void: a_time /= Void
		do
			date_storage := a_date.storage
			time_storage := a_time.storage
		ensure
			year_set: year = a_date.year
			month_set: month = a_date.month
			day_set: day = a_date.day
			hour_set: hour = a_time.hour
			minute_set: minute = a_time.minute
			second_set: second = a_time.second
			millisecond_set: millisecond = a_time.millisecond
		end

	make_from_date (a_date: DT_DATE) is
			-- Create a new date time using `a_date'.
		require
			a_date_not_void: a_date /= Void
		do
			date_storage := a_date.storage
			time_storage := 0
		ensure
			year_set: year = a_date.year
			month_set: month = a_date.month
			day_set: day = a_date.day
			hour_set: hour = 0
			minute_set: minute = 0
			second_set: second = 0
			millisecond_set: millisecond = 0
		end

	make_from_storage (a_date_storage, a_time_storage: INTEGER) is
			-- Create a new date time from `a_date_storage'
			-- and `a_time_storage'.
		do
			date_storage := a_date_storage
			time_storage := a_time_storage
		ensure
			date_storage_set: date_storage = a_date_storage
			time_storage_set: time_storage = a_time_storage
		end

feature -- Access

	date: DT_DATE is
			-- Date part
		do
			!! Result.make_from_storage (date_storage)
		ensure then
			year_set: Result.year = year
			month_set: Result.month = month
			day_set: Result.day = day
		end

	time: DT_TIME is
			-- Time part
		do
			!! Result.make_from_storage (time_storage)
		ensure then
			hour_set: Result.hour = hour
			minute_set: Result.minute = minute
			second_set: Result.second = second
			millisecond_set: Result.millisecond = millisecond
		end

	duration (other: like Current): DT_DATE_TIME_DURATION is
			-- Duration between `other' and current date time
		do
			!! Result.make_precise (0, 0, day_count - other.day_count,
				hour - other.hour, minute - other.minute,
				second - other.second, millisecond - other.millisecond)
		end

	hash_code: INTEGER is
			-- Hash code
		do
			Result := date_storage + time_storage
			if Result < 0 then
				Result := -(Result + 1)
			end
		end

feature -- Element change

	add_duration (a_duration: like duration) is
			-- Add `a_duration' to current date time.
			-- (Add `a_duration.year' and `a_duration.month' first, then
			-- set `day' to `day.min (day_in_month (new_month, new_year))'
			-- and finally add `a_duration.day', `a_duration.hour',
			-- `a_duration.minute', `a_duration.second' and 
			-- `a_duration.millisecond'.)
		local
			ms, d: INTEGER
		do
			ms := a_duration.millisecond_count
			if ms /= 0 then
				time_storage := time_storage + ms
				if time_storage < 0 then
					d := -((-time_storage) // Day_shift) - 1
					time_storage := Day_shift - ((-time_storage) \\ Day_shift)
				else
					d := time_storage // Day_shift
					time_storage := time_storage \\ Day_shift
				end
			end
			add_years_months_days (a_duration.year, a_duration.month, a_duration.day + d)
		end

	add_hours (h: INTEGER) is
			-- Add `h' hours to current date time.
		do
			if h /= 0 then
				time_storage := time_storage + h * Hour_shift
				if time_storage < 0 then
					add_days (-((-time_storage) // Day_shift) - 1)
					time_storage := Day_shift - ((-time_storage) \\ Day_shift)
				else
					add_days (time_storage // Day_shift)
					time_storage := time_storage \\ Day_shift
				end
			end
		end

	add_minutes (m: INTEGER) is
			-- Add `m' minutes to current date time.
		do
			if m /= 0 then
				time_storage := time_storage + m * Month_shift
				if time_storage < 0 then
					add_days (-((-time_storage) // Day_shift) - 1)
					time_storage := Day_shift - ((-time_storage) \\ Day_shift)
				else
					add_days (time_storage // Day_shift)
					time_storage := time_storage \\ Day_shift
				end
			end
		end

	add_seconds (s: INTEGER) is
			-- Add `s' seconds to current date time.
		do
			if s /= 0 then
				time_storage := time_storage + s * Second_shift
				if time_storage < 0 then
					add_days (-((-time_storage) // Day_shift) - 1)
					time_storage := Day_shift - ((-time_storage) \\ Day_shift)
				else
					add_days (time_storage // Day_shift)
					time_storage := time_storage \\ Day_shift
				end
			end
		end

	add_milliseconds (ms: INTEGER) is
			-- Add `ms' milliseconds to current date time.
		do
			if ms /= 0 then
				time_storage := time_storage + ms
				if time_storage < 0 then
					add_days (-((-time_storage) // Day_shift) - 1)
					time_storage := Day_shift - ((-time_storage) \\ Day_shift)
				else
					add_days (time_storage // Day_shift)
					time_storage := time_storage \\ Day_shift
				end
			end
		end

feature -- Comparison

	infix "<" (other: like Current): BOOLEAN is
			-- Is current date time before `other' on the time axis?
		do
			Result := date_storage < other.date_storage or else
				(date_storage = other.date_storage and then
				time_storage < other.time_storage)
		end

end -- class DT_DATE_TIME
