note

	description:

		"Eiffel parsers"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2019, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

class ET_EIFFEL_PARSER

inherit

	ET_EIFFEL_PARSER_SKELETON
		undefine
			read_token
		redefine
			system_processor
		end

	ET_EIFFEL_SCANNER
		rename
			make as make_eiffel_scanner
		undefine
			reset, set_syntax_error
		redefine
			system_processor
		end

create

	make


feature {NONE} -- Implementation

	yy_build_parser_tables
			-- Build parser tables.
		do
			yytranslate := yytranslate_template
			yyr1 := yyr1_template
			yytypes1 := yytypes1_template
			yytypes2 := yytypes2_template
			yydefact := yydefact_template
			yydefgoto := yydefgoto_template
			yypact := yypact_template
			yypgoto := yypgoto_template
			yytable := yytable_template
			yycheck := yycheck_template
		end

	yy_create_value_stacks
			-- Create value stacks.
		do
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
			create yyspecial_routines3
			yyvsc3 := yyInitial_yyvs_size
			yyvs3 := yyspecial_routines3.make (yyvsc3)
			create yyspecial_routines4
			yyvsc4 := yyInitial_yyvs_size
			yyvs4 := yyspecial_routines4.make (yyvsc4)
			create yyspecial_routines5
			yyvsc5 := yyInitial_yyvs_size
			yyvs5 := yyspecial_routines5.make (yyvsc5)
			create yyspecial_routines6
			yyvsc6 := yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.make (yyvsc6)
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
			create yyspecial_routines11
			yyvsc11 := yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.make (yyvsc11)
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
			create yyspecial_routines20
			yyvsc20 := yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.make (yyvsc20)
			create yyspecial_routines21
			yyvsc21 := yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.make (yyvsc21)
			create yyspecial_routines22
			yyvsc22 := yyInitial_yyvs_size
			yyvs22 := yyspecial_routines22.make (yyvsc22)
			create yyspecial_routines23
			yyvsc23 := yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.make (yyvsc23)
			create yyspecial_routines24
			yyvsc24 := yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.make (yyvsc24)
			create yyspecial_routines25
			yyvsc25 := yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.make (yyvsc25)
			create yyspecial_routines26
			yyvsc26 := yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.make (yyvsc26)
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
			create yyspecial_routines36
			yyvsc36 := yyInitial_yyvs_size
			yyvs36 := yyspecial_routines36.make (yyvsc36)
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
			create yyspecial_routines44
			yyvsc44 := yyInitial_yyvs_size
			yyvs44 := yyspecial_routines44.make (yyvsc44)
			create yyspecial_routines45
			yyvsc45 := yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.make (yyvsc45)
			create yyspecial_routines46
			yyvsc46 := yyInitial_yyvs_size
			yyvs46 := yyspecial_routines46.make (yyvsc46)
			create yyspecial_routines47
			yyvsc47 := yyInitial_yyvs_size
			yyvs47 := yyspecial_routines47.make (yyvsc47)
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
			create yyspecial_routines50
			yyvsc50 := yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.make (yyvsc50)
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
			create yyspecial_routines52
			yyvsc52 := yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.make (yyvsc52)
			create yyspecial_routines53
			yyvsc53 := yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.make (yyvsc53)
			create yyspecial_routines54
			yyvsc54 := yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.make (yyvsc54)
			create yyspecial_routines55
			yyvsc55 := yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.make (yyvsc55)
			create yyspecial_routines56
			yyvsc56 := yyInitial_yyvs_size
			yyvs56 := yyspecial_routines56.make (yyvsc56)
			create yyspecial_routines57
			yyvsc57 := yyInitial_yyvs_size
			yyvs57 := yyspecial_routines57.make (yyvsc57)
			create yyspecial_routines58
			yyvsc58 := yyInitial_yyvs_size
			yyvs58 := yyspecial_routines58.make (yyvsc58)
			create yyspecial_routines59
			yyvsc59 := yyInitial_yyvs_size
			yyvs59 := yyspecial_routines59.make (yyvsc59)
			create yyspecial_routines60
			yyvsc60 := yyInitial_yyvs_size
			yyvs60 := yyspecial_routines60.make (yyvsc60)
			create yyspecial_routines61
			yyvsc61 := yyInitial_yyvs_size
			yyvs61 := yyspecial_routines61.make (yyvsc61)
			create yyspecial_routines62
			yyvsc62 := yyInitial_yyvs_size
			yyvs62 := yyspecial_routines62.make (yyvsc62)
			create yyspecial_routines63
			yyvsc63 := yyInitial_yyvs_size
			yyvs63 := yyspecial_routines63.make (yyvsc63)
			create yyspecial_routines64
			yyvsc64 := yyInitial_yyvs_size
			yyvs64 := yyspecial_routines64.make (yyvsc64)
			create yyspecial_routines65
			yyvsc65 := yyInitial_yyvs_size
			yyvs65 := yyspecial_routines65.make (yyvsc65)
			create yyspecial_routines66
			yyvsc66 := yyInitial_yyvs_size
			yyvs66 := yyspecial_routines66.make (yyvsc66)
			create yyspecial_routines67
			yyvsc67 := yyInitial_yyvs_size
			yyvs67 := yyspecial_routines67.make (yyvsc67)
			create yyspecial_routines68
			yyvsc68 := yyInitial_yyvs_size
			yyvs68 := yyspecial_routines68.make (yyvsc68)
			create yyspecial_routines69
			yyvsc69 := yyInitial_yyvs_size
			yyvs69 := yyspecial_routines69.make (yyvsc69)
			create yyspecial_routines70
			yyvsc70 := yyInitial_yyvs_size
			yyvs70 := yyspecial_routines70.make (yyvsc70)
			create yyspecial_routines71
			yyvsc71 := yyInitial_yyvs_size
			yyvs71 := yyspecial_routines71.make (yyvsc71)
			create yyspecial_routines72
			yyvsc72 := yyInitial_yyvs_size
			yyvs72 := yyspecial_routines72.make (yyvsc72)
			create yyspecial_routines73
			yyvsc73 := yyInitial_yyvs_size
			yyvs73 := yyspecial_routines73.make (yyvsc73)
			create yyspecial_routines74
			yyvsc74 := yyInitial_yyvs_size
			yyvs74 := yyspecial_routines74.make (yyvsc74)
			create yyspecial_routines75
			yyvsc75 := yyInitial_yyvs_size
			yyvs75 := yyspecial_routines75.make (yyvsc75)
			create yyspecial_routines76
			yyvsc76 := yyInitial_yyvs_size
			yyvs76 := yyspecial_routines76.make (yyvsc76)
			create yyspecial_routines77
			yyvsc77 := yyInitial_yyvs_size
			yyvs77 := yyspecial_routines77.make (yyvsc77)
			create yyspecial_routines78
			yyvsc78 := yyInitial_yyvs_size
			yyvs78 := yyspecial_routines78.make (yyvsc78)
			create yyspecial_routines79
			yyvsc79 := yyInitial_yyvs_size
			yyvs79 := yyspecial_routines79.make (yyvsc79)
			create yyspecial_routines80
			yyvsc80 := yyInitial_yyvs_size
			yyvs80 := yyspecial_routines80.make (yyvsc80)
			create yyspecial_routines81
			yyvsc81 := yyInitial_yyvs_size
			yyvs81 := yyspecial_routines81.make (yyvsc81)
			create yyspecial_routines82
			yyvsc82 := yyInitial_yyvs_size
			yyvs82 := yyspecial_routines82.make (yyvsc82)
			create yyspecial_routines83
			yyvsc83 := yyInitial_yyvs_size
			yyvs83 := yyspecial_routines83.make (yyvsc83)
			create yyspecial_routines84
			yyvsc84 := yyInitial_yyvs_size
			yyvs84 := yyspecial_routines84.make (yyvsc84)
			create yyspecial_routines85
			yyvsc85 := yyInitial_yyvs_size
			yyvs85 := yyspecial_routines85.make (yyvsc85)
			create yyspecial_routines86
			yyvsc86 := yyInitial_yyvs_size
			yyvs86 := yyspecial_routines86.make (yyvsc86)
			create yyspecial_routines87
			yyvsc87 := yyInitial_yyvs_size
			yyvs87 := yyspecial_routines87.make (yyvsc87)
			create yyspecial_routines88
			yyvsc88 := yyInitial_yyvs_size
			yyvs88 := yyspecial_routines88.make (yyvsc88)
			create yyspecial_routines89
			yyvsc89 := yyInitial_yyvs_size
			yyvs89 := yyspecial_routines89.make (yyvsc89)
			create yyspecial_routines90
			yyvsc90 := yyInitial_yyvs_size
			yyvs90 := yyspecial_routines90.make (yyvsc90)
			create yyspecial_routines91
			yyvsc91 := yyInitial_yyvs_size
			yyvs91 := yyspecial_routines91.make (yyvsc91)
			create yyspecial_routines92
			yyvsc92 := yyInitial_yyvs_size
			yyvs92 := yyspecial_routines92.make (yyvsc92)
			create yyspecial_routines93
			yyvsc93 := yyInitial_yyvs_size
			yyvs93 := yyspecial_routines93.make (yyvsc93)
			create yyspecial_routines94
			yyvsc94 := yyInitial_yyvs_size
			yyvs94 := yyspecial_routines94.make (yyvsc94)
			create yyspecial_routines95
			yyvsc95 := yyInitial_yyvs_size
			yyvs95 := yyspecial_routines95.make (yyvsc95)
			create yyspecial_routines96
			yyvsc96 := yyInitial_yyvs_size
			yyvs96 := yyspecial_routines96.make (yyvsc96)
			create yyspecial_routines97
			yyvsc97 := yyInitial_yyvs_size
			yyvs97 := yyspecial_routines97.make (yyvsc97)
			create yyspecial_routines98
			yyvsc98 := yyInitial_yyvs_size
			yyvs98 := yyspecial_routines98.make (yyvsc98)
			create yyspecial_routines99
			yyvsc99 := yyInitial_yyvs_size
			yyvs99 := yyspecial_routines99.make (yyvsc99)
			create yyspecial_routines100
			yyvsc100 := yyInitial_yyvs_size
			yyvs100 := yyspecial_routines100.make (yyvsc100)
			create yyspecial_routines101
			yyvsc101 := yyInitial_yyvs_size
			yyvs101 := yyspecial_routines101.make (yyvsc101)
			create yyspecial_routines102
			yyvsc102 := yyInitial_yyvs_size
			yyvs102 := yyspecial_routines102.make (yyvsc102)
			create yyspecial_routines103
			yyvsc103 := yyInitial_yyvs_size
			yyvs103 := yyspecial_routines103.make (yyvsc103)
			create yyspecial_routines104
			yyvsc104 := yyInitial_yyvs_size
			yyvs104 := yyspecial_routines104.make (yyvsc104)
			create yyspecial_routines105
			yyvsc105 := yyInitial_yyvs_size
			yyvs105 := yyspecial_routines105.make (yyvsc105)
			create yyspecial_routines106
			yyvsc106 := yyInitial_yyvs_size
			yyvs106 := yyspecial_routines106.make (yyvsc106)
			create yyspecial_routines107
			yyvsc107 := yyInitial_yyvs_size
			yyvs107 := yyspecial_routines107.make (yyvsc107)
			create yyspecial_routines108
			yyvsc108 := yyInitial_yyvs_size
			yyvs108 := yyspecial_routines108.make (yyvsc108)
			create yyspecial_routines109
			yyvsc109 := yyInitial_yyvs_size
			yyvs109 := yyspecial_routines109.make (yyvsc109)
			create yyspecial_routines110
			yyvsc110 := yyInitial_yyvs_size
			yyvs110 := yyspecial_routines110.make (yyvsc110)
			create yyspecial_routines111
			yyvsc111 := yyInitial_yyvs_size
			yyvs111 := yyspecial_routines111.make (yyvsc111)
			create yyspecial_routines112
			yyvsc112 := yyInitial_yyvs_size
			yyvs112 := yyspecial_routines112.make (yyvsc112)
			create yyspecial_routines113
			yyvsc113 := yyInitial_yyvs_size
			yyvs113 := yyspecial_routines113.make (yyvsc113)
			create yyspecial_routines114
			yyvsc114 := yyInitial_yyvs_size
			yyvs114 := yyspecial_routines114.make (yyvsc114)
			create yyspecial_routines115
			yyvsc115 := yyInitial_yyvs_size
			yyvs115 := yyspecial_routines115.make (yyvsc115)
			create yyspecial_routines116
			yyvsc116 := yyInitial_yyvs_size
			yyvs116 := yyspecial_routines116.make (yyvsc116)
			create yyspecial_routines117
			yyvsc117 := yyInitial_yyvs_size
			yyvs117 := yyspecial_routines117.make (yyvsc117)
			create yyspecial_routines118
			yyvsc118 := yyInitial_yyvs_size
			yyvs118 := yyspecial_routines118.make (yyvsc118)
			create yyspecial_routines119
			yyvsc119 := yyInitial_yyvs_size
			yyvs119 := yyspecial_routines119.make (yyvsc119)
			create yyspecial_routines120
			yyvsc120 := yyInitial_yyvs_size
			yyvs120 := yyspecial_routines120.make (yyvsc120)
			create yyspecial_routines121
			yyvsc121 := yyInitial_yyvs_size
			yyvs121 := yyspecial_routines121.make (yyvsc121)
			create yyspecial_routines122
			yyvsc122 := yyInitial_yyvs_size
			yyvs122 := yyspecial_routines122.make (yyvsc122)
			create yyspecial_routines123
			yyvsc123 := yyInitial_yyvs_size
			yyvs123 := yyspecial_routines123.make (yyvsc123)
			create yyspecial_routines124
			yyvsc124 := yyInitial_yyvs_size
			yyvs124 := yyspecial_routines124.make (yyvsc124)
			create yyspecial_routines125
			yyvsc125 := yyInitial_yyvs_size
			yyvs125 := yyspecial_routines125.make (yyvsc125)
			create yyspecial_routines126
			yyvsc126 := yyInitial_yyvs_size
			yyvs126 := yyspecial_routines126.make (yyvsc126)
			create yyspecial_routines127
			yyvsc127 := yyInitial_yyvs_size
			yyvs127 := yyspecial_routines127.make (yyvsc127)
			create yyspecial_routines128
			yyvsc128 := yyInitial_yyvs_size
			yyvs128 := yyspecial_routines128.make (yyvsc128)
		end

	yy_init_value_stacks
			-- Initialize value stacks.
		do
			yyvsp1 := -1
			yyvsp2 := -1
			yyvsp3 := -1
			yyvsp4 := -1
			yyvsp5 := -1
			yyvsp6 := -1
			yyvsp7 := -1
			yyvsp8 := -1
			yyvsp9 := -1
			yyvsp10 := -1
			yyvsp11 := -1
			yyvsp12 := -1
			yyvsp13 := -1
			yyvsp14 := -1
			yyvsp15 := -1
			yyvsp16 := -1
			yyvsp17 := -1
			yyvsp18 := -1
			yyvsp19 := -1
			yyvsp20 := -1
			yyvsp21 := -1
			yyvsp22 := -1
			yyvsp23 := -1
			yyvsp24 := -1
			yyvsp25 := -1
			yyvsp26 := -1
			yyvsp27 := -1
			yyvsp28 := -1
			yyvsp29 := -1
			yyvsp30 := -1
			yyvsp31 := -1
			yyvsp32 := -1
			yyvsp33 := -1
			yyvsp34 := -1
			yyvsp35 := -1
			yyvsp36 := -1
			yyvsp37 := -1
			yyvsp38 := -1
			yyvsp39 := -1
			yyvsp40 := -1
			yyvsp41 := -1
			yyvsp42 := -1
			yyvsp43 := -1
			yyvsp44 := -1
			yyvsp45 := -1
			yyvsp46 := -1
			yyvsp47 := -1
			yyvsp48 := -1
			yyvsp49 := -1
			yyvsp50 := -1
			yyvsp51 := -1
			yyvsp52 := -1
			yyvsp53 := -1
			yyvsp54 := -1
			yyvsp55 := -1
			yyvsp56 := -1
			yyvsp57 := -1
			yyvsp58 := -1
			yyvsp59 := -1
			yyvsp60 := -1
			yyvsp61 := -1
			yyvsp62 := -1
			yyvsp63 := -1
			yyvsp64 := -1
			yyvsp65 := -1
			yyvsp66 := -1
			yyvsp67 := -1
			yyvsp68 := -1
			yyvsp69 := -1
			yyvsp70 := -1
			yyvsp71 := -1
			yyvsp72 := -1
			yyvsp73 := -1
			yyvsp74 := -1
			yyvsp75 := -1
			yyvsp76 := -1
			yyvsp77 := -1
			yyvsp78 := -1
			yyvsp79 := -1
			yyvsp80 := -1
			yyvsp81 := -1
			yyvsp82 := -1
			yyvsp83 := -1
			yyvsp84 := -1
			yyvsp85 := -1
			yyvsp86 := -1
			yyvsp87 := -1
			yyvsp88 := -1
			yyvsp89 := -1
			yyvsp90 := -1
			yyvsp91 := -1
			yyvsp92 := -1
			yyvsp93 := -1
			yyvsp94 := -1
			yyvsp95 := -1
			yyvsp96 := -1
			yyvsp97 := -1
			yyvsp98 := -1
			yyvsp99 := -1
			yyvsp100 := -1
			yyvsp101 := -1
			yyvsp102 := -1
			yyvsp103 := -1
			yyvsp104 := -1
			yyvsp105 := -1
			yyvsp106 := -1
			yyvsp107 := -1
			yyvsp108 := -1
			yyvsp109 := -1
			yyvsp110 := -1
			yyvsp111 := -1
			yyvsp112 := -1
			yyvsp113 := -1
			yyvsp114 := -1
			yyvsp115 := -1
			yyvsp116 := -1
			yyvsp117 := -1
			yyvsp118 := -1
			yyvsp119 := -1
			yyvsp120 := -1
			yyvsp121 := -1
			yyvsp122 := -1
			yyvsp123 := -1
			yyvsp124 := -1
			yyvsp125 := -1
			yyvsp126 := -1
			yyvsp127 := -1
			yyvsp128 := -1
		end

	yy_clear_value_stacks
			-- Clear objects in semantic value stacks so that
			-- they can be collected by the garbage collector.
		do
			yyvs1.keep_head (0)
			yyvs2.keep_head (0)
			yyvs3.keep_head (0)
			yyvs4.keep_head (0)
			yyvs5.keep_head (0)
			yyvs6.keep_head (0)
			yyvs7.keep_head (0)
			yyvs8.keep_head (0)
			yyvs9.keep_head (0)
			yyvs10.keep_head (0)
			yyvs11.keep_head (0)
			yyvs12.keep_head (0)
			yyvs13.keep_head (0)
			yyvs14.keep_head (0)
			yyvs15.keep_head (0)
			yyvs16.keep_head (0)
			yyvs17.keep_head (0)
			yyvs18.keep_head (0)
			yyvs19.keep_head (0)
			yyvs20.keep_head (0)
			yyvs21.keep_head (0)
			yyvs22.keep_head (0)
			yyvs23.keep_head (0)
			yyvs24.keep_head (0)
			yyvs25.keep_head (0)
			yyvs26.keep_head (0)
			yyvs27.keep_head (0)
			yyvs28.keep_head (0)
			yyvs29.keep_head (0)
			yyvs30.keep_head (0)
			yyvs31.keep_head (0)
			yyvs32.keep_head (0)
			yyvs33.keep_head (0)
			yyvs34.keep_head (0)
			yyvs35.keep_head (0)
			yyvs36.keep_head (0)
			yyvs37.keep_head (0)
			yyvs38.keep_head (0)
			yyvs39.keep_head (0)
			yyvs40.keep_head (0)
			yyvs41.keep_head (0)
			yyvs42.keep_head (0)
			yyvs43.keep_head (0)
			yyvs44.keep_head (0)
			yyvs45.keep_head (0)
			yyvs46.keep_head (0)
			yyvs47.keep_head (0)
			yyvs48.keep_head (0)
			yyvs49.keep_head (0)
			yyvs50.keep_head (0)
			yyvs51.keep_head (0)
			yyvs52.keep_head (0)
			yyvs53.keep_head (0)
			yyvs54.keep_head (0)
			yyvs55.keep_head (0)
			yyvs56.keep_head (0)
			yyvs57.keep_head (0)
			yyvs58.keep_head (0)
			yyvs59.keep_head (0)
			yyvs60.keep_head (0)
			yyvs61.keep_head (0)
			yyvs62.keep_head (0)
			yyvs63.keep_head (0)
			yyvs64.keep_head (0)
			yyvs65.keep_head (0)
			yyvs66.keep_head (0)
			yyvs67.keep_head (0)
			yyvs68.keep_head (0)
			yyvs69.keep_head (0)
			yyvs70.keep_head (0)
			yyvs71.keep_head (0)
			yyvs72.keep_head (0)
			yyvs73.keep_head (0)
			yyvs74.keep_head (0)
			yyvs75.keep_head (0)
			yyvs76.keep_head (0)
			yyvs77.keep_head (0)
			yyvs78.keep_head (0)
			yyvs79.keep_head (0)
			yyvs80.keep_head (0)
			yyvs81.keep_head (0)
			yyvs82.keep_head (0)
			yyvs83.keep_head (0)
			yyvs84.keep_head (0)
			yyvs85.keep_head (0)
			yyvs86.keep_head (0)
			yyvs87.keep_head (0)
			yyvs88.keep_head (0)
			yyvs89.keep_head (0)
			yyvs90.keep_head (0)
			yyvs91.keep_head (0)
			yyvs92.keep_head (0)
			yyvs93.keep_head (0)
			yyvs94.keep_head (0)
			yyvs95.keep_head (0)
			yyvs96.keep_head (0)
			yyvs97.keep_head (0)
			yyvs98.keep_head (0)
			yyvs99.keep_head (0)
			yyvs100.keep_head (0)
			yyvs101.keep_head (0)
			yyvs102.keep_head (0)
			yyvs103.keep_head (0)
			yyvs104.keep_head (0)
			yyvs105.keep_head (0)
			yyvs106.keep_head (0)
			yyvs107.keep_head (0)
			yyvs108.keep_head (0)
			yyvs109.keep_head (0)
			yyvs110.keep_head (0)
			yyvs111.keep_head (0)
			yyvs112.keep_head (0)
			yyvs113.keep_head (0)
			yyvs114.keep_head (0)
			yyvs115.keep_head (0)
			yyvs116.keep_head (0)
			yyvs117.keep_head (0)
			yyvs118.keep_head (0)
			yyvs119.keep_head (0)
			yyvs120.keep_head (0)
			yyvs121.keep_head (0)
			yyvs122.keep_head (0)
			yyvs123.keep_head (0)
			yyvs124.keep_head (0)
			yyvs125.keep_head (0)
			yyvs126.keep_head (0)
			yyvs127.keep_head (0)
			yyvs128.keep_head (0)
		end

	yy_push_last_value (yychar1: INTEGER)
			-- Push semantic value associated with token `last_token'
			-- (with internal id `yychar1') on top of corresponding
			-- value stack.
		do
			inspect yytypes2.item (yychar1)
			when 1 then
				yyvsp1 := yyvsp1 + 1
				if yyvsp1 >= yyvsc1 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs1")
					end
					yyvsc1 := yyvsc1 + yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
				end
				yyspecial_routines1.force (yyvs1, last_detachable_any_value, yyvsp1)
			when 2 then
				yyvsp2 := yyvsp2 + 1
				if yyvsp2 >= yyvsc2 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs2")
					end
					yyvsc2 := yyvsc2 + yyInitial_yyvs_size
					yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
				end
				yyspecial_routines2.force (yyvs2, last_detachable_et_keyword_value, yyvsp2)
			when 3 then
				yyvsp3 := yyvsp3 + 1
				if yyvsp3 >= yyvsc3 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs3")
					end
					yyvsc3 := yyvsc3 + yyInitial_yyvs_size
					yyvs3 := yyspecial_routines3.aliased_resized_area (yyvs3, yyvsc3)
				end
				yyspecial_routines3.force (yyvs3, last_detachable_et_agent_keyword_value, yyvsp3)
			when 4 then
				yyvsp4 := yyvsp4 + 1
				if yyvsp4 >= yyvsc4 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs4")
					end
					yyvsc4 := yyvsc4 + yyInitial_yyvs_size
					yyvs4 := yyspecial_routines4.aliased_resized_area (yyvs4, yyvsc4)
				end
				yyspecial_routines4.force (yyvs4, last_detachable_et_precursor_keyword_value, yyvsp4)
			when 5 then
				yyvsp5 := yyvsp5 + 1
				if yyvsp5 >= yyvsc5 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs5")
					end
					yyvsc5 := yyvsc5 + yyInitial_yyvs_size
					yyvs5 := yyspecial_routines5.aliased_resized_area (yyvs5, yyvsc5)
				end
				yyspecial_routines5.force (yyvs5, last_detachable_et_symbol_value, yyvsp5)
			when 6 then
				yyvsp6 := yyvsp6 + 1
				if yyvsp6 >= yyvsc6 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs6")
					end
					yyvsc6 := yyvsc6 + yyInitial_yyvs_size
					yyvs6 := yyspecial_routines6.aliased_resized_area (yyvs6, yyvsc6)
				end
				yyspecial_routines6.force (yyvs6, last_detachable_et_position_value, yyvsp6)
			when 7 then
				yyvsp7 := yyvsp7 + 1
				if yyvsp7 >= yyvsc7 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs7")
					end
					yyvsc7 := yyvsc7 + yyInitial_yyvs_size
					yyvs7 := yyspecial_routines7.aliased_resized_area (yyvs7, yyvsc7)
				end
				yyspecial_routines7.force (yyvs7, last_detachable_et_boolean_constant_value, yyvsp7)
			when 8 then
				yyvsp8 := yyvsp8 + 1
				if yyvsp8 >= yyvsc8 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs8")
					end
					yyvsc8 := yyvsc8 + yyInitial_yyvs_size
					yyvs8 := yyspecial_routines8.aliased_resized_area (yyvs8, yyvsc8)
				end
				yyspecial_routines8.force (yyvs8, last_detachable_et_break_value, yyvsp8)
			when 9 then
				yyvsp9 := yyvsp9 + 1
				if yyvsp9 >= yyvsc9 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs9")
					end
					yyvsc9 := yyvsc9 + yyInitial_yyvs_size
					yyvs9 := yyspecial_routines9.aliased_resized_area (yyvs9, yyvsc9)
				end
				yyspecial_routines9.force (yyvs9, last_detachable_et_character_constant_value, yyvsp9)
			when 10 then
				yyvsp10 := yyvsp10 + 1
				if yyvsp10 >= yyvsc10 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs10")
					end
					yyvsc10 := yyvsc10 + yyInitial_yyvs_size
					yyvs10 := yyspecial_routines10.aliased_resized_area (yyvs10, yyvsc10)
				end
				yyspecial_routines10.force (yyvs10, last_detachable_et_current_value, yyvsp10)
			when 11 then
				yyvsp11 := yyvsp11 + 1
				if yyvsp11 >= yyvsc11 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs11")
					end
					yyvsc11 := yyvsc11 + yyInitial_yyvs_size
					yyvs11 := yyspecial_routines11.aliased_resized_area (yyvs11, yyvsc11)
				end
				yyspecial_routines11.force (yyvs11, last_detachable_et_free_operator_value, yyvsp11)
			when 12 then
				yyvsp12 := yyvsp12 + 1
				if yyvsp12 >= yyvsc12 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs12")
					end
					yyvsc12 := yyvsc12 + yyInitial_yyvs_size
					yyvs12 := yyspecial_routines12.aliased_resized_area (yyvs12, yyvsc12)
				end
				yyspecial_routines12.force (yyvs12, last_detachable_et_identifier_value, yyvsp12)
			when 13 then
				yyvsp13 := yyvsp13 + 1
				if yyvsp13 >= yyvsc13 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs13")
					end
					yyvsc13 := yyvsc13 + yyInitial_yyvs_size
					yyvs13 := yyspecial_routines13.aliased_resized_area (yyvs13, yyvsc13)
				end
				yyspecial_routines13.force (yyvs13, last_detachable_et_integer_constant_value, yyvsp13)
			when 14 then
				yyvsp14 := yyvsp14 + 1
				if yyvsp14 >= yyvsc14 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs14")
					end
					yyvsc14 := yyvsc14 + yyInitial_yyvs_size
					yyvs14 := yyspecial_routines14.aliased_resized_area (yyvs14, yyvsc14)
				end
				yyspecial_routines14.force (yyvs14, last_detachable_et_keyword_operator_value, yyvsp14)
			when 15 then
				yyvsp15 := yyvsp15 + 1
				if yyvsp15 >= yyvsc15 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs15")
					end
					yyvsc15 := yyvsc15 + yyInitial_yyvs_size
					yyvs15 := yyspecial_routines15.aliased_resized_area (yyvs15, yyvsc15)
				end
				yyspecial_routines15.force (yyvs15, last_detachable_et_manifest_string_value, yyvsp15)
			when 16 then
				yyvsp16 := yyvsp16 + 1
				if yyvsp16 >= yyvsc16 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs16")
					end
					yyvsc16 := yyvsc16 + yyInitial_yyvs_size
					yyvs16 := yyspecial_routines16.aliased_resized_area (yyvs16, yyvsc16)
				end
				yyspecial_routines16.force (yyvs16, last_detachable_et_real_constant_value, yyvsp16)
			when 17 then
				yyvsp17 := yyvsp17 + 1
				if yyvsp17 >= yyvsc17 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs17")
					end
					yyvsc17 := yyvsc17 + yyInitial_yyvs_size
					yyvs17 := yyspecial_routines17.aliased_resized_area (yyvs17, yyvsc17)
				end
				yyspecial_routines17.force (yyvs17, last_detachable_et_result_value, yyvsp17)
			when 18 then
				yyvsp18 := yyvsp18 + 1
				if yyvsp18 >= yyvsc18 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs18")
					end
					yyvsc18 := yyvsc18 + yyInitial_yyvs_size
					yyvs18 := yyspecial_routines18.aliased_resized_area (yyvs18, yyvsc18)
				end
				yyspecial_routines18.force (yyvs18, last_detachable_et_retry_instruction_value, yyvsp18)
			when 19 then
				yyvsp19 := yyvsp19 + 1
				if yyvsp19 >= yyvsc19 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs19")
					end
					yyvsc19 := yyvsc19 + yyInitial_yyvs_size
					yyvs19 := yyspecial_routines19.aliased_resized_area (yyvs19, yyvsc19)
				end
				yyspecial_routines19.force (yyvs19, last_detachable_et_symbol_operator_value, yyvsp19)
			when 20 then
				yyvsp20 := yyvsp20 + 1
				if yyvsp20 >= yyvsc20 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs20")
					end
					yyvsc20 := yyvsc20 + yyInitial_yyvs_size
					yyvs20 := yyspecial_routines20.aliased_resized_area (yyvs20, yyvsc20)
				end
				yyspecial_routines20.force (yyvs20, last_detachable_et_void_value, yyvsp20)
			when 21 then
				yyvsp21 := yyvsp21 + 1
				if yyvsp21 >= yyvsc21 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs21")
					end
					yyvsc21 := yyvsc21 + yyInitial_yyvs_size
					yyvs21 := yyspecial_routines21.aliased_resized_area (yyvs21, yyvsc21)
				end
				yyspecial_routines21.force (yyvs21, last_detachable_et_semicolon_symbol_value, yyvsp21)
			when 22 then
				yyvsp22 := yyvsp22 + 1
				if yyvsp22 >= yyvsc22 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs22")
					end
					yyvsc22 := yyvsc22 + yyInitial_yyvs_size
					yyvs22 := yyspecial_routines22.aliased_resized_area (yyvs22, yyvsc22)
				end
				yyspecial_routines22.force (yyvs22, last_detachable_et_bracket_symbol_value, yyvsp22)
			when 23 then
				yyvsp23 := yyvsp23 + 1
				if yyvsp23 >= yyvsc23 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs23")
					end
					yyvsc23 := yyvsc23 + yyInitial_yyvs_size
					yyvs23 := yyspecial_routines23.aliased_resized_area (yyvs23, yyvsc23)
				end
				yyspecial_routines23.force (yyvs23, last_detachable_et_question_mark_symbol_value, yyvsp23)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: not a token type: ")
					std.error.put_integer (yytypes2.item (yychar1))
					std.error.put_new_line
				end
				abort
			end
		end

	yy_push_error_value
			-- Push semantic value associated with token 'error'
			-- on top of corresponding value stack.
		local
			yyval1: detachable ANY
		do
			yyvsp1 := yyvsp1 + 1
			if yyvsp1 >= yyvsc1 then
				debug ("GEYACC")
					std.error.put_line ("Resize yyvs1")
				end
				yyvsc1 := yyvsc1 + yyInitial_yyvs_size
				yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
			end
			yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
		end

	yy_pop_last_value (yystate: INTEGER)
			-- Pop semantic value from stack when in state `yystate'.
		local
			yy_type_id: INTEGER
		do
			yy_type_id := yytypes1.item (yystate)
			inspect yy_type_id
			when 1 then
				yyvsp1 := yyvsp1 - 1
			when 2 then
				yyvsp2 := yyvsp2 - 1
			when 3 then
				yyvsp3 := yyvsp3 - 1
			when 4 then
				yyvsp4 := yyvsp4 - 1
			when 5 then
				yyvsp5 := yyvsp5 - 1
			when 6 then
				yyvsp6 := yyvsp6 - 1
			when 7 then
				yyvsp7 := yyvsp7 - 1
			when 8 then
				yyvsp8 := yyvsp8 - 1
			when 9 then
				yyvsp9 := yyvsp9 - 1
			when 10 then
				yyvsp10 := yyvsp10 - 1
			when 11 then
				yyvsp11 := yyvsp11 - 1
			when 12 then
				yyvsp12 := yyvsp12 - 1
			when 13 then
				yyvsp13 := yyvsp13 - 1
			when 14 then
				yyvsp14 := yyvsp14 - 1
			when 15 then
				yyvsp15 := yyvsp15 - 1
			when 16 then
				yyvsp16 := yyvsp16 - 1
			when 17 then
				yyvsp17 := yyvsp17 - 1
			when 18 then
				yyvsp18 := yyvsp18 - 1
			when 19 then
				yyvsp19 := yyvsp19 - 1
			when 20 then
				yyvsp20 := yyvsp20 - 1
			when 21 then
				yyvsp21 := yyvsp21 - 1
			when 22 then
				yyvsp22 := yyvsp22 - 1
			when 23 then
				yyvsp23 := yyvsp23 - 1
			when 24 then
				yyvsp24 := yyvsp24 - 1
			when 25 then
				yyvsp25 := yyvsp25 - 1
			when 26 then
				yyvsp26 := yyvsp26 - 1
			when 27 then
				yyvsp27 := yyvsp27 - 1
			when 28 then
				yyvsp28 := yyvsp28 - 1
			when 29 then
				yyvsp29 := yyvsp29 - 1
			when 30 then
				yyvsp30 := yyvsp30 - 1
			when 31 then
				yyvsp31 := yyvsp31 - 1
			when 32 then
				yyvsp32 := yyvsp32 - 1
			when 33 then
				yyvsp33 := yyvsp33 - 1
			when 34 then
				yyvsp34 := yyvsp34 - 1
			when 35 then
				yyvsp35 := yyvsp35 - 1
			when 36 then
				yyvsp36 := yyvsp36 - 1
			when 37 then
				yyvsp37 := yyvsp37 - 1
			when 38 then
				yyvsp38 := yyvsp38 - 1
			when 39 then
				yyvsp39 := yyvsp39 - 1
			when 40 then
				yyvsp40 := yyvsp40 - 1
			when 41 then
				yyvsp41 := yyvsp41 - 1
			when 42 then
				yyvsp42 := yyvsp42 - 1
			when 43 then
				yyvsp43 := yyvsp43 - 1
			when 44 then
				yyvsp44 := yyvsp44 - 1
			when 45 then
				yyvsp45 := yyvsp45 - 1
			when 46 then
				yyvsp46 := yyvsp46 - 1
			when 47 then
				yyvsp47 := yyvsp47 - 1
			when 48 then
				yyvsp48 := yyvsp48 - 1
			when 49 then
				yyvsp49 := yyvsp49 - 1
			when 50 then
				yyvsp50 := yyvsp50 - 1
			when 51 then
				yyvsp51 := yyvsp51 - 1
			when 52 then
				yyvsp52 := yyvsp52 - 1
			when 53 then
				yyvsp53 := yyvsp53 - 1
			when 54 then
				yyvsp54 := yyvsp54 - 1
			when 55 then
				yyvsp55 := yyvsp55 - 1
			when 56 then
				yyvsp56 := yyvsp56 - 1
			when 57 then
				yyvsp57 := yyvsp57 - 1
			when 58 then
				yyvsp58 := yyvsp58 - 1
			when 59 then
				yyvsp59 := yyvsp59 - 1
			when 60 then
				yyvsp60 := yyvsp60 - 1
			when 61 then
				yyvsp61 := yyvsp61 - 1
			when 62 then
				yyvsp62 := yyvsp62 - 1
			when 63 then
				yyvsp63 := yyvsp63 - 1
			when 64 then
				yyvsp64 := yyvsp64 - 1
			when 65 then
				yyvsp65 := yyvsp65 - 1
			when 66 then
				yyvsp66 := yyvsp66 - 1
			when 67 then
				yyvsp67 := yyvsp67 - 1
			when 68 then
				yyvsp68 := yyvsp68 - 1
			when 69 then
				yyvsp69 := yyvsp69 - 1
			when 70 then
				yyvsp70 := yyvsp70 - 1
			when 71 then
				yyvsp71 := yyvsp71 - 1
			when 72 then
				yyvsp72 := yyvsp72 - 1
			when 73 then
				yyvsp73 := yyvsp73 - 1
			when 74 then
				yyvsp74 := yyvsp74 - 1
			when 75 then
				yyvsp75 := yyvsp75 - 1
			when 76 then
				yyvsp76 := yyvsp76 - 1
			when 77 then
				yyvsp77 := yyvsp77 - 1
			when 78 then
				yyvsp78 := yyvsp78 - 1
			when 79 then
				yyvsp79 := yyvsp79 - 1
			when 80 then
				yyvsp80 := yyvsp80 - 1
			when 81 then
				yyvsp81 := yyvsp81 - 1
			when 82 then
				yyvsp82 := yyvsp82 - 1
			when 83 then
				yyvsp83 := yyvsp83 - 1
			when 84 then
				yyvsp84 := yyvsp84 - 1
			when 85 then
				yyvsp85 := yyvsp85 - 1
			when 86 then
				yyvsp86 := yyvsp86 - 1
			when 87 then
				yyvsp87 := yyvsp87 - 1
			when 88 then
				yyvsp88 := yyvsp88 - 1
			when 89 then
				yyvsp89 := yyvsp89 - 1
			when 90 then
				yyvsp90 := yyvsp90 - 1
			when 91 then
				yyvsp91 := yyvsp91 - 1
			when 92 then
				yyvsp92 := yyvsp92 - 1
			when 93 then
				yyvsp93 := yyvsp93 - 1
			when 94 then
				yyvsp94 := yyvsp94 - 1
			when 95 then
				yyvsp95 := yyvsp95 - 1
			when 96 then
				yyvsp96 := yyvsp96 - 1
			when 97 then
				yyvsp97 := yyvsp97 - 1
			when 98 then
				yyvsp98 := yyvsp98 - 1
			when 99 then
				yyvsp99 := yyvsp99 - 1
			when 100 then
				yyvsp100 := yyvsp100 - 1
			when 101 then
				yyvsp101 := yyvsp101 - 1
			when 102 then
				yyvsp102 := yyvsp102 - 1
			when 103 then
				yyvsp103 := yyvsp103 - 1
			when 104 then
				yyvsp104 := yyvsp104 - 1
			when 105 then
				yyvsp105 := yyvsp105 - 1
			when 106 then
				yyvsp106 := yyvsp106 - 1
			when 107 then
				yyvsp107 := yyvsp107 - 1
			when 108 then
				yyvsp108 := yyvsp108 - 1
			when 109 then
				yyvsp109 := yyvsp109 - 1
			when 110 then
				yyvsp110 := yyvsp110 - 1
			when 111 then
				yyvsp111 := yyvsp111 - 1
			when 112 then
				yyvsp112 := yyvsp112 - 1
			when 113 then
				yyvsp113 := yyvsp113 - 1
			when 114 then
				yyvsp114 := yyvsp114 - 1
			when 115 then
				yyvsp115 := yyvsp115 - 1
			when 116 then
				yyvsp116 := yyvsp116 - 1
			when 117 then
				yyvsp117 := yyvsp117 - 1
			when 118 then
				yyvsp118 := yyvsp118 - 1
			when 119 then
				yyvsp119 := yyvsp119 - 1
			when 120 then
				yyvsp120 := yyvsp120 - 1
			when 121 then
				yyvsp121 := yyvsp121 - 1
			when 122 then
				yyvsp122 := yyvsp122 - 1
			when 123 then
				yyvsp123 := yyvsp123 - 1
			when 124 then
				yyvsp124 := yyvsp124 - 1
			when 125 then
				yyvsp125 := yyvsp125 - 1
			when 126 then
				yyvsp126 := yyvsp126 - 1
			when 127 then
				yyvsp127 := yyvsp127 - 1
			when 128 then
				yyvsp128 := yyvsp128 - 1
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown type id: ")
					std.error.put_integer (yy_type_id)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_run_geyacc
			-- You must run geyacc to regenerate this class.
		do
		end

feature {NONE} -- Semantic actions

	yy_do_action (yy_act: INTEGER)
			-- Execute semantic action.
		do
			if yy_act <= 200 then
				yy_do_action_1_200 (yy_act)
			elseif yy_act <= 400 then
				yy_do_action_201_400 (yy_act)
			elseif yy_act <= 600 then
				yy_do_action_401_600 (yy_act)
			elseif yy_act <= 800 then
				yy_do_action_601_800 (yy_act)
			elseif yy_act <= 1000 then
				yy_do_action_801_1000 (yy_act)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_1_200 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 1 then
					--|#line 240 "et_eiffel_parser.y"
				yy_do_action_1
			when 2 then
					--|#line 244 "et_eiffel_parser.y"
				yy_do_action_2
			when 3 then
					--|#line 252 "et_eiffel_parser.y"
				yy_do_action_3
			when 4 then
					--|#line 261 "et_eiffel_parser.y"
				yy_do_action_4
			when 5 then
					--|#line 262 "et_eiffel_parser.y"
				yy_do_action_5
			when 6 then
					--|#line 262 "et_eiffel_parser.y"
				yy_do_action_6
			when 7 then
					--|#line 273 "et_eiffel_parser.y"
				yy_do_action_7
			when 8 then
					--|#line 281 "et_eiffel_parser.y"
				yy_do_action_8
			when 9 then
					--|#line 286 "et_eiffel_parser.y"
				yy_do_action_9
			when 10 then
					--|#line 288 "et_eiffel_parser.y"
				yy_do_action_10
			when 11 then
					--|#line 288 "et_eiffel_parser.y"
				yy_do_action_11
			when 12 then
					--|#line 299 "et_eiffel_parser.y"
				yy_do_action_12
			when 13 then
					--|#line 301 "et_eiffel_parser.y"
				yy_do_action_13
			when 14 then
					--|#line 301 "et_eiffel_parser.y"
				yy_do_action_14
			when 15 then
					--|#line 314 "et_eiffel_parser.y"
				yy_do_action_15
			when 16 then
					--|#line 316 "et_eiffel_parser.y"
				yy_do_action_16
			when 17 then
					--|#line 320 "et_eiffel_parser.y"
				yy_do_action_17
			when 18 then
					--|#line 331 "et_eiffel_parser.y"
				yy_do_action_18
			when 19 then
					--|#line 331 "et_eiffel_parser.y"
				yy_do_action_19
			when 20 then
					--|#line 340 "et_eiffel_parser.y"
				yy_do_action_20
			when 21 then
					--|#line 340 "et_eiffel_parser.y"
				yy_do_action_21
			when 22 then
					--|#line 351 "et_eiffel_parser.y"
				yy_do_action_22
			when 23 then
					--|#line 358 "et_eiffel_parser.y"
				yy_do_action_23
			when 24 then
					--|#line 364 "et_eiffel_parser.y"
				yy_do_action_24
			when 25 then
					--|#line 368 "et_eiffel_parser.y"
				yy_do_action_25
			when 26 then
					--|#line 379 "et_eiffel_parser.y"
				yy_do_action_26
			when 27 then
					--|#line 391 "et_eiffel_parser.y"
				yy_do_action_27
			when 28 then
					--|#line 391 "et_eiffel_parser.y"
				yy_do_action_28
			when 29 then
					--|#line 400 "et_eiffel_parser.y"
				yy_do_action_29
			when 30 then
					--|#line 400 "et_eiffel_parser.y"
				yy_do_action_30
			when 31 then
					--|#line 411 "et_eiffel_parser.y"
				yy_do_action_31
			when 32 then
					--|#line 418 "et_eiffel_parser.y"
				yy_do_action_32
			when 33 then
					--|#line 422 "et_eiffel_parser.y"
				yy_do_action_33
			when 34 then
					--|#line 428 "et_eiffel_parser.y"
				yy_do_action_34
			when 35 then
					--|#line 430 "et_eiffel_parser.y"
				yy_do_action_35
			when 36 then
					--|#line 435 "et_eiffel_parser.y"
				yy_do_action_36
			when 37 then
					--|#line 446 "et_eiffel_parser.y"
				yy_do_action_37
			when 38 then
					--|#line 455 "et_eiffel_parser.y"
				yy_do_action_38
			when 39 then
					--|#line 457 "et_eiffel_parser.y"
				yy_do_action_39
			when 40 then
					--|#line 459 "et_eiffel_parser.y"
				yy_do_action_40
			when 41 then
					--|#line 461 "et_eiffel_parser.y"
				yy_do_action_41
			when 42 then
					--|#line 463 "et_eiffel_parser.y"
				yy_do_action_42
			when 43 then
					--|#line 465 "et_eiffel_parser.y"
				yy_do_action_43
			when 44 then
					--|#line 467 "et_eiffel_parser.y"
				yy_do_action_44
			when 45 then
					--|#line 469 "et_eiffel_parser.y"
				yy_do_action_45
			when 46 then
					--|#line 473 "et_eiffel_parser.y"
				yy_do_action_46
			when 47 then
					--|#line 484 "et_eiffel_parser.y"
				yy_do_action_47
			when 48 then
					--|#line 496 "et_eiffel_parser.y"
				yy_do_action_48
			when 49 then
					--|#line 509 "et_eiffel_parser.y"
				yy_do_action_49
			when 50 then
					--|#line 522 "et_eiffel_parser.y"
				yy_do_action_50
			when 51 then
					--|#line 537 "et_eiffel_parser.y"
				yy_do_action_51
			when 52 then
					--|#line 539 "et_eiffel_parser.y"
				yy_do_action_52
			when 53 then
					--|#line 543 "et_eiffel_parser.y"
				yy_do_action_53
			when 54 then
					--|#line 545 "et_eiffel_parser.y"
				yy_do_action_54
			when 55 then
					--|#line 551 "et_eiffel_parser.y"
				yy_do_action_55
			when 56 then
					--|#line 555 "et_eiffel_parser.y"
				yy_do_action_56
			when 57 then
					--|#line 561 "et_eiffel_parser.y"
				yy_do_action_57
			when 58 then
					--|#line 561 "et_eiffel_parser.y"
				yy_do_action_58
			when 59 then
					--|#line 575 "et_eiffel_parser.y"
				yy_do_action_59
			when 60 then
					--|#line 586 "et_eiffel_parser.y"
				yy_do_action_60
			when 61 then
					--|#line 595 "et_eiffel_parser.y"
				yy_do_action_61
			when 62 then
					--|#line 604 "et_eiffel_parser.y"
				yy_do_action_62
			when 63 then
					--|#line 606 "et_eiffel_parser.y"
				yy_do_action_63
			when 64 then
					--|#line 608 "et_eiffel_parser.y"
				yy_do_action_64
			when 65 then
					--|#line 610 "et_eiffel_parser.y"
				yy_do_action_65
			when 66 then
					--|#line 612 "et_eiffel_parser.y"
				yy_do_action_66
			when 67 then
					--|#line 614 "et_eiffel_parser.y"
				yy_do_action_67
			when 68 then
					--|#line 616 "et_eiffel_parser.y"
				yy_do_action_68
			when 69 then
					--|#line 618 "et_eiffel_parser.y"
				yy_do_action_69
			when 70 then
					--|#line 620 "et_eiffel_parser.y"
				yy_do_action_70
			when 71 then
					--|#line 624 "et_eiffel_parser.y"
				yy_do_action_71
			when 72 then
					--|#line 631 "et_eiffel_parser.y"
				yy_do_action_72
			when 73 then
					--|#line 640 "et_eiffel_parser.y"
				yy_do_action_73
			when 74 then
					--|#line 640 "et_eiffel_parser.y"
				yy_do_action_74
			when 75 then
					--|#line 653 "et_eiffel_parser.y"
				yy_do_action_75
			when 76 then
					--|#line 664 "et_eiffel_parser.y"
				yy_do_action_76
			when 77 then
					--|#line 673 "et_eiffel_parser.y"
				yy_do_action_77
			when 78 then
					--|#line 682 "et_eiffel_parser.y"
				yy_do_action_78
			when 79 then
					--|#line 684 "et_eiffel_parser.y"
				yy_do_action_79
			when 80 then
					--|#line 684 "et_eiffel_parser.y"
				yy_do_action_80
			when 81 then
					--|#line 697 "et_eiffel_parser.y"
				yy_do_action_81
			when 82 then
					--|#line 708 "et_eiffel_parser.y"
				yy_do_action_82
			when 83 then
					--|#line 717 "et_eiffel_parser.y"
				yy_do_action_83
			when 84 then
					--|#line 726 "et_eiffel_parser.y"
				yy_do_action_84
			when 85 then
					--|#line 728 "et_eiffel_parser.y"
				yy_do_action_85
			when 86 then
					--|#line 732 "et_eiffel_parser.y"
				yy_do_action_86
			when 87 then
					--|#line 734 "et_eiffel_parser.y"
				yy_do_action_87
			when 88 then
					--|#line 734 "et_eiffel_parser.y"
				yy_do_action_88
			when 89 then
					--|#line 747 "et_eiffel_parser.y"
				yy_do_action_89
			when 90 then
					--|#line 759 "et_eiffel_parser.y"
				yy_do_action_90
			when 91 then
					--|#line 767 "et_eiffel_parser.y"
				yy_do_action_91
			when 92 then
					--|#line 776 "et_eiffel_parser.y"
				yy_do_action_92
			when 93 then
					--|#line 778 "et_eiffel_parser.y"
				yy_do_action_93
			when 94 then
					--|#line 780 "et_eiffel_parser.y"
				yy_do_action_94
			when 95 then
					--|#line 782 "et_eiffel_parser.y"
				yy_do_action_95
			when 96 then
					--|#line 784 "et_eiffel_parser.y"
				yy_do_action_96
			when 97 then
					--|#line 786 "et_eiffel_parser.y"
				yy_do_action_97
			when 98 then
					--|#line 788 "et_eiffel_parser.y"
				yy_do_action_98
			when 99 then
					--|#line 790 "et_eiffel_parser.y"
				yy_do_action_99
			when 100 then
					--|#line 792 "et_eiffel_parser.y"
				yy_do_action_100
			when 101 then
					--|#line 794 "et_eiffel_parser.y"
				yy_do_action_101
			when 102 then
					--|#line 796 "et_eiffel_parser.y"
				yy_do_action_102
			when 103 then
					--|#line 798 "et_eiffel_parser.y"
				yy_do_action_103
			when 104 then
					--|#line 800 "et_eiffel_parser.y"
				yy_do_action_104
			when 105 then
					--|#line 802 "et_eiffel_parser.y"
				yy_do_action_105
			when 106 then
					--|#line 804 "et_eiffel_parser.y"
				yy_do_action_106
			when 107 then
					--|#line 806 "et_eiffel_parser.y"
				yy_do_action_107
			when 108 then
					--|#line 808 "et_eiffel_parser.y"
				yy_do_action_108
			when 109 then
					--|#line 810 "et_eiffel_parser.y"
				yy_do_action_109
			when 110 then
					--|#line 812 "et_eiffel_parser.y"
				yy_do_action_110
			when 111 then
					--|#line 814 "et_eiffel_parser.y"
				yy_do_action_111
			when 112 then
					--|#line 816 "et_eiffel_parser.y"
				yy_do_action_112
			when 113 then
					--|#line 818 "et_eiffel_parser.y"
				yy_do_action_113
			when 114 then
					--|#line 822 "et_eiffel_parser.y"
				yy_do_action_114
			when 115 then
					--|#line 824 "et_eiffel_parser.y"
				yy_do_action_115
			when 116 then
					--|#line 826 "et_eiffel_parser.y"
				yy_do_action_116
			when 117 then
					--|#line 828 "et_eiffel_parser.y"
				yy_do_action_117
			when 118 then
					--|#line 830 "et_eiffel_parser.y"
				yy_do_action_118
			when 119 then
					--|#line 832 "et_eiffel_parser.y"
				yy_do_action_119
			when 120 then
					--|#line 834 "et_eiffel_parser.y"
				yy_do_action_120
			when 121 then
					--|#line 836 "et_eiffel_parser.y"
				yy_do_action_121
			when 122 then
					--|#line 838 "et_eiffel_parser.y"
				yy_do_action_122
			when 123 then
					--|#line 840 "et_eiffel_parser.y"
				yy_do_action_123
			when 124 then
					--|#line 842 "et_eiffel_parser.y"
				yy_do_action_124
			when 125 then
					--|#line 844 "et_eiffel_parser.y"
				yy_do_action_125
			when 126 then
					--|#line 846 "et_eiffel_parser.y"
				yy_do_action_126
			when 127 then
					--|#line 848 "et_eiffel_parser.y"
				yy_do_action_127
			when 128 then
					--|#line 850 "et_eiffel_parser.y"
				yy_do_action_128
			when 129 then
					--|#line 852 "et_eiffel_parser.y"
				yy_do_action_129
			when 130 then
					--|#line 854 "et_eiffel_parser.y"
				yy_do_action_130
			when 131 then
					--|#line 856 "et_eiffel_parser.y"
				yy_do_action_131
			when 132 then
					--|#line 858 "et_eiffel_parser.y"
				yy_do_action_132
			when 133 then
					--|#line 860 "et_eiffel_parser.y"
				yy_do_action_133
			when 134 then
					--|#line 862 "et_eiffel_parser.y"
				yy_do_action_134
			when 135 then
					--|#line 864 "et_eiffel_parser.y"
				yy_do_action_135
			when 136 then
					--|#line 868 "et_eiffel_parser.y"
				yy_do_action_136
			when 137 then
					--|#line 870 "et_eiffel_parser.y"
				yy_do_action_137
			when 138 then
					--|#line 874 "et_eiffel_parser.y"
				yy_do_action_138
			when 139 then
					--|#line 877 "et_eiffel_parser.y"
				yy_do_action_139
			when 140 then
					--|#line 885 "et_eiffel_parser.y"
				yy_do_action_140
			when 141 then
					--|#line 896 "et_eiffel_parser.y"
				yy_do_action_141
			when 142 then
					--|#line 901 "et_eiffel_parser.y"
				yy_do_action_142
			when 143 then
					--|#line 908 "et_eiffel_parser.y"
				yy_do_action_143
			when 144 then
					--|#line 917 "et_eiffel_parser.y"
				yy_do_action_144
			when 145 then
					--|#line 919 "et_eiffel_parser.y"
				yy_do_action_145
			when 146 then
					--|#line 923 "et_eiffel_parser.y"
				yy_do_action_146
			when 147 then
					--|#line 926 "et_eiffel_parser.y"
				yy_do_action_147
			when 148 then
					--|#line 932 "et_eiffel_parser.y"
				yy_do_action_148
			when 149 then
					--|#line 940 "et_eiffel_parser.y"
				yy_do_action_149
			when 150 then
					--|#line 945 "et_eiffel_parser.y"
				yy_do_action_150
			when 151 then
					--|#line 950 "et_eiffel_parser.y"
				yy_do_action_151
			when 152 then
					--|#line 955 "et_eiffel_parser.y"
				yy_do_action_152
			when 153 then
					--|#line 968 "et_eiffel_parser.y"
				yy_do_action_153
			when 154 then
					--|#line 977 "et_eiffel_parser.y"
				yy_do_action_154
			when 155 then
					--|#line 988 "et_eiffel_parser.y"
				yy_do_action_155
			when 156 then
					--|#line 990 "et_eiffel_parser.y"
				yy_do_action_156
			when 157 then
					--|#line 996 "et_eiffel_parser.y"
				yy_do_action_157
			when 158 then
					--|#line 998 "et_eiffel_parser.y"
				yy_do_action_158
			when 159 then
					--|#line 1005 "et_eiffel_parser.y"
				yy_do_action_159
			when 160 then
					--|#line 1016 "et_eiffel_parser.y"
				yy_do_action_160
			when 161 then
					--|#line 1016 "et_eiffel_parser.y"
				yy_do_action_161
			when 162 then
					--|#line 1031 "et_eiffel_parser.y"
				yy_do_action_162
			when 163 then
					--|#line 1038 "et_eiffel_parser.y"
				yy_do_action_163
			when 164 then
					--|#line 1038 "et_eiffel_parser.y"
				yy_do_action_164
			when 165 then
					--|#line 1054 "et_eiffel_parser.y"
				yy_do_action_165
			when 166 then
					--|#line 1061 "et_eiffel_parser.y"
				yy_do_action_166
			when 167 then
					--|#line 1069 "et_eiffel_parser.y"
				yy_do_action_167
			when 168 then
					--|#line 1076 "et_eiffel_parser.y"
				yy_do_action_168
			when 169 then
					--|#line 1083 "et_eiffel_parser.y"
				yy_do_action_169
			when 170 then
					--|#line 1090 "et_eiffel_parser.y"
				yy_do_action_170
			when 171 then
					--|#line 1099 "et_eiffel_parser.y"
				yy_do_action_171
			when 172 then
					--|#line 1106 "et_eiffel_parser.y"
				yy_do_action_172
			when 173 then
					--|#line 1113 "et_eiffel_parser.y"
				yy_do_action_173
			when 174 then
					--|#line 1120 "et_eiffel_parser.y"
				yy_do_action_174
			when 175 then
					--|#line 1129 "et_eiffel_parser.y"
				yy_do_action_175
			when 176 then
					--|#line 1140 "et_eiffel_parser.y"
				yy_do_action_176
			when 177 then
					--|#line 1142 "et_eiffel_parser.y"
				yy_do_action_177
			when 178 then
					--|#line 1142 "et_eiffel_parser.y"
				yy_do_action_178
			when 179 then
					--|#line 1155 "et_eiffel_parser.y"
				yy_do_action_179
			when 180 then
					--|#line 1162 "et_eiffel_parser.y"
				yy_do_action_180
			when 181 then
					--|#line 1171 "et_eiffel_parser.y"
				yy_do_action_181
			when 182 then
					--|#line 1180 "et_eiffel_parser.y"
				yy_do_action_182
			when 183 then
					--|#line 1189 "et_eiffel_parser.y"
				yy_do_action_183
			when 184 then
					--|#line 1200 "et_eiffel_parser.y"
				yy_do_action_184
			when 185 then
					--|#line 1202 "et_eiffel_parser.y"
				yy_do_action_185
			when 186 then
					--|#line 1202 "et_eiffel_parser.y"
				yy_do_action_186
			when 187 then
					--|#line 1215 "et_eiffel_parser.y"
				yy_do_action_187
			when 188 then
					--|#line 1217 "et_eiffel_parser.y"
				yy_do_action_188
			when 189 then
					--|#line 1221 "et_eiffel_parser.y"
				yy_do_action_189
			when 190 then
					--|#line 1232 "et_eiffel_parser.y"
				yy_do_action_190
			when 191 then
					--|#line 1232 "et_eiffel_parser.y"
				yy_do_action_191
			when 192 then
					--|#line 1247 "et_eiffel_parser.y"
				yy_do_action_192
			when 193 then
					--|#line 1251 "et_eiffel_parser.y"
				yy_do_action_193
			when 194 then
					--|#line 1256 "et_eiffel_parser.y"
				yy_do_action_194
			when 195 then
					--|#line 1256 "et_eiffel_parser.y"
				yy_do_action_195
			when 196 then
					--|#line 1266 "et_eiffel_parser.y"
				yy_do_action_196
			when 197 then
					--|#line 1270 "et_eiffel_parser.y"
				yy_do_action_197
			when 198 then
					--|#line 1281 "et_eiffel_parser.y"
				yy_do_action_198
			when 199 then
					--|#line 1289 "et_eiffel_parser.y"
				yy_do_action_199
			when 200 then
					--|#line 1300 "et_eiffel_parser.y"
				yy_do_action_200
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_201_400 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 201 then
					--|#line 1300 "et_eiffel_parser.y"
				yy_do_action_201
			when 202 then
					--|#line 1311 "et_eiffel_parser.y"
				yy_do_action_202
			when 203 then
					--|#line 1315 "et_eiffel_parser.y"
				yy_do_action_203
			when 204 then
					--|#line 1322 "et_eiffel_parser.y"
				yy_do_action_204
			when 205 then
					--|#line 1330 "et_eiffel_parser.y"
				yy_do_action_205
			when 206 then
					--|#line 1337 "et_eiffel_parser.y"
				yy_do_action_206
			when 207 then
					--|#line 1347 "et_eiffel_parser.y"
				yy_do_action_207
			when 208 then
					--|#line 1356 "et_eiffel_parser.y"
				yy_do_action_208
			when 209 then
					--|#line 1366 "et_eiffel_parser.y"
				yy_do_action_209
			when 210 then
					--|#line 1368 "et_eiffel_parser.y"
				yy_do_action_210
			when 211 then
					--|#line 1372 "et_eiffel_parser.y"
				yy_do_action_211
			when 212 then
					--|#line 1383 "et_eiffel_parser.y"
				yy_do_action_212
			when 213 then
					--|#line 1385 "et_eiffel_parser.y"
				yy_do_action_213
			when 214 then
					--|#line 1385 "et_eiffel_parser.y"
				yy_do_action_214
			when 215 then
					--|#line 1398 "et_eiffel_parser.y"
				yy_do_action_215
			when 216 then
					--|#line 1400 "et_eiffel_parser.y"
				yy_do_action_216
			when 217 then
					--|#line 1404 "et_eiffel_parser.y"
				yy_do_action_217
			when 218 then
					--|#line 1406 "et_eiffel_parser.y"
				yy_do_action_218
			when 219 then
					--|#line 1406 "et_eiffel_parser.y"
				yy_do_action_219
			when 220 then
					--|#line 1419 "et_eiffel_parser.y"
				yy_do_action_220
			when 221 then
					--|#line 1421 "et_eiffel_parser.y"
				yy_do_action_221
			when 222 then
					--|#line 1425 "et_eiffel_parser.y"
				yy_do_action_222
			when 223 then
					--|#line 1427 "et_eiffel_parser.y"
				yy_do_action_223
			when 224 then
					--|#line 1427 "et_eiffel_parser.y"
				yy_do_action_224
			when 225 then
					--|#line 1440 "et_eiffel_parser.y"
				yy_do_action_225
			when 226 then
					--|#line 1442 "et_eiffel_parser.y"
				yy_do_action_226
			when 227 then
					--|#line 1446 "et_eiffel_parser.y"
				yy_do_action_227
			when 228 then
					--|#line 1457 "et_eiffel_parser.y"
				yy_do_action_228
			when 229 then
					--|#line 1465 "et_eiffel_parser.y"
				yy_do_action_229
			when 230 then
					--|#line 1474 "et_eiffel_parser.y"
				yy_do_action_230
			when 231 then
					--|#line 1485 "et_eiffel_parser.y"
				yy_do_action_231
			when 232 then
					--|#line 1487 "et_eiffel_parser.y"
				yy_do_action_232
			when 233 then
					--|#line 1494 "et_eiffel_parser.y"
				yy_do_action_233
			when 234 then
					--|#line 1505 "et_eiffel_parser.y"
				yy_do_action_234
			when 235 then
					--|#line 1505 "et_eiffel_parser.y"
				yy_do_action_235
			when 236 then
					--|#line 1520 "et_eiffel_parser.y"
				yy_do_action_236
			when 237 then
					--|#line 1522 "et_eiffel_parser.y"
				yy_do_action_237
			when 238 then
					--|#line 1524 "et_eiffel_parser.y"
				yy_do_action_238
			when 239 then
					--|#line 1524 "et_eiffel_parser.y"
				yy_do_action_239
			when 240 then
					--|#line 1536 "et_eiffel_parser.y"
				yy_do_action_240
			when 241 then
					--|#line 1536 "et_eiffel_parser.y"
				yy_do_action_241
			when 242 then
					--|#line 1548 "et_eiffel_parser.y"
				yy_do_action_242
			when 243 then
					--|#line 1550 "et_eiffel_parser.y"
				yy_do_action_243
			when 244 then
					--|#line 1552 "et_eiffel_parser.y"
				yy_do_action_244
			when 245 then
					--|#line 1552 "et_eiffel_parser.y"
				yy_do_action_245
			when 246 then
					--|#line 1564 "et_eiffel_parser.y"
				yy_do_action_246
			when 247 then
					--|#line 1564 "et_eiffel_parser.y"
				yy_do_action_247
			when 248 then
					--|#line 1578 "et_eiffel_parser.y"
				yy_do_action_248
			when 249 then
					--|#line 1590 "et_eiffel_parser.y"
				yy_do_action_249
			when 250 then
					--|#line 1602 "et_eiffel_parser.y"
				yy_do_action_250
			when 251 then
					--|#line 1611 "et_eiffel_parser.y"
				yy_do_action_251
			when 252 then
					--|#line 1627 "et_eiffel_parser.y"
				yy_do_action_252
			when 253 then
					--|#line 1629 "et_eiffel_parser.y"
				yy_do_action_253
			when 254 then
					--|#line 1633 "et_eiffel_parser.y"
				yy_do_action_254
			when 255 then
					--|#line 1633 "et_eiffel_parser.y"
				yy_do_action_255
			when 256 then
					--|#line 1646 "et_eiffel_parser.y"
				yy_do_action_256
			when 257 then
					--|#line 1653 "et_eiffel_parser.y"
				yy_do_action_257
			when 258 then
					--|#line 1660 "et_eiffel_parser.y"
				yy_do_action_258
			when 259 then
					--|#line 1669 "et_eiffel_parser.y"
				yy_do_action_259
			when 260 then
					--|#line 1678 "et_eiffel_parser.y"
				yy_do_action_260
			when 261 then
					--|#line 1682 "et_eiffel_parser.y"
				yy_do_action_261
			when 262 then
					--|#line 1688 "et_eiffel_parser.y"
				yy_do_action_262
			when 263 then
					--|#line 1690 "et_eiffel_parser.y"
				yy_do_action_263
			when 264 then
					--|#line 1690 "et_eiffel_parser.y"
				yy_do_action_264
			when 265 then
					--|#line 1703 "et_eiffel_parser.y"
				yy_do_action_265
			when 266 then
					--|#line 1714 "et_eiffel_parser.y"
				yy_do_action_266
			when 267 then
					--|#line 1723 "et_eiffel_parser.y"
				yy_do_action_267
			when 268 then
					--|#line 1734 "et_eiffel_parser.y"
				yy_do_action_268
			when 269 then
					--|#line 1739 "et_eiffel_parser.y"
				yy_do_action_269
			when 270 then
					--|#line 1743 "et_eiffel_parser.y"
				yy_do_action_270
			when 271 then
					--|#line 1751 "et_eiffel_parser.y"
				yy_do_action_271
			when 272 then
					--|#line 1758 "et_eiffel_parser.y"
				yy_do_action_272
			when 273 then
					--|#line 1767 "et_eiffel_parser.y"
				yy_do_action_273
			when 274 then
					--|#line 1774 "et_eiffel_parser.y"
				yy_do_action_274
			when 275 then
					--|#line 1783 "et_eiffel_parser.y"
				yy_do_action_275
			when 276 then
					--|#line 1788 "et_eiffel_parser.y"
				yy_do_action_276
			when 277 then
					--|#line 1795 "et_eiffel_parser.y"
				yy_do_action_277
			when 278 then
					--|#line 1796 "et_eiffel_parser.y"
				yy_do_action_278
			when 279 then
					--|#line 1797 "et_eiffel_parser.y"
				yy_do_action_279
			when 280 then
					--|#line 1798 "et_eiffel_parser.y"
				yy_do_action_280
			when 281 then
					--|#line 1803 "et_eiffel_parser.y"
				yy_do_action_281
			when 282 then
					--|#line 1808 "et_eiffel_parser.y"
				yy_do_action_282
			when 283 then
					--|#line 1816 "et_eiffel_parser.y"
				yy_do_action_283
			when 284 then
					--|#line 1821 "et_eiffel_parser.y"
				yy_do_action_284
			when 285 then
					--|#line 1827 "et_eiffel_parser.y"
				yy_do_action_285
			when 286 then
					--|#line 1835 "et_eiffel_parser.y"
				yy_do_action_286
			when 287 then
					--|#line 1846 "et_eiffel_parser.y"
				yy_do_action_287
			when 288 then
					--|#line 1851 "et_eiffel_parser.y"
				yy_do_action_288
			when 289 then
					--|#line 1859 "et_eiffel_parser.y"
				yy_do_action_289
			when 290 then
					--|#line 1864 "et_eiffel_parser.y"
				yy_do_action_290
			when 291 then
					--|#line 1870 "et_eiffel_parser.y"
				yy_do_action_291
			when 292 then
					--|#line 1878 "et_eiffel_parser.y"
				yy_do_action_292
			when 293 then
					--|#line 1889 "et_eiffel_parser.y"
				yy_do_action_293
			when 294 then
					--|#line 1891 "et_eiffel_parser.y"
				yy_do_action_294
			when 295 then
					--|#line 1893 "et_eiffel_parser.y"
				yy_do_action_295
			when 296 then
					--|#line 1897 "et_eiffel_parser.y"
				yy_do_action_296
			when 297 then
					--|#line 1899 "et_eiffel_parser.y"
				yy_do_action_297
			when 298 then
					--|#line 1907 "et_eiffel_parser.y"
				yy_do_action_298
			when 299 then
					--|#line 1909 "et_eiffel_parser.y"
				yy_do_action_299
			when 300 then
					--|#line 1917 "et_eiffel_parser.y"
				yy_do_action_300
			when 301 then
					--|#line 1920 "et_eiffel_parser.y"
				yy_do_action_301
			when 302 then
					--|#line 1929 "et_eiffel_parser.y"
				yy_do_action_302
			when 303 then
					--|#line 1933 "et_eiffel_parser.y"
				yy_do_action_303
			when 304 then
					--|#line 1943 "et_eiffel_parser.y"
				yy_do_action_304
			when 305 then
					--|#line 1946 "et_eiffel_parser.y"
				yy_do_action_305
			when 306 then
					--|#line 1955 "et_eiffel_parser.y"
				yy_do_action_306
			when 307 then
					--|#line 1959 "et_eiffel_parser.y"
				yy_do_action_307
			when 308 then
					--|#line 1969 "et_eiffel_parser.y"
				yy_do_action_308
			when 309 then
					--|#line 1971 "et_eiffel_parser.y"
				yy_do_action_309
			when 310 then
					--|#line 1979 "et_eiffel_parser.y"
				yy_do_action_310
			when 311 then
					--|#line 1982 "et_eiffel_parser.y"
				yy_do_action_311
			when 312 then
					--|#line 1991 "et_eiffel_parser.y"
				yy_do_action_312
			when 313 then
					--|#line 1994 "et_eiffel_parser.y"
				yy_do_action_313
			when 314 then
					--|#line 2003 "et_eiffel_parser.y"
				yy_do_action_314
			when 315 then
					--|#line 2007 "et_eiffel_parser.y"
				yy_do_action_315
			when 316 then
					--|#line 2019 "et_eiffel_parser.y"
				yy_do_action_316
			when 317 then
					--|#line 2022 "et_eiffel_parser.y"
				yy_do_action_317
			when 318 then
					--|#line 2026 "et_eiffel_parser.y"
				yy_do_action_318
			when 319 then
					--|#line 2029 "et_eiffel_parser.y"
				yy_do_action_319
			when 320 then
					--|#line 2033 "et_eiffel_parser.y"
				yy_do_action_320
			when 321 then
					--|#line 2035 "et_eiffel_parser.y"
				yy_do_action_321
			when 322 then
					--|#line 2038 "et_eiffel_parser.y"
				yy_do_action_322
			when 323 then
					--|#line 2041 "et_eiffel_parser.y"
				yy_do_action_323
			when 324 then
					--|#line 2047 "et_eiffel_parser.y"
				yy_do_action_324
			when 325 then
					--|#line 2055 "et_eiffel_parser.y"
				yy_do_action_325
			when 326 then
					--|#line 2059 "et_eiffel_parser.y"
				yy_do_action_326
			when 327 then
					--|#line 2061 "et_eiffel_parser.y"
				yy_do_action_327
			when 328 then
					--|#line 2065 "et_eiffel_parser.y"
				yy_do_action_328
			when 329 then
					--|#line 2067 "et_eiffel_parser.y"
				yy_do_action_329
			when 330 then
					--|#line 2071 "et_eiffel_parser.y"
				yy_do_action_330
			when 331 then
					--|#line 2073 "et_eiffel_parser.y"
				yy_do_action_331
			when 332 then
					--|#line 2079 "et_eiffel_parser.y"
				yy_do_action_332
			when 333 then
					--|#line 2088 "et_eiffel_parser.y"
				yy_do_action_333
			when 334 then
					--|#line 2090 "et_eiffel_parser.y"
				yy_do_action_334
			when 335 then
					--|#line 2101 "et_eiffel_parser.y"
				yy_do_action_335
			when 336 then
					--|#line 2103 "et_eiffel_parser.y"
				yy_do_action_336
			when 337 then
					--|#line 2105 "et_eiffel_parser.y"
				yy_do_action_337
			when 338 then
					--|#line 2107 "et_eiffel_parser.y"
				yy_do_action_338
			when 339 then
					--|#line 2109 "et_eiffel_parser.y"
				yy_do_action_339
			when 340 then
					--|#line 2111 "et_eiffel_parser.y"
				yy_do_action_340
			when 341 then
					--|#line 2113 "et_eiffel_parser.y"
				yy_do_action_341
			when 342 then
					--|#line 2115 "et_eiffel_parser.y"
				yy_do_action_342
			when 343 then
					--|#line 2117 "et_eiffel_parser.y"
				yy_do_action_343
			when 344 then
					--|#line 2119 "et_eiffel_parser.y"
				yy_do_action_344
			when 345 then
					--|#line 2121 "et_eiffel_parser.y"
				yy_do_action_345
			when 346 then
					--|#line 2123 "et_eiffel_parser.y"
				yy_do_action_346
			when 347 then
					--|#line 2125 "et_eiffel_parser.y"
				yy_do_action_347
			when 348 then
					--|#line 2127 "et_eiffel_parser.y"
				yy_do_action_348
			when 349 then
					--|#line 2129 "et_eiffel_parser.y"
				yy_do_action_349
			when 350 then
					--|#line 2131 "et_eiffel_parser.y"
				yy_do_action_350
			when 351 then
					--|#line 2133 "et_eiffel_parser.y"
				yy_do_action_351
			when 352 then
					--|#line 2135 "et_eiffel_parser.y"
				yy_do_action_352
			when 353 then
					--|#line 2137 "et_eiffel_parser.y"
				yy_do_action_353
			when 354 then
					--|#line 2139 "et_eiffel_parser.y"
				yy_do_action_354
			when 355 then
					--|#line 2141 "et_eiffel_parser.y"
				yy_do_action_355
			when 356 then
					--|#line 2143 "et_eiffel_parser.y"
				yy_do_action_356
			when 357 then
					--|#line 2145 "et_eiffel_parser.y"
				yy_do_action_357
			when 358 then
					--|#line 2149 "et_eiffel_parser.y"
				yy_do_action_358
			when 359 then
					--|#line 2151 "et_eiffel_parser.y"
				yy_do_action_359
			when 360 then
					--|#line 2157 "et_eiffel_parser.y"
				yy_do_action_360
			when 361 then
					--|#line 2164 "et_eiffel_parser.y"
				yy_do_action_361
			when 362 then
					--|#line 2166 "et_eiffel_parser.y"
				yy_do_action_362
			when 363 then
					--|#line 2174 "et_eiffel_parser.y"
				yy_do_action_363
			when 364 then
					--|#line 2185 "et_eiffel_parser.y"
				yy_do_action_364
			when 365 then
					--|#line 2192 "et_eiffel_parser.y"
				yy_do_action_365
			when 366 then
					--|#line 2199 "et_eiffel_parser.y"
				yy_do_action_366
			when 367 then
					--|#line 2209 "et_eiffel_parser.y"
				yy_do_action_367
			when 368 then
					--|#line 2220 "et_eiffel_parser.y"
				yy_do_action_368
			when 369 then
					--|#line 2227 "et_eiffel_parser.y"
				yy_do_action_369
			when 370 then
					--|#line 2236 "et_eiffel_parser.y"
				yy_do_action_370
			when 371 then
					--|#line 2245 "et_eiffel_parser.y"
				yy_do_action_371
			when 372 then
					--|#line 2254 "et_eiffel_parser.y"
				yy_do_action_372
			when 373 then
					--|#line 2263 "et_eiffel_parser.y"
				yy_do_action_373
			when 374 then
					--|#line 2274 "et_eiffel_parser.y"
				yy_do_action_374
			when 375 then
					--|#line 2276 "et_eiffel_parser.y"
				yy_do_action_375
			when 376 then
					--|#line 2278 "et_eiffel_parser.y"
				yy_do_action_376
			when 377 then
					--|#line 2278 "et_eiffel_parser.y"
				yy_do_action_377
			when 378 then
					--|#line 2291 "et_eiffel_parser.y"
				yy_do_action_378
			when 379 then
					--|#line 2298 "et_eiffel_parser.y"
				yy_do_action_379
			when 380 then
					--|#line 2305 "et_eiffel_parser.y"
				yy_do_action_380
			when 381 then
					--|#line 2315 "et_eiffel_parser.y"
				yy_do_action_381
			when 382 then
					--|#line 2326 "et_eiffel_parser.y"
				yy_do_action_382
			when 383 then
					--|#line 2333 "et_eiffel_parser.y"
				yy_do_action_383
			when 384 then
					--|#line 2342 "et_eiffel_parser.y"
				yy_do_action_384
			when 385 then
					--|#line 2351 "et_eiffel_parser.y"
				yy_do_action_385
			when 386 then
					--|#line 2360 "et_eiffel_parser.y"
				yy_do_action_386
			when 387 then
					--|#line 2369 "et_eiffel_parser.y"
				yy_do_action_387
			when 388 then
					--|#line 2380 "et_eiffel_parser.y"
				yy_do_action_388
			when 389 then
					--|#line 2382 "et_eiffel_parser.y"
				yy_do_action_389
			when 390 then
					--|#line 2384 "et_eiffel_parser.y"
				yy_do_action_390
			when 391 then
					--|#line 2386 "et_eiffel_parser.y"
				yy_do_action_391
			when 392 then
					--|#line 2388 "et_eiffel_parser.y"
				yy_do_action_392
			when 393 then
					--|#line 2397 "et_eiffel_parser.y"
				yy_do_action_393
			when 394 then
					--|#line 2406 "et_eiffel_parser.y"
				yy_do_action_394
			when 395 then
					--|#line 2408 "et_eiffel_parser.y"
				yy_do_action_395
			when 396 then
					--|#line 2410 "et_eiffel_parser.y"
				yy_do_action_396
			when 397 then
					--|#line 2412 "et_eiffel_parser.y"
				yy_do_action_397
			when 398 then
					--|#line 2414 "et_eiffel_parser.y"
				yy_do_action_398
			when 399 then
					--|#line 2423 "et_eiffel_parser.y"
				yy_do_action_399
			when 400 then
					--|#line 2434 "et_eiffel_parser.y"
				yy_do_action_400
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_401_600 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 401 then
					--|#line 2438 "et_eiffel_parser.y"
				yy_do_action_401
			when 402 then
					--|#line 2440 "et_eiffel_parser.y"
				yy_do_action_402
			when 403 then
					--|#line 2442 "et_eiffel_parser.y"
				yy_do_action_403
			when 404 then
					--|#line 2444 "et_eiffel_parser.y"
				yy_do_action_404
			when 405 then
					--|#line 2446 "et_eiffel_parser.y"
				yy_do_action_405
			when 406 then
					--|#line 2450 "et_eiffel_parser.y"
				yy_do_action_406
			when 407 then
					--|#line 2454 "et_eiffel_parser.y"
				yy_do_action_407
			when 408 then
					--|#line 2456 "et_eiffel_parser.y"
				yy_do_action_408
			when 409 then
					--|#line 2458 "et_eiffel_parser.y"
				yy_do_action_409
			when 410 then
					--|#line 2460 "et_eiffel_parser.y"
				yy_do_action_410
			when 411 then
					--|#line 2462 "et_eiffel_parser.y"
				yy_do_action_411
			when 412 then
					--|#line 2466 "et_eiffel_parser.y"
				yy_do_action_412
			when 413 then
					--|#line 2470 "et_eiffel_parser.y"
				yy_do_action_413
			when 414 then
					--|#line 2472 "et_eiffel_parser.y"
				yy_do_action_414
			when 415 then
					--|#line 2476 "et_eiffel_parser.y"
				yy_do_action_415
			when 416 then
					--|#line 2478 "et_eiffel_parser.y"
				yy_do_action_416
			when 417 then
					--|#line 2482 "et_eiffel_parser.y"
				yy_do_action_417
			when 418 then
					--|#line 2486 "et_eiffel_parser.y"
				yy_do_action_418
			when 419 then
					--|#line 2490 "et_eiffel_parser.y"
				yy_do_action_419
			when 420 then
					--|#line 2492 "et_eiffel_parser.y"
				yy_do_action_420
			when 421 then
					--|#line 2496 "et_eiffel_parser.y"
				yy_do_action_421
			when 422 then
					--|#line 2498 "et_eiffel_parser.y"
				yy_do_action_422
			when 423 then
					--|#line 2502 "et_eiffel_parser.y"
				yy_do_action_423
			when 424 then
					--|#line 2504 "et_eiffel_parser.y"
				yy_do_action_424
			when 425 then
					--|#line 2508 "et_eiffel_parser.y"
				yy_do_action_425
			when 426 then
					--|#line 2510 "et_eiffel_parser.y"
				yy_do_action_426
			when 427 then
					--|#line 2516 "et_eiffel_parser.y"
				yy_do_action_427
			when 428 then
					--|#line 2518 "et_eiffel_parser.y"
				yy_do_action_428
			when 429 then
					--|#line 2524 "et_eiffel_parser.y"
				yy_do_action_429
			when 430 then
					--|#line 2526 "et_eiffel_parser.y"
				yy_do_action_430
			when 431 then
					--|#line 2530 "et_eiffel_parser.y"
				yy_do_action_431
			when 432 then
					--|#line 2532 "et_eiffel_parser.y"
				yy_do_action_432
			when 433 then
					--|#line 2534 "et_eiffel_parser.y"
				yy_do_action_433
			when 434 then
					--|#line 2536 "et_eiffel_parser.y"
				yy_do_action_434
			when 435 then
					--|#line 2538 "et_eiffel_parser.y"
				yy_do_action_435
			when 436 then
					--|#line 2540 "et_eiffel_parser.y"
				yy_do_action_436
			when 437 then
					--|#line 2542 "et_eiffel_parser.y"
				yy_do_action_437
			when 438 then
					--|#line 2544 "et_eiffel_parser.y"
				yy_do_action_438
			when 439 then
					--|#line 2546 "et_eiffel_parser.y"
				yy_do_action_439
			when 440 then
					--|#line 2548 "et_eiffel_parser.y"
				yy_do_action_440
			when 441 then
					--|#line 2550 "et_eiffel_parser.y"
				yy_do_action_441
			when 442 then
					--|#line 2552 "et_eiffel_parser.y"
				yy_do_action_442
			when 443 then
					--|#line 2554 "et_eiffel_parser.y"
				yy_do_action_443
			when 444 then
					--|#line 2556 "et_eiffel_parser.y"
				yy_do_action_444
			when 445 then
					--|#line 2558 "et_eiffel_parser.y"
				yy_do_action_445
			when 446 then
					--|#line 2560 "et_eiffel_parser.y"
				yy_do_action_446
			when 447 then
					--|#line 2562 "et_eiffel_parser.y"
				yy_do_action_447
			when 448 then
					--|#line 2564 "et_eiffel_parser.y"
				yy_do_action_448
			when 449 then
					--|#line 2566 "et_eiffel_parser.y"
				yy_do_action_449
			when 450 then
					--|#line 2568 "et_eiffel_parser.y"
				yy_do_action_450
			when 451 then
					--|#line 2570 "et_eiffel_parser.y"
				yy_do_action_451
			when 452 then
					--|#line 2572 "et_eiffel_parser.y"
				yy_do_action_452
			when 453 then
					--|#line 2576 "et_eiffel_parser.y"
				yy_do_action_453
			when 454 then
					--|#line 2578 "et_eiffel_parser.y"
				yy_do_action_454
			when 455 then
					--|#line 2580 "et_eiffel_parser.y"
				yy_do_action_455
			when 456 then
					--|#line 2582 "et_eiffel_parser.y"
				yy_do_action_456
			when 457 then
					--|#line 2584 "et_eiffel_parser.y"
				yy_do_action_457
			when 458 then
					--|#line 2586 "et_eiffel_parser.y"
				yy_do_action_458
			when 459 then
					--|#line 2588 "et_eiffel_parser.y"
				yy_do_action_459
			when 460 then
					--|#line 2590 "et_eiffel_parser.y"
				yy_do_action_460
			when 461 then
					--|#line 2592 "et_eiffel_parser.y"
				yy_do_action_461
			when 462 then
					--|#line 2594 "et_eiffel_parser.y"
				yy_do_action_462
			when 463 then
					--|#line 2596 "et_eiffel_parser.y"
				yy_do_action_463
			when 464 then
					--|#line 2598 "et_eiffel_parser.y"
				yy_do_action_464
			when 465 then
					--|#line 2600 "et_eiffel_parser.y"
				yy_do_action_465
			when 466 then
					--|#line 2602 "et_eiffel_parser.y"
				yy_do_action_466
			when 467 then
					--|#line 2604 "et_eiffel_parser.y"
				yy_do_action_467
			when 468 then
					--|#line 2606 "et_eiffel_parser.y"
				yy_do_action_468
			when 469 then
					--|#line 2608 "et_eiffel_parser.y"
				yy_do_action_469
			when 470 then
					--|#line 2610 "et_eiffel_parser.y"
				yy_do_action_470
			when 471 then
					--|#line 2612 "et_eiffel_parser.y"
				yy_do_action_471
			when 472 then
					--|#line 2614 "et_eiffel_parser.y"
				yy_do_action_472
			when 473 then
					--|#line 2616 "et_eiffel_parser.y"
				yy_do_action_473
			when 474 then
					--|#line 2618 "et_eiffel_parser.y"
				yy_do_action_474
			when 475 then
					--|#line 2622 "et_eiffel_parser.y"
				yy_do_action_475
			when 476 then
					--|#line 2624 "et_eiffel_parser.y"
				yy_do_action_476
			when 477 then
					--|#line 2626 "et_eiffel_parser.y"
				yy_do_action_477
			when 478 then
					--|#line 2628 "et_eiffel_parser.y"
				yy_do_action_478
			when 479 then
					--|#line 2630 "et_eiffel_parser.y"
				yy_do_action_479
			when 480 then
					--|#line 2632 "et_eiffel_parser.y"
				yy_do_action_480
			when 481 then
					--|#line 2634 "et_eiffel_parser.y"
				yy_do_action_481
			when 482 then
					--|#line 2636 "et_eiffel_parser.y"
				yy_do_action_482
			when 483 then
					--|#line 2638 "et_eiffel_parser.y"
				yy_do_action_483
			when 484 then
					--|#line 2640 "et_eiffel_parser.y"
				yy_do_action_484
			when 485 then
					--|#line 2642 "et_eiffel_parser.y"
				yy_do_action_485
			when 486 then
					--|#line 2644 "et_eiffel_parser.y"
				yy_do_action_486
			when 487 then
					--|#line 2646 "et_eiffel_parser.y"
				yy_do_action_487
			when 488 then
					--|#line 2648 "et_eiffel_parser.y"
				yy_do_action_488
			when 489 then
					--|#line 2650 "et_eiffel_parser.y"
				yy_do_action_489
			when 490 then
					--|#line 2652 "et_eiffel_parser.y"
				yy_do_action_490
			when 491 then
					--|#line 2654 "et_eiffel_parser.y"
				yy_do_action_491
			when 492 then
					--|#line 2656 "et_eiffel_parser.y"
				yy_do_action_492
			when 493 then
					--|#line 2658 "et_eiffel_parser.y"
				yy_do_action_493
			when 494 then
					--|#line 2660 "et_eiffel_parser.y"
				yy_do_action_494
			when 495 then
					--|#line 2662 "et_eiffel_parser.y"
				yy_do_action_495
			when 496 then
					--|#line 2664 "et_eiffel_parser.y"
				yy_do_action_496
			when 497 then
					--|#line 2666 "et_eiffel_parser.y"
				yy_do_action_497
			when 498 then
					--|#line 2670 "et_eiffel_parser.y"
				yy_do_action_498
			when 499 then
					--|#line 2672 "et_eiffel_parser.y"
				yy_do_action_499
			when 500 then
					--|#line 2676 "et_eiffel_parser.y"
				yy_do_action_500
			when 501 then
					--|#line 2678 "et_eiffel_parser.y"
				yy_do_action_501
			when 502 then
					--|#line 2682 "et_eiffel_parser.y"
				yy_do_action_502
			when 503 then
					--|#line 2685 "et_eiffel_parser.y"
				yy_do_action_503
			when 504 then
					--|#line 2693 "et_eiffel_parser.y"
				yy_do_action_504
			when 505 then
					--|#line 2700 "et_eiffel_parser.y"
				yy_do_action_505
			when 506 then
					--|#line 2711 "et_eiffel_parser.y"
				yy_do_action_506
			when 507 then
					--|#line 2716 "et_eiffel_parser.y"
				yy_do_action_507
			when 508 then
					--|#line 2721 "et_eiffel_parser.y"
				yy_do_action_508
			when 509 then
					--|#line 2726 "et_eiffel_parser.y"
				yy_do_action_509
			when 510 then
					--|#line 2733 "et_eiffel_parser.y"
				yy_do_action_510
			when 511 then
					--|#line 2739 "et_eiffel_parser.y"
				yy_do_action_511
			when 512 then
					--|#line 2748 "et_eiffel_parser.y"
				yy_do_action_512
			when 513 then
					--|#line 2750 "et_eiffel_parser.y"
				yy_do_action_513
			when 514 then
					--|#line 2754 "et_eiffel_parser.y"
				yy_do_action_514
			when 515 then
					--|#line 2757 "et_eiffel_parser.y"
				yy_do_action_515
			when 516 then
					--|#line 2763 "et_eiffel_parser.y"
				yy_do_action_516
			when 517 then
					--|#line 2771 "et_eiffel_parser.y"
				yy_do_action_517
			when 518 then
					--|#line 2776 "et_eiffel_parser.y"
				yy_do_action_518
			when 519 then
					--|#line 2781 "et_eiffel_parser.y"
				yy_do_action_519
			when 520 then
					--|#line 2786 "et_eiffel_parser.y"
				yy_do_action_520
			when 521 then
					--|#line 2797 "et_eiffel_parser.y"
				yy_do_action_521
			when 522 then
					--|#line 2808 "et_eiffel_parser.y"
				yy_do_action_522
			when 523 then
					--|#line 2821 "et_eiffel_parser.y"
				yy_do_action_523
			when 524 then
					--|#line 2830 "et_eiffel_parser.y"
				yy_do_action_524
			when 525 then
					--|#line 2839 "et_eiffel_parser.y"
				yy_do_action_525
			when 526 then
					--|#line 2841 "et_eiffel_parser.y"
				yy_do_action_526
			when 527 then
					--|#line 2843 "et_eiffel_parser.y"
				yy_do_action_527
			when 528 then
					--|#line 2847 "et_eiffel_parser.y"
				yy_do_action_528
			when 529 then
					--|#line 2849 "et_eiffel_parser.y"
				yy_do_action_529
			when 530 then
					--|#line 2851 "et_eiffel_parser.y"
				yy_do_action_530
			when 531 then
					--|#line 2853 "et_eiffel_parser.y"
				yy_do_action_531
			when 532 then
					--|#line 2855 "et_eiffel_parser.y"
				yy_do_action_532
			when 533 then
					--|#line 2857 "et_eiffel_parser.y"
				yy_do_action_533
			when 534 then
					--|#line 2859 "et_eiffel_parser.y"
				yy_do_action_534
			when 535 then
					--|#line 2861 "et_eiffel_parser.y"
				yy_do_action_535
			when 536 then
					--|#line 2863 "et_eiffel_parser.y"
				yy_do_action_536
			when 537 then
					--|#line 2865 "et_eiffel_parser.y"
				yy_do_action_537
			when 538 then
					--|#line 2867 "et_eiffel_parser.y"
				yy_do_action_538
			when 539 then
					--|#line 2869 "et_eiffel_parser.y"
				yy_do_action_539
			when 540 then
					--|#line 2871 "et_eiffel_parser.y"
				yy_do_action_540
			when 541 then
					--|#line 2873 "et_eiffel_parser.y"
				yy_do_action_541
			when 542 then
					--|#line 2875 "et_eiffel_parser.y"
				yy_do_action_542
			when 543 then
					--|#line 2877 "et_eiffel_parser.y"
				yy_do_action_543
			when 544 then
					--|#line 2879 "et_eiffel_parser.y"
				yy_do_action_544
			when 545 then
					--|#line 2881 "et_eiffel_parser.y"
				yy_do_action_545
			when 546 then
					--|#line 2883 "et_eiffel_parser.y"
				yy_do_action_546
			when 547 then
					--|#line 2885 "et_eiffel_parser.y"
				yy_do_action_547
			when 548 then
					--|#line 2887 "et_eiffel_parser.y"
				yy_do_action_548
			when 549 then
					--|#line 2891 "et_eiffel_parser.y"
				yy_do_action_549
			when 550 then
					--|#line 2893 "et_eiffel_parser.y"
				yy_do_action_550
			when 551 then
					--|#line 2897 "et_eiffel_parser.y"
				yy_do_action_551
			when 552 then
					--|#line 2899 "et_eiffel_parser.y"
				yy_do_action_552
			when 553 then
					--|#line 2901 "et_eiffel_parser.y"
				yy_do_action_553
			when 554 then
					--|#line 2903 "et_eiffel_parser.y"
				yy_do_action_554
			when 555 then
					--|#line 2905 "et_eiffel_parser.y"
				yy_do_action_555
			when 556 then
					--|#line 2907 "et_eiffel_parser.y"
				yy_do_action_556
			when 557 then
					--|#line 2909 "et_eiffel_parser.y"
				yy_do_action_557
			when 558 then
					--|#line 2917 "et_eiffel_parser.y"
				yy_do_action_558
			when 559 then
					--|#line 2925 "et_eiffel_parser.y"
				yy_do_action_559
			when 560 then
					--|#line 2933 "et_eiffel_parser.y"
				yy_do_action_560
			when 561 then
					--|#line 2941 "et_eiffel_parser.y"
				yy_do_action_561
			when 562 then
					--|#line 2943 "et_eiffel_parser.y"
				yy_do_action_562
			when 563 then
					--|#line 2945 "et_eiffel_parser.y"
				yy_do_action_563
			when 564 then
					--|#line 2947 "et_eiffel_parser.y"
				yy_do_action_564
			when 565 then
					--|#line 2949 "et_eiffel_parser.y"
				yy_do_action_565
			when 566 then
					--|#line 2951 "et_eiffel_parser.y"
				yy_do_action_566
			when 567 then
					--|#line 2953 "et_eiffel_parser.y"
				yy_do_action_567
			when 568 then
					--|#line 2955 "et_eiffel_parser.y"
				yy_do_action_568
			when 569 then
					--|#line 2957 "et_eiffel_parser.y"
				yy_do_action_569
			when 570 then
					--|#line 2963 "et_eiffel_parser.y"
				yy_do_action_570
			when 571 then
					--|#line 2967 "et_eiffel_parser.y"
				yy_do_action_571
			when 572 then
					--|#line 2971 "et_eiffel_parser.y"
				yy_do_action_572
			when 573 then
					--|#line 2975 "et_eiffel_parser.y"
				yy_do_action_573
			when 574 then
					--|#line 2979 "et_eiffel_parser.y"
				yy_do_action_574
			when 575 then
					--|#line 2983 "et_eiffel_parser.y"
				yy_do_action_575
			when 576 then
					--|#line 2987 "et_eiffel_parser.y"
				yy_do_action_576
			when 577 then
					--|#line 2991 "et_eiffel_parser.y"
				yy_do_action_577
			when 578 then
					--|#line 2995 "et_eiffel_parser.y"
				yy_do_action_578
			when 579 then
					--|#line 2997 "et_eiffel_parser.y"
				yy_do_action_579
			when 580 then
					--|#line 3001 "et_eiffel_parser.y"
				yy_do_action_580
			when 581 then
					--|#line 3005 "et_eiffel_parser.y"
				yy_do_action_581
			when 582 then
					--|#line 3012 "et_eiffel_parser.y"
				yy_do_action_582
			when 583 then
					--|#line 3014 "et_eiffel_parser.y"
				yy_do_action_583
			when 584 then
					--|#line 3018 "et_eiffel_parser.y"
				yy_do_action_584
			when 585 then
					--|#line 3020 "et_eiffel_parser.y"
				yy_do_action_585
			when 586 then
					--|#line 3024 "et_eiffel_parser.y"
				yy_do_action_586
			when 587 then
					--|#line 3035 "et_eiffel_parser.y"
				yy_do_action_587
			when 588 then
					--|#line 3035 "et_eiffel_parser.y"
				yy_do_action_588
			when 589 then
					--|#line 3056 "et_eiffel_parser.y"
				yy_do_action_589
			when 590 then
					--|#line 3058 "et_eiffel_parser.y"
				yy_do_action_590
			when 591 then
					--|#line 3060 "et_eiffel_parser.y"
				yy_do_action_591
			when 592 then
					--|#line 3062 "et_eiffel_parser.y"
				yy_do_action_592
			when 593 then
					--|#line 3064 "et_eiffel_parser.y"
				yy_do_action_593
			when 594 then
					--|#line 3066 "et_eiffel_parser.y"
				yy_do_action_594
			when 595 then
					--|#line 3068 "et_eiffel_parser.y"
				yy_do_action_595
			when 596 then
					--|#line 3070 "et_eiffel_parser.y"
				yy_do_action_596
			when 597 then
					--|#line 3072 "et_eiffel_parser.y"
				yy_do_action_597
			when 598 then
					--|#line 3074 "et_eiffel_parser.y"
				yy_do_action_598
			when 599 then
					--|#line 3076 "et_eiffel_parser.y"
				yy_do_action_599
			when 600 then
					--|#line 3084 "et_eiffel_parser.y"
				yy_do_action_600
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_601_800 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 601 then
					--|#line 3097 "et_eiffel_parser.y"
				yy_do_action_601
			when 602 then
					--|#line 3099 "et_eiffel_parser.y"
				yy_do_action_602
			when 603 then
					--|#line 3101 "et_eiffel_parser.y"
				yy_do_action_603
			when 604 then
					--|#line 3103 "et_eiffel_parser.y"
				yy_do_action_604
			when 605 then
					--|#line 3105 "et_eiffel_parser.y"
				yy_do_action_605
			when 606 then
					--|#line 3111 "et_eiffel_parser.y"
				yy_do_action_606
			when 607 then
					--|#line 3115 "et_eiffel_parser.y"
				yy_do_action_607
			when 608 then
					--|#line 3117 "et_eiffel_parser.y"
				yy_do_action_608
			when 609 then
					--|#line 3119 "et_eiffel_parser.y"
				yy_do_action_609
			when 610 then
					--|#line 3121 "et_eiffel_parser.y"
				yy_do_action_610
			when 611 then
					--|#line 3127 "et_eiffel_parser.y"
				yy_do_action_611
			when 612 then
					--|#line 3129 "et_eiffel_parser.y"
				yy_do_action_612
			when 613 then
					--|#line 3131 "et_eiffel_parser.y"
				yy_do_action_613
			when 614 then
					--|#line 3133 "et_eiffel_parser.y"
				yy_do_action_614
			when 615 then
					--|#line 3137 "et_eiffel_parser.y"
				yy_do_action_615
			when 616 then
					--|#line 3139 "et_eiffel_parser.y"
				yy_do_action_616
			when 617 then
					--|#line 3141 "et_eiffel_parser.y"
				yy_do_action_617
			when 618 then
					--|#line 3143 "et_eiffel_parser.y"
				yy_do_action_618
			when 619 then
					--|#line 3147 "et_eiffel_parser.y"
				yy_do_action_619
			when 620 then
					--|#line 3149 "et_eiffel_parser.y"
				yy_do_action_620
			when 621 then
					--|#line 3153 "et_eiffel_parser.y"
				yy_do_action_621
			when 622 then
					--|#line 3154 "et_eiffel_parser.y"
				yy_do_action_622
			when 623 then
					--|#line 3160 "et_eiffel_parser.y"
				yy_do_action_623
			when 624 then
					--|#line 3162 "et_eiffel_parser.y"
				yy_do_action_624
			when 625 then
					--|#line 3164 "et_eiffel_parser.y"
				yy_do_action_625
			when 626 then
					--|#line 3166 "et_eiffel_parser.y"
				yy_do_action_626
			when 627 then
					--|#line 3170 "et_eiffel_parser.y"
				yy_do_action_627
			when 628 then
					--|#line 3177 "et_eiffel_parser.y"
				yy_do_action_628
			when 629 then
					--|#line 3184 "et_eiffel_parser.y"
				yy_do_action_629
			when 630 then
					--|#line 3193 "et_eiffel_parser.y"
				yy_do_action_630
			when 631 then
					--|#line 3204 "et_eiffel_parser.y"
				yy_do_action_631
			when 632 then
					--|#line 3206 "et_eiffel_parser.y"
				yy_do_action_632
			when 633 then
					--|#line 3210 "et_eiffel_parser.y"
				yy_do_action_633
			when 634 then
					--|#line 3217 "et_eiffel_parser.y"
				yy_do_action_634
			when 635 then
					--|#line 3224 "et_eiffel_parser.y"
				yy_do_action_635
			when 636 then
					--|#line 3233 "et_eiffel_parser.y"
				yy_do_action_636
			when 637 then
					--|#line 3244 "et_eiffel_parser.y"
				yy_do_action_637
			when 638 then
					--|#line 3246 "et_eiffel_parser.y"
				yy_do_action_638
			when 639 then
					--|#line 3250 "et_eiffel_parser.y"
				yy_do_action_639
			when 640 then
					--|#line 3252 "et_eiffel_parser.y"
				yy_do_action_640
			when 641 then
					--|#line 3259 "et_eiffel_parser.y"
				yy_do_action_641
			when 642 then
					--|#line 3266 "et_eiffel_parser.y"
				yy_do_action_642
			when 643 then
					--|#line 3275 "et_eiffel_parser.y"
				yy_do_action_643
			when 644 then
					--|#line 3284 "et_eiffel_parser.y"
				yy_do_action_644
			when 645 then
					--|#line 3286 "et_eiffel_parser.y"
				yy_do_action_645
			when 646 then
					--|#line 3286 "et_eiffel_parser.y"
				yy_do_action_646
			when 647 then
					--|#line 3299 "et_eiffel_parser.y"
				yy_do_action_647
			when 648 then
					--|#line 3310 "et_eiffel_parser.y"
				yy_do_action_648
			when 649 then
					--|#line 3318 "et_eiffel_parser.y"
				yy_do_action_649
			when 650 then
					--|#line 3327 "et_eiffel_parser.y"
				yy_do_action_650
			when 651 then
					--|#line 3336 "et_eiffel_parser.y"
				yy_do_action_651
			when 652 then
					--|#line 3338 "et_eiffel_parser.y"
				yy_do_action_652
			when 653 then
					--|#line 3342 "et_eiffel_parser.y"
				yy_do_action_653
			when 654 then
					--|#line 3344 "et_eiffel_parser.y"
				yy_do_action_654
			when 655 then
					--|#line 3346 "et_eiffel_parser.y"
				yy_do_action_655
			when 656 then
					--|#line 3348 "et_eiffel_parser.y"
				yy_do_action_656
			when 657 then
					--|#line 3354 "et_eiffel_parser.y"
				yy_do_action_657
			when 658 then
					--|#line 3356 "et_eiffel_parser.y"
				yy_do_action_658
			when 659 then
					--|#line 3360 "et_eiffel_parser.y"
				yy_do_action_659
			when 660 then
					--|#line 3362 "et_eiffel_parser.y"
				yy_do_action_660
			when 661 then
					--|#line 3368 "et_eiffel_parser.y"
				yy_do_action_661
			when 662 then
					--|#line 3372 "et_eiffel_parser.y"
				yy_do_action_662
			when 663 then
					--|#line 3374 "et_eiffel_parser.y"
				yy_do_action_663
			when 664 then
					--|#line 3376 "et_eiffel_parser.y"
				yy_do_action_664
			when 665 then
					--|#line 3376 "et_eiffel_parser.y"
				yy_do_action_665
			when 666 then
					--|#line 3389 "et_eiffel_parser.y"
				yy_do_action_666
			when 667 then
					--|#line 3400 "et_eiffel_parser.y"
				yy_do_action_667
			when 668 then
					--|#line 3409 "et_eiffel_parser.y"
				yy_do_action_668
			when 669 then
					--|#line 3420 "et_eiffel_parser.y"
				yy_do_action_669
			when 670 then
					--|#line 3422 "et_eiffel_parser.y"
				yy_do_action_670
			when 671 then
					--|#line 3424 "et_eiffel_parser.y"
				yy_do_action_671
			when 672 then
					--|#line 3426 "et_eiffel_parser.y"
				yy_do_action_672
			when 673 then
					--|#line 3428 "et_eiffel_parser.y"
				yy_do_action_673
			when 674 then
					--|#line 3430 "et_eiffel_parser.y"
				yy_do_action_674
			when 675 then
					--|#line 3432 "et_eiffel_parser.y"
				yy_do_action_675
			when 676 then
					--|#line 3436 "et_eiffel_parser.y"
				yy_do_action_676
			when 677 then
					--|#line 3438 "et_eiffel_parser.y"
				yy_do_action_677
			when 678 then
					--|#line 3442 "et_eiffel_parser.y"
				yy_do_action_678
			when 679 then
					--|#line 3446 "et_eiffel_parser.y"
				yy_do_action_679
			when 680 then
					--|#line 3448 "et_eiffel_parser.y"
				yy_do_action_680
			when 681 then
					--|#line 3452 "et_eiffel_parser.y"
				yy_do_action_681
			when 682 then
					--|#line 3454 "et_eiffel_parser.y"
				yy_do_action_682
			when 683 then
					--|#line 3458 "et_eiffel_parser.y"
				yy_do_action_683
			when 684 then
					--|#line 3460 "et_eiffel_parser.y"
				yy_do_action_684
			when 685 then
					--|#line 3464 "et_eiffel_parser.y"
				yy_do_action_685
			when 686 then
					--|#line 3466 "et_eiffel_parser.y"
				yy_do_action_686
			when 687 then
					--|#line 3468 "et_eiffel_parser.y"
				yy_do_action_687
			when 688 then
					--|#line 3470 "et_eiffel_parser.y"
				yy_do_action_688
			when 689 then
					--|#line 3472 "et_eiffel_parser.y"
				yy_do_action_689
			when 690 then
					--|#line 3474 "et_eiffel_parser.y"
				yy_do_action_690
			when 691 then
					--|#line 3482 "et_eiffel_parser.y"
				yy_do_action_691
			when 692 then
					--|#line 3484 "et_eiffel_parser.y"
				yy_do_action_692
			when 693 then
					--|#line 3488 "et_eiffel_parser.y"
				yy_do_action_693
			when 694 then
					--|#line 3496 "et_eiffel_parser.y"
				yy_do_action_694
			when 695 then
					--|#line 3502 "et_eiffel_parser.y"
				yy_do_action_695
			when 696 then
					--|#line 3504 "et_eiffel_parser.y"
				yy_do_action_696
			when 697 then
					--|#line 3506 "et_eiffel_parser.y"
				yy_do_action_697
			when 698 then
					--|#line 3506 "et_eiffel_parser.y"
				yy_do_action_698
			when 699 then
					--|#line 3519 "et_eiffel_parser.y"
				yy_do_action_699
			when 700 then
					--|#line 3530 "et_eiffel_parser.y"
				yy_do_action_700
			when 701 then
					--|#line 3538 "et_eiffel_parser.y"
				yy_do_action_701
			when 702 then
					--|#line 3547 "et_eiffel_parser.y"
				yy_do_action_702
			when 703 then
					--|#line 3556 "et_eiffel_parser.y"
				yy_do_action_703
			when 704 then
					--|#line 3558 "et_eiffel_parser.y"
				yy_do_action_704
			when 705 then
					--|#line 3560 "et_eiffel_parser.y"
				yy_do_action_705
			when 706 then
					--|#line 3562 "et_eiffel_parser.y"
				yy_do_action_706
			when 707 then
					--|#line 3569 "et_eiffel_parser.y"
				yy_do_action_707
			when 708 then
					--|#line 3571 "et_eiffel_parser.y"
				yy_do_action_708
			when 709 then
					--|#line 3577 "et_eiffel_parser.y"
				yy_do_action_709
			when 710 then
					--|#line 3579 "et_eiffel_parser.y"
				yy_do_action_710
			when 711 then
					--|#line 3583 "et_eiffel_parser.y"
				yy_do_action_711
			when 712 then
					--|#line 3585 "et_eiffel_parser.y"
				yy_do_action_712
			when 713 then
					--|#line 3587 "et_eiffel_parser.y"
				yy_do_action_713
			when 714 then
					--|#line 3589 "et_eiffel_parser.y"
				yy_do_action_714
			when 715 then
					--|#line 3591 "et_eiffel_parser.y"
				yy_do_action_715
			when 716 then
					--|#line 3593 "et_eiffel_parser.y"
				yy_do_action_716
			when 717 then
					--|#line 3595 "et_eiffel_parser.y"
				yy_do_action_717
			when 718 then
					--|#line 3597 "et_eiffel_parser.y"
				yy_do_action_718
			when 719 then
					--|#line 3599 "et_eiffel_parser.y"
				yy_do_action_719
			when 720 then
					--|#line 3601 "et_eiffel_parser.y"
				yy_do_action_720
			when 721 then
					--|#line 3603 "et_eiffel_parser.y"
				yy_do_action_721
			when 722 then
					--|#line 3605 "et_eiffel_parser.y"
				yy_do_action_722
			when 723 then
					--|#line 3607 "et_eiffel_parser.y"
				yy_do_action_723
			when 724 then
					--|#line 3609 "et_eiffel_parser.y"
				yy_do_action_724
			when 725 then
					--|#line 3611 "et_eiffel_parser.y"
				yy_do_action_725
			when 726 then
					--|#line 3613 "et_eiffel_parser.y"
				yy_do_action_726
			when 727 then
					--|#line 3615 "et_eiffel_parser.y"
				yy_do_action_727
			when 728 then
					--|#line 3617 "et_eiffel_parser.y"
				yy_do_action_728
			when 729 then
					--|#line 3619 "et_eiffel_parser.y"
				yy_do_action_729
			when 730 then
					--|#line 3621 "et_eiffel_parser.y"
				yy_do_action_730
			when 731 then
					--|#line 3623 "et_eiffel_parser.y"
				yy_do_action_731
			when 732 then
					--|#line 3625 "et_eiffel_parser.y"
				yy_do_action_732
			when 733 then
					--|#line 3629 "et_eiffel_parser.y"
				yy_do_action_733
			when 734 then
					--|#line 3631 "et_eiffel_parser.y"
				yy_do_action_734
			when 735 then
					--|#line 3633 "et_eiffel_parser.y"
				yy_do_action_735
			when 736 then
					--|#line 3635 "et_eiffel_parser.y"
				yy_do_action_736
			when 737 then
					--|#line 3637 "et_eiffel_parser.y"
				yy_do_action_737
			when 738 then
					--|#line 3639 "et_eiffel_parser.y"
				yy_do_action_738
			when 739 then
					--|#line 3643 "et_eiffel_parser.y"
				yy_do_action_739
			when 740 then
					--|#line 3645 "et_eiffel_parser.y"
				yy_do_action_740
			when 741 then
					--|#line 3647 "et_eiffel_parser.y"
				yy_do_action_741
			when 742 then
					--|#line 3649 "et_eiffel_parser.y"
				yy_do_action_742
			when 743 then
					--|#line 3651 "et_eiffel_parser.y"
				yy_do_action_743
			when 744 then
					--|#line 3653 "et_eiffel_parser.y"
				yy_do_action_744
			when 745 then
					--|#line 3655 "et_eiffel_parser.y"
				yy_do_action_745
			when 746 then
					--|#line 3657 "et_eiffel_parser.y"
				yy_do_action_746
			when 747 then
					--|#line 3659 "et_eiffel_parser.y"
				yy_do_action_747
			when 748 then
					--|#line 3661 "et_eiffel_parser.y"
				yy_do_action_748
			when 749 then
					--|#line 3663 "et_eiffel_parser.y"
				yy_do_action_749
			when 750 then
					--|#line 3665 "et_eiffel_parser.y"
				yy_do_action_750
			when 751 then
					--|#line 3667 "et_eiffel_parser.y"
				yy_do_action_751
			when 752 then
					--|#line 3669 "et_eiffel_parser.y"
				yy_do_action_752
			when 753 then
					--|#line 3671 "et_eiffel_parser.y"
				yy_do_action_753
			when 754 then
					--|#line 3679 "et_eiffel_parser.y"
				yy_do_action_754
			when 755 then
					--|#line 3681 "et_eiffel_parser.y"
				yy_do_action_755
			when 756 then
					--|#line 3683 "et_eiffel_parser.y"
				yy_do_action_756
			when 757 then
					--|#line 3685 "et_eiffel_parser.y"
				yy_do_action_757
			when 758 then
					--|#line 3689 "et_eiffel_parser.y"
				yy_do_action_758
			when 759 then
					--|#line 3691 "et_eiffel_parser.y"
				yy_do_action_759
			when 760 then
					--|#line 3693 "et_eiffel_parser.y"
				yy_do_action_760
			when 761 then
					--|#line 3695 "et_eiffel_parser.y"
				yy_do_action_761
			when 762 then
					--|#line 3697 "et_eiffel_parser.y"
				yy_do_action_762
			when 763 then
					--|#line 3699 "et_eiffel_parser.y"
				yy_do_action_763
			when 764 then
					--|#line 3701 "et_eiffel_parser.y"
				yy_do_action_764
			when 765 then
					--|#line 3703 "et_eiffel_parser.y"
				yy_do_action_765
			when 766 then
					--|#line 3705 "et_eiffel_parser.y"
				yy_do_action_766
			when 767 then
					--|#line 3707 "et_eiffel_parser.y"
				yy_do_action_767
			when 768 then
					--|#line 3709 "et_eiffel_parser.y"
				yy_do_action_768
			when 769 then
					--|#line 3711 "et_eiffel_parser.y"
				yy_do_action_769
			when 770 then
					--|#line 3713 "et_eiffel_parser.y"
				yy_do_action_770
			when 771 then
					--|#line 3746 "et_eiffel_parser.y"
				yy_do_action_771
			when 772 then
					--|#line 3748 "et_eiffel_parser.y"
				yy_do_action_772
			when 773 then
					--|#line 3750 "et_eiffel_parser.y"
				yy_do_action_773
			when 774 then
					--|#line 3754 "et_eiffel_parser.y"
				yy_do_action_774
			when 775 then
					--|#line 3756 "et_eiffel_parser.y"
				yy_do_action_775
			when 776 then
					--|#line 3758 "et_eiffel_parser.y"
				yy_do_action_776
			when 777 then
					--|#line 3766 "et_eiffel_parser.y"
				yy_do_action_777
			when 778 then
					--|#line 3770 "et_eiffel_parser.y"
				yy_do_action_778
			when 779 then
					--|#line 3772 "et_eiffel_parser.y"
				yy_do_action_779
			when 780 then
					--|#line 3776 "et_eiffel_parser.y"
				yy_do_action_780
			when 781 then
					--|#line 3776 "et_eiffel_parser.y"
				yy_do_action_781
			when 782 then
					--|#line 3787 "et_eiffel_parser.y"
				yy_do_action_782
			when 783 then
					--|#line 3787 "et_eiffel_parser.y"
				yy_do_action_783
			when 784 then
					--|#line 3800 "et_eiffel_parser.y"
				yy_do_action_784
			when 785 then
					--|#line 3800 "et_eiffel_parser.y"
				yy_do_action_785
			when 786 then
					--|#line 3811 "et_eiffel_parser.y"
				yy_do_action_786
			when 787 then
					--|#line 3811 "et_eiffel_parser.y"
				yy_do_action_787
			when 788 then
					--|#line 3824 "et_eiffel_parser.y"
				yy_do_action_788
			when 789 then
					--|#line 3835 "et_eiffel_parser.y"
				yy_do_action_789
			when 790 then
					--|#line 3843 "et_eiffel_parser.y"
				yy_do_action_790
			when 791 then
					--|#line 3852 "et_eiffel_parser.y"
				yy_do_action_791
			when 792 then
					--|#line 3860 "et_eiffel_parser.y"
				yy_do_action_792
			when 793 then
					--|#line 3862 "et_eiffel_parser.y"
				yy_do_action_793
			when 794 then
					--|#line 3862 "et_eiffel_parser.y"
				yy_do_action_794
			when 795 then
					--|#line 3875 "et_eiffel_parser.y"
				yy_do_action_795
			when 796 then
					--|#line 3884 "et_eiffel_parser.y"
				yy_do_action_796
			when 797 then
					--|#line 3895 "et_eiffel_parser.y"
				yy_do_action_797
			when 798 then
					--|#line 3903 "et_eiffel_parser.y"
				yy_do_action_798
			when 799 then
					--|#line 3912 "et_eiffel_parser.y"
				yy_do_action_799
			when 800 then
					--|#line 3914 "et_eiffel_parser.y"
				yy_do_action_800
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_801_1000 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 801 then
					--|#line 3914 "et_eiffel_parser.y"
				yy_do_action_801
			when 802 then
					--|#line 3927 "et_eiffel_parser.y"
				yy_do_action_802
			when 803 then
					--|#line 3938 "et_eiffel_parser.y"
				yy_do_action_803
			when 804 then
					--|#line 3946 "et_eiffel_parser.y"
				yy_do_action_804
			when 805 then
					--|#line 3955 "et_eiffel_parser.y"
				yy_do_action_805
			when 806 then
					--|#line 3957 "et_eiffel_parser.y"
				yy_do_action_806
			when 807 then
					--|#line 3957 "et_eiffel_parser.y"
				yy_do_action_807
			when 808 then
					--|#line 3972 "et_eiffel_parser.y"
				yy_do_action_808
			when 809 then
					--|#line 3983 "et_eiffel_parser.y"
				yy_do_action_809
			when 810 then
					--|#line 3991 "et_eiffel_parser.y"
				yy_do_action_810
			when 811 then
					--|#line 4000 "et_eiffel_parser.y"
				yy_do_action_811
			when 812 then
					--|#line 4002 "et_eiffel_parser.y"
				yy_do_action_812
			when 813 then
					--|#line 4004 "et_eiffel_parser.y"
				yy_do_action_813
			when 814 then
					--|#line 4006 "et_eiffel_parser.y"
				yy_do_action_814
			when 815 then
					--|#line 4008 "et_eiffel_parser.y"
				yy_do_action_815
			when 816 then
					--|#line 4012 "et_eiffel_parser.y"
				yy_do_action_816
			when 817 then
					--|#line 4016 "et_eiffel_parser.y"
				yy_do_action_817
			when 818 then
					--|#line 4020 "et_eiffel_parser.y"
				yy_do_action_818
			when 819 then
					--|#line 4022 "et_eiffel_parser.y"
				yy_do_action_819
			when 820 then
					--|#line 4028 "et_eiffel_parser.y"
				yy_do_action_820
			when 821 then
					--|#line 4030 "et_eiffel_parser.y"
				yy_do_action_821
			when 822 then
					--|#line 4034 "et_eiffel_parser.y"
				yy_do_action_822
			when 823 then
					--|#line 4041 "et_eiffel_parser.y"
				yy_do_action_823
			when 824 then
					--|#line 4051 "et_eiffel_parser.y"
				yy_do_action_824
			when 825 then
					--|#line 4057 "et_eiffel_parser.y"
				yy_do_action_825
			when 826 then
					--|#line 4063 "et_eiffel_parser.y"
				yy_do_action_826
			when 827 then
					--|#line 4069 "et_eiffel_parser.y"
				yy_do_action_827
			when 828 then
					--|#line 4075 "et_eiffel_parser.y"
				yy_do_action_828
			when 829 then
					--|#line 4081 "et_eiffel_parser.y"
				yy_do_action_829
			when 830 then
					--|#line 4087 "et_eiffel_parser.y"
				yy_do_action_830
			when 831 then
					--|#line 4093 "et_eiffel_parser.y"
				yy_do_action_831
			when 832 then
					--|#line 4099 "et_eiffel_parser.y"
				yy_do_action_832
			when 833 then
					--|#line 4104 "et_eiffel_parser.y"
				yy_do_action_833
			when 834 then
					--|#line 4110 "et_eiffel_parser.y"
				yy_do_action_834
			when 835 then
					--|#line 4118 "et_eiffel_parser.y"
				yy_do_action_835
			when 836 then
					--|#line 4125 "et_eiffel_parser.y"
				yy_do_action_836
			when 837 then
					--|#line 4129 "et_eiffel_parser.y"
				yy_do_action_837
			when 838 then
					--|#line 4131 "et_eiffel_parser.y"
				yy_do_action_838
			when 839 then
					--|#line 4133 "et_eiffel_parser.y"
				yy_do_action_839
			when 840 then
					--|#line 4135 "et_eiffel_parser.y"
				yy_do_action_840
			when 841 then
					--|#line 4137 "et_eiffel_parser.y"
				yy_do_action_841
			when 842 then
					--|#line 4141 "et_eiffel_parser.y"
				yy_do_action_842
			when 843 then
					--|#line 4143 "et_eiffel_parser.y"
				yy_do_action_843
			when 844 then
					--|#line 4145 "et_eiffel_parser.y"
				yy_do_action_844
			when 845 then
					--|#line 4145 "et_eiffel_parser.y"
				yy_do_action_845
			when 846 then
					--|#line 4158 "et_eiffel_parser.y"
				yy_do_action_846
			when 847 then
					--|#line 4169 "et_eiffel_parser.y"
				yy_do_action_847
			when 848 then
					--|#line 4177 "et_eiffel_parser.y"
				yy_do_action_848
			when 849 then
					--|#line 4186 "et_eiffel_parser.y"
				yy_do_action_849
			when 850 then
					--|#line 4195 "et_eiffel_parser.y"
				yy_do_action_850
			when 851 then
					--|#line 4197 "et_eiffel_parser.y"
				yy_do_action_851
			when 852 then
					--|#line 4199 "et_eiffel_parser.y"
				yy_do_action_852
			when 853 then
					--|#line 4205 "et_eiffel_parser.y"
				yy_do_action_853
			when 854 then
					--|#line 4207 "et_eiffel_parser.y"
				yy_do_action_854
			when 855 then
					--|#line 4211 "et_eiffel_parser.y"
				yy_do_action_855
			when 856 then
					--|#line 4213 "et_eiffel_parser.y"
				yy_do_action_856
			when 857 then
					--|#line 4215 "et_eiffel_parser.y"
				yy_do_action_857
			when 858 then
					--|#line 4217 "et_eiffel_parser.y"
				yy_do_action_858
			when 859 then
					--|#line 4219 "et_eiffel_parser.y"
				yy_do_action_859
			when 860 then
					--|#line 4221 "et_eiffel_parser.y"
				yy_do_action_860
			when 861 then
					--|#line 4223 "et_eiffel_parser.y"
				yy_do_action_861
			when 862 then
					--|#line 4225 "et_eiffel_parser.y"
				yy_do_action_862
			when 863 then
					--|#line 4227 "et_eiffel_parser.y"
				yy_do_action_863
			when 864 then
					--|#line 4229 "et_eiffel_parser.y"
				yy_do_action_864
			when 865 then
					--|#line 4231 "et_eiffel_parser.y"
				yy_do_action_865
			when 866 then
					--|#line 4233 "et_eiffel_parser.y"
				yy_do_action_866
			when 867 then
					--|#line 4235 "et_eiffel_parser.y"
				yy_do_action_867
			when 868 then
					--|#line 4237 "et_eiffel_parser.y"
				yy_do_action_868
			when 869 then
					--|#line 4239 "et_eiffel_parser.y"
				yy_do_action_869
			when 870 then
					--|#line 4241 "et_eiffel_parser.y"
				yy_do_action_870
			when 871 then
					--|#line 4243 "et_eiffel_parser.y"
				yy_do_action_871
			when 872 then
					--|#line 4245 "et_eiffel_parser.y"
				yy_do_action_872
			when 873 then
					--|#line 4247 "et_eiffel_parser.y"
				yy_do_action_873
			when 874 then
					--|#line 4249 "et_eiffel_parser.y"
				yy_do_action_874
			when 875 then
					--|#line 4251 "et_eiffel_parser.y"
				yy_do_action_875
			when 876 then
					--|#line 4253 "et_eiffel_parser.y"
				yy_do_action_876
			when 877 then
					--|#line 4255 "et_eiffel_parser.y"
				yy_do_action_877
			when 878 then
					--|#line 4257 "et_eiffel_parser.y"
				yy_do_action_878
			when 879 then
					--|#line 4261 "et_eiffel_parser.y"
				yy_do_action_879
			when 880 then
					--|#line 4270 "et_eiffel_parser.y"
				yy_do_action_880
			when 881 then
					--|#line 4272 "et_eiffel_parser.y"
				yy_do_action_881
			when 882 then
					--|#line 4276 "et_eiffel_parser.y"
				yy_do_action_882
			when 883 then
					--|#line 4278 "et_eiffel_parser.y"
				yy_do_action_883
			when 884 then
					--|#line 4282 "et_eiffel_parser.y"
				yy_do_action_884
			when 885 then
					--|#line 4291 "et_eiffel_parser.y"
				yy_do_action_885
			when 886 then
					--|#line 4293 "et_eiffel_parser.y"
				yy_do_action_886
			when 887 then
					--|#line 4297 "et_eiffel_parser.y"
				yy_do_action_887
			when 888 then
					--|#line 4299 "et_eiffel_parser.y"
				yy_do_action_888
			when 889 then
					--|#line 4303 "et_eiffel_parser.y"
				yy_do_action_889
			when 890 then
					--|#line 4305 "et_eiffel_parser.y"
				yy_do_action_890
			when 891 then
					--|#line 4309 "et_eiffel_parser.y"
				yy_do_action_891
			when 892 then
					--|#line 4316 "et_eiffel_parser.y"
				yy_do_action_892
			when 893 then
					--|#line 4325 "et_eiffel_parser.y"
				yy_do_action_893
			when 894 then
					--|#line 4334 "et_eiffel_parser.y"
				yy_do_action_894
			when 895 then
					--|#line 4336 "et_eiffel_parser.y"
				yy_do_action_895
			when 896 then
					--|#line 4340 "et_eiffel_parser.y"
				yy_do_action_896
			when 897 then
					--|#line 4342 "et_eiffel_parser.y"
				yy_do_action_897
			when 898 then
					--|#line 4346 "et_eiffel_parser.y"
				yy_do_action_898
			when 899 then
					--|#line 4353 "et_eiffel_parser.y"
				yy_do_action_899
			when 900 then
					--|#line 4362 "et_eiffel_parser.y"
				yy_do_action_900
			when 901 then
					--|#line 4371 "et_eiffel_parser.y"
				yy_do_action_901
			when 902 then
					--|#line 4373 "et_eiffel_parser.y"
				yy_do_action_902
			when 903 then
					--|#line 4375 "et_eiffel_parser.y"
				yy_do_action_903
			when 904 then
					--|#line 4381 "et_eiffel_parser.y"
				yy_do_action_904
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_1
			--|#line 240 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 240 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 240")
end

			-- END
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp43 := yyvsp43 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_2
			--|#line 244 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 244 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 244")
end

			if attached yyvs43.item (yyvsp43) as l_class_declaration then
				l_class_declaration.set_leading_break (yyvs8.item (yyvsp8))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp8 := yyvsp8 -1
	yyvsp43 := yyvsp43 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_3
			--|#line 252 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 252 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 252")
end

			yyval43 := yyvs43.item (yyvsp43)
			if yyval43 /= Void then
				yyval43.set_first_indexing (yyvs85.item (yyvsp85))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp85 := yyvsp85 -1
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_4
			--|#line 261 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 261 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 261")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_5
			--|#line 262 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 262 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 262")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp43 := yyvsp43 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_6
			--|#line 262 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 262 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 262")
end

			if not system_processor.preparse_multiple_mode then
					-- Raise syntax error: it is not valid to have more
					-- than one class text in the same file.
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_7
			--|#line 273 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 273 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 273")
end

			yyval43 := yyvs43.item (yyvsp43)
			set_class_to_end (yyval43, yyvs104.item (yyvsp104), yyvs107.item (yyvsp107), yyvs60.item (yyvsp60), yyvs56.item (yyvsp56), yyvs73.item (yyvsp73), yyvs93.item (yyvsp93), yyvs85.item (yyvsp85), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp82 := yyvsp82 -1
	yyvsp104 := yyvsp104 -1
	yyvsp107 := yyvsp107 -1
	yyvsp60 := yyvsp60 -1
	yyvsp56 := yyvsp56 -1
	yyvsp73 := yyvsp73 -1
	yyvsp93 := yyvsp93 -1
	yyvsp85 := yyvsp85 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_8
			--|#line 281 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 281 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 281")
end

set_class_providers 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_9
			--|#line 286 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 286")
end

yyval85 := ast_factory.new_indexings (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp85 := yyvsp85 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_10
			--|#line 288 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 288 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 288")
end

			yyval85 := yyvs85.item (yyvsp85)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_11
			--|#line 288 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 288 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 288")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_12
			--|#line 299 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 299 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 299")
end

yyval85 := ast_factory.new_indexings (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp85 := yyvsp85 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_13
			--|#line 301 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 301 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 301")
end

			yyval85 := yyvs85.item (yyvsp85)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_14
			--|#line 301 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 301 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 301")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_15
			--|#line 314 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 314 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 314")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_16
			--|#line 316 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 316 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 316")
end

yyval85 := yyvs85.item (yyvsp85) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_17
			--|#line 320 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 320 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 320")
end

			if attached yyvs86.item (yyvsp86) as l_note then
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval85 /= Void then
					yyval85.put_first (l_note)
				end
			else
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp85 := yyvsp85 + 1
	yyvsp86 := yyvsp86 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_18
			--|#line 331 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 331 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 331")
end

			yyval85 := yyvs85.item (yyvsp85)
			if yyval85 /= Void and attached yyvs86.item (yyvsp86) as l_note then
				yyval85.put_first (l_note)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp86 := yyvsp86 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_19
			--|#line 331 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 331 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 331")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_20
			--|#line 340 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 340 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 340")
end

			yyval85 := yyvs85.item (yyvsp85)
			if yyval85 /= Void and attached yyvs86.item (yyvsp86) as l_note then
				yyval85.put_first (l_note)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp86 := yyvsp86 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_21
			--|#line 340 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 340 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 340")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_22
			--|#line 351 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 351 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 351")
end

			yyval86 := yyvs86.item (yyvsp86)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_23
			--|#line 358 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 358 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 358")
end

			yyval86 := ast_factory.new_tagged_indexing (ast_factory.new_tag (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyvs89.item (yyvsp89))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp86 := yyvsp86 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp89 := yyvsp89 -1
	if yyvsp86 >= yyvsc86 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs86")
		end
		yyvsc86 := yyvsc86 + yyInitial_yyvs_size
		yyvs86 := yyspecial_routines86.aliased_resized_area (yyvs86, yyvsc86)
	end
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_24
			--|#line 364 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 364 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 364")
end

yyval86 := ast_factory.new_indexing_semicolon (yyvs86.item (yyvsp86), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp21 := yyvsp21 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_25
			--|#line 368 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 368 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 368")
end

			if attached yyvs86.item (yyvsp86) as l_indexing_clause then
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval85 /= Void then
					yyval85.put_first (l_indexing_clause)
				end
			else
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp85 := yyvsp85 + 1
	yyvsp86 := yyvsp86 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_26
			--|#line 379 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 379 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 379")
end

			if attached yyvs86.item (yyvsp86) as l_indexing_clause then
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval85 /= Void then
					yyval85.put_first (l_indexing_clause)
				end
			else
				yyval85 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp85 := yyvsp85 + 1
	yyvsp86 := yyvsp86 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_27
			--|#line 391 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 391 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 391")
end

			yyval85 := yyvs85.item (yyvsp85)
			if yyval85 /= Void and attached yyvs86.item (yyvsp86) as l_indexing_clause then
				yyval85.put_first (l_indexing_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp86 := yyvsp86 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_28
			--|#line 391 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 391 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 391")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_29
			--|#line 400 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 400")
end

			yyval85 := yyvs85.item (yyvsp85)
			if yyval85 /= Void and attached yyvs86.item (yyvsp86) as l_indexing_clause then
				yyval85.put_first (l_indexing_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp85 := yyvsp85 -1
	yyvsp86 := yyvsp86 -1
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_30
			--|#line 400 "et_eiffel_parser.y"
		local
			yyval85: detachable ET_INDEXING_LIST
		do
--|#line 400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 400")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp85 := yyvsp85 + 1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_31
			--|#line 411 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 411 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 411")
end

			yyval86 := yyvs86.item (yyvsp86)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_32
			--|#line 418 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 418 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 418")
end

			yyval86 := ast_factory.new_indexing (yyvs89.item (yyvsp89))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp86 := yyvsp86 + 1
	yyvsp89 := yyvsp89 -1
	if yyvsp86 >= yyvsc86 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs86")
		end
		yyvsc86 := yyvsc86 + yyInitial_yyvs_size
		yyvs86 := yyspecial_routines86.aliased_resized_area (yyvs86, yyvsc86)
	end
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_33
			--|#line 422 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 422 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 422")
end

			yyval86 := ast_factory.new_tagged_indexing (ast_factory.new_tag (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyvs89.item (yyvsp89))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp86 := yyvsp86 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp89 := yyvsp89 -1
	if yyvsp86 >= yyvsc86 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs86")
		end
		yyvsc86 := yyvsc86 + yyInitial_yyvs_size
		yyvs86 := yyspecial_routines86.aliased_resized_area (yyvs86, yyvsc86)
	end
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_34
			--|#line 428 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 428 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 428")
end

yyval86 := ast_factory.new_indexing_semicolon (yyvs86.item (yyvsp86), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp21 := yyvsp21 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_35
			--|#line 430 "et_eiffel_parser.y"
		local
			yyval86: detachable ET_INDEXING_ITEM
		do
--|#line 430 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 430")
end

yyval86 := ast_factory.new_indexing_semicolon (yyvs86.item (yyvsp86), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp21 := yyvsp21 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_36
			--|#line 435 "et_eiffel_parser.y"
		local
			yyval89: detachable ET_INDEXING_TERM_LIST
		do
--|#line 435 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 435")
end

			if attached yyvs87.item (yyvsp87) as l_index_value then
				yyval89 := ast_factory.new_indexing_terms (counter_value + 1)
				if yyval89 /= Void then
					yyval89.put_first (l_index_value)
				end
			else
				yyval89 := ast_factory.new_indexing_terms (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp87 := yyvsp87 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_37
			--|#line 446 "et_eiffel_parser.y"
		local
			yyval89: detachable ET_INDEXING_TERM_LIST
		do
--|#line 446 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 446")
end

			yyval89 := yyvs89.item (yyvsp89)
			if yyval89 /= Void and attached yyvs88.item (yyvsp88) as l_index_value then
				yyval89.put_first (l_index_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp88 := yyvsp88 -1
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_38
			--|#line 455 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 455 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 455")
end

yyval87 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_39
			--|#line 457 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 457 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 457")
end

yyval87 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_40
			--|#line 459 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 459 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 459")
end

yyval87 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_41
			--|#line 461 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 461 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 461")
end

yyval87 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_42
			--|#line 463 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 463 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 463")
end

yyval87 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_43
			--|#line 465 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 465 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 465")
end

yyval87 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp87 := yyvsp87 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_44
			--|#line 467 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 467 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 467")
end

yyval87 := ast_factory.new_custom_attribute (yyvs57.item (yyvsp57), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp87 := yyvsp87 + 1
	yyvsp57 := yyvsp57 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_45
			--|#line 469 "et_eiffel_parser.y"
		local
			yyval87: detachable ET_INDEXING_TERM
		do
--|#line 469 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 469")
end

yyval87 := ast_factory.new_custom_attribute (yyvs57.item (yyvsp57), yyvs103.item (yyvsp103), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp87 := yyvsp87 + 1
	yyvsp57 := yyvsp57 -1
	yyvsp103 := yyvsp103 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_46
			--|#line 473 "et_eiffel_parser.y"
		local
			yyval88: detachable ET_INDEXING_TERM_ITEM
		do
--|#line 473 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 473")
end

			yyval88 := ast_factory.new_indexing_term_comma (yyvs87.item (yyvsp87), yyvs5.item (yyvsp5))
			if yyval88 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp88 := yyvsp88 + 1
	yyvsp87 := yyvsp87 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp88 >= yyvsc88 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs88")
		end
		yyvsc88 := yyvsc88 + yyInitial_yyvs_size
		yyvs88 := yyspecial_routines88.aliased_resized_area (yyvs88, yyvsc88)
	end
	yyspecial_routines88.force (yyvs88, yyval88, yyvsp88)
end
		end

	yy_do_action_47
			--|#line 484 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 484 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 484")
end

			yyval43 := new_class (yyvs12.item (yyvsp12))
			if yyval43 /= Void then
				if attached yyvs2.item (yyvsp2) as l_class_keyword then
					yyval43.set_class_keyword (l_class_keyword)
				end
				yyval43.set_frozen_keyword (yyvs2.item (yyvsp2 - 2))
				yyval43.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval43
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp43 := yyvsp43 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp12 := yyvsp12 -1
	if yyvsp43 >= yyvsc43 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs43")
		end
		yyvsc43 := yyvsc43 + yyInitial_yyvs_size
		yyvs43 := yyspecial_routines43.aliased_resized_area (yyvs43, yyvsc43)
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_48
			--|#line 496 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 496 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 496")
end

			yyval43 := new_class (yyvs12.item (yyvsp12))
			if yyval43 /= Void then
				if attached yyvs2.item (yyvsp2) as l_class_keyword then
					yyval43.set_class_keyword (l_class_keyword)
				end
				yyval43.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval43.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval43.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval43
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp12 := yyvsp12 -1
	if yyvsp43 >= yyvsc43 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs43")
		end
		yyvsc43 := yyvsc43 + yyInitial_yyvs_size
		yyvs43 := yyspecial_routines43.aliased_resized_area (yyvs43, yyvsc43)
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_49
			--|#line 509 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 509 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 509")
end

			yyval43 := new_class (yyvs12.item (yyvsp12))
			if yyval43 /= Void then
				if attached yyvs2.item (yyvsp2) as l_class_keyword then
					yyval43.set_class_keyword (l_class_keyword)
				end
				yyval43.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval43.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval43.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval43
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp12 := yyvsp12 -1
	if yyvsp43 >= yyvsc43 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs43")
		end
		yyvsc43 := yyvsc43 + yyInitial_yyvs_size
		yyvs43 := yyspecial_routines43.aliased_resized_area (yyvs43, yyvsc43)
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_50
			--|#line 522 "et_eiffel_parser.y"
		local
			yyval43: detachable ET_CLASS
		do
--|#line 522 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 522")
end

			yyval43 := new_class (yyvs12.item (yyvsp12))
			if yyval43 /= Void then
				if attached yyvs2.item (yyvsp2) as l_class_keyword then
					yyval43.set_class_keyword (l_class_keyword)
				end
				yyval43.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval43.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval43.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval43
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp12 := yyvsp12 -1
	if yyvsp43 >= yyvsc43 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs43")
		end
		yyvsc43 := yyvsc43 + yyInitial_yyvs_size
		yyvs43 := yyspecial_routines43.aliased_resized_area (yyvs43, yyvsc43)
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_51
			--|#line 537 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 537 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 537")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_52
			--|#line 539 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 539 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 539")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_53
			--|#line 543 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 543 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 543")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_54
			--|#line 545 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 545 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 545")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_55
			--|#line 551 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 551 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 551")
end

			set_formal_parameters (Void)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_56
			--|#line 555 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 555 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 555")
end

			yyval82 := ast_factory.new_formal_parameters (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0)
			set_formal_parameters (yyval82)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp82 := yyvsp82 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_57
			--|#line 561 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 561 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 561")
end

			yyval82 := yyvs82.item (yyvsp82)
			set_formal_parameters (yyval82)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp22 := yyvsp22 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_58
			--|#line 561 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 561 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 561")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_59
			--|#line 575 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 575 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 575")
end

			if attached yyvs80.item (yyvsp80) as l_formal_parameter then
				yyval82 := ast_factory.new_formal_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval82 /= Void then
					yyval82.put_first (l_formal_parameter)
				end
			else
				yyval82 := ast_factory.new_formal_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp82 := yyvsp82 + 1
	yyvsp80 := yyvsp80 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_60
			--|#line 586 "et_eiffel_parser.y"
		local
			yyval82: detachable ET_FORMAL_PARAMETER_LIST
		do
--|#line 586 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 586")
end

			yyval82 := yyvs82.item (yyvsp82)
			if yyval82 /= Void and attached yyvs81.item (yyvsp81) as l_formal_parameter then
				yyval82.put_first (l_formal_parameter)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp81 := yyvsp81 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_61
			--|#line 595 "et_eiffel_parser.y"
		local
			yyval81: detachable ET_FORMAL_PARAMETER_ITEM
		do
--|#line 595 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 595")
end

			yyval81 := ast_factory.new_formal_parameter_comma (yyvs80.item (yyvsp80), yyvs5.item (yyvsp5))
			if yyval81 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp81 := yyvsp81 + 1
	yyvsp80 := yyvsp80 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp81 >= yyvsc81 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs81")
		end
		yyvsc81 := yyvsc81 + yyInitial_yyvs_size
		yyvs81 := yyspecial_routines81.aliased_resized_area (yyvs81, yyvsc81)
	end
	yyspecial_routines81.force (yyvs81, yyval81, yyvsp81)
end
		end

	yy_do_action_62
			--|#line 604 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 604 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 604")
end

yyval80 := ast_factory.new_formal_parameter (Void, yyvs12.item (yyvsp12), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp80 := yyvsp80 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_63
			--|#line 606 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 606 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 606")
end

yyval80 := ast_factory.new_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_64
			--|#line 608 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 608 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 608")
end

yyval80 := ast_factory.new_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_65
			--|#line 610 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 610 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 610")
end

yyval80 := ast_factory.new_constrained_formal_parameter (Void, yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs120.item (yyvsp120), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp80 := yyvsp80 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp120 := yyvsp120 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_66
			--|#line 612 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 612 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 612")
end

yyval80 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs120.item (yyvsp120), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp120 := yyvsp120 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_67
			--|#line 614 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 614 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 614")
end

yyval80 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs120.item (yyvsp120), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp120 := yyvsp120 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_68
			--|#line 616 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 616 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 616")
end

yyval80 := ast_factory.new_constrained_formal_parameter (Void, yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs122.item (yyvsp122), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp80 := yyvsp80 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp122 := yyvsp122 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_69
			--|#line 618 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 618 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 618")
end

yyval80 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs122.item (yyvsp122), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp122 := yyvsp122 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_70
			--|#line 620 "et_eiffel_parser.y"
		local
			yyval80: detachable ET_FORMAL_PARAMETER
		do
--|#line 620 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 620")
end

yyval80 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs122.item (yyvsp122), yyvs51.item (yyvsp51), last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp80 := yyvsp80 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp122 := yyvsp122 -1
	yyvsp51 := yyvsp51 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_71
			--|#line 624 "et_eiffel_parser.y"
		local
			yyval120: detachable ET_TYPE_CONSTRAINT
		do
--|#line 624 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 624")
end

			yyval120 := dummy_constraint (yyvs53.item (yyvsp53))
			if yyval120 /= Void then
				register_constraint (yyvs53.item (yyvsp53))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp120 := yyvsp120 + 1
	yyvsp53 := yyvsp53 -1
	if yyvsp120 >= yyvsc120 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs120")
		end
		yyvsc120 := yyvsc120 + yyInitial_yyvs_size
		yyvs120 := yyspecial_routines120.aliased_resized_area (yyvs120, yyvsc120)
	end
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_72
			--|#line 631 "et_eiffel_parser.y"
		local
			yyval120: detachable ET_TYPE_CONSTRAINT
		do
--|#line 631 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 631")
end

			yyval120 := ast_factory.new_type_rename_constraint (dummy_constraint (yyvs53.item (yyvsp53)), yyvs52.item (yyvsp52))
			if yyval120 /= Void then
				register_constraint (yyvs53.item (yyvsp53))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp120 := yyvsp120 + 1
	yyvsp53 := yyvsp53 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp120 >= yyvsc120 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs120")
		end
		yyvsc120 := yyvsc120 + yyInitial_yyvs_size
		yyvs120 := yyspecial_routines120.aliased_resized_area (yyvs120, yyvsc120)
	end
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_73
			--|#line 640 "et_eiffel_parser.y"
		local
			yyval122: detachable ET_TYPE_CONSTRAINT_LIST
		do
--|#line 640 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 640")
end

			yyval122 := yyvs122.item (yyvsp122)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp122 := yyvsp122 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines122.force (yyvs122, yyval122, yyvsp122)
end
		end

	yy_do_action_74
			--|#line 640 "et_eiffel_parser.y"
		local
			yyval122: detachable ET_TYPE_CONSTRAINT_LIST
		do
--|#line 640 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 640")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp122 := yyvsp122 + 1
	if yyvsp122 >= yyvsc122 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs122")
		end
		yyvsc122 := yyvsc122 + yyInitial_yyvs_size
		yyvs122 := yyspecial_routines122.aliased_resized_area (yyvs122, yyvsc122)
	end
	yyspecial_routines122.force (yyvs122, yyval122, yyvsp122)
end
		end

	yy_do_action_75
			--|#line 653 "et_eiffel_parser.y"
		local
			yyval122: detachable ET_TYPE_CONSTRAINT_LIST
		do
--|#line 653 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 653")
end

			if attached yyvs120.item (yyvsp120) as l_type_constraint then
				yyval122 := ast_factory.new_type_constraint_list (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval122 /= Void then
					yyval122.put_first (l_type_constraint)
				end
			else
				yyval122 := ast_factory.new_type_constraint_list (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp122 := yyvsp122 + 1
	yyvsp120 := yyvsp120 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp122 >= yyvsc122 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs122")
		end
		yyvsc122 := yyvsc122 + yyInitial_yyvs_size
		yyvs122 := yyspecial_routines122.aliased_resized_area (yyvs122, yyvsc122)
	end
	yyspecial_routines122.force (yyvs122, yyval122, yyvsp122)
end
		end

	yy_do_action_76
			--|#line 664 "et_eiffel_parser.y"
		local
			yyval122: detachable ET_TYPE_CONSTRAINT_LIST
		do
--|#line 664 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 664")
end

			yyval122 := yyvs122.item (yyvsp122)
			if yyval122 /= Void and attached yyvs121.item (yyvsp121) as l_type_constraint then
				yyval122.put_first (l_type_constraint)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp121 := yyvsp121 -1
	yyspecial_routines122.force (yyvs122, yyval122, yyvsp122)
end
		end

	yy_do_action_77
			--|#line 673 "et_eiffel_parser.y"
		local
			yyval121: detachable ET_TYPE_CONSTRAINT_ITEM
		do
--|#line 673 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 673")
end

			yyval121 := ast_factory.new_type_constraint_comma (yyvs120.item (yyvsp120), yyvs5.item (yyvsp5))
			if yyval121 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp121 := yyvsp121 + 1
	yyvsp120 := yyvsp120 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp121 >= yyvsc121 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs121")
		end
		yyvsc121 := yyvsc121 + yyInitial_yyvs_size
		yyvs121 := yyspecial_routines121.aliased_resized_area (yyvs121, yyvsc121)
	end
	yyspecial_routines121.force (yyvs121, yyval121, yyvsp121)
end
		end

	yy_do_action_78
			--|#line 682 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 682 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 682")
end

yyval52 := ast_factory.new_constraint_renames (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_79
			--|#line 684 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 684 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 684")
end

			yyval52 := yyvs52.item (yyvsp52)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp52 := yyvsp52 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_80
			--|#line 684 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 684 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 684")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp52 := yyvsp52 + 1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_81
			--|#line 697 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 697 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 697")
end

			if attached yyvs115.item (yyvsp115) as l_rename then
				yyval52 := ast_factory.new_constraint_renames (last_keyword, yyvs2.item (yyvsp2), counter_value + 1)
				if yyval52 /= Void then
					yyval52.put_first (l_rename)
				end
			else
				yyval52 := ast_factory.new_constraint_renames (last_keyword, yyvs2.item (yyvsp2), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_82
			--|#line 708 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 708 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 708")
end

			yyval52 := ast_factory.new_constraint_renames (last_keyword, yyvs2.item (yyvsp2), counter_value)
			if yyval52 /= Void and attached yyvs115.item (yyvsp115) as l_rename then
				yyval52.put_first (l_rename)
			end
				-- TODO: syntax error.
			raise_error
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_83
			--|#line 717 "et_eiffel_parser.y"
		local
			yyval52: detachable ET_CONSTRAINT_RENAME_LIST
		do
--|#line 717 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 717")
end

			yyval52 := yyvs52.item (yyvsp52)
			if yyval52 /= Void and attached yyvs115.item (yyvsp115) as l_rename then
				yyval52.put_first (l_rename)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_84
			--|#line 726 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 726 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 726")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp51 := yyvsp51 + 1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_85
			--|#line 728 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 728 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 728")
end

yyval51 := yyvs51.item (yyvsp51) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_86
			--|#line 732 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 732 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 732")
end

yyval51 := ast_factory.new_constraint_creator (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_87
			--|#line 734 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 734 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 734")
end

			yyval51 := yyvs51.item (yyvsp51)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp51 := yyvsp51 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_88
			--|#line 734 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 734 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 734")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp51 := yyvsp51 + 1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_89
			--|#line 747 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 747 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 747")
end

			if attached yyvs12.item (yyvsp12) as l_identifier then
				l_identifier.set_feature_name (True)
				yyval51 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value + 1)
				if yyval51 /= Void then
					yyval51.put_first (l_identifier)
				end
			else
				yyval51 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_90
			--|#line 759 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 759 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 759")
end

			yyval51 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value)
			if yyval51 /= Void and attached yyvs76.item (yyvsp76) as l_creation_procedure then
				yyval51.put_first (l_creation_procedure)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 + 1
	yyvsp76 := yyvsp76 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_91
			--|#line 767 "et_eiffel_parser.y"
		local
			yyval51: detachable ET_CONSTRAINT_CREATOR
		do
--|#line 767 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 767")
end

			yyval51 := yyvs51.item (yyvsp51)
			if yyval51 /= Void and attached yyvs76.item (yyvsp76) as l_creation_procedure then
				yyval51.put_first (l_creation_procedure)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_92
			--|#line 776 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 776 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 776")
end

yyval53 := new_constraint_named_type (Void, yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_93
			--|#line 778 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 778 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 778")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_94
			--|#line 780 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 780 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 780")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_95
			--|#line 782 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 782 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 782")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_96
			--|#line 784 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 784 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 784")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_97
			--|#line 786 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 786 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 786")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_98
			--|#line 788 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 788 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 788")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_99
			--|#line 790 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 790 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 790")
end

yyval53 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_100
			--|#line 792 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 792 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 792")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_101
			--|#line 794 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 794 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 794")
end

yyval53 := new_constraint_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_102
			--|#line 796 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 796 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 796")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_103
			--|#line 798 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 798 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 798")
end

yyval53 := yyvs95.item (yyvsp95) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp53 := yyvsp53 + 1
	yyvsp95 := yyvsp95 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_104
			--|#line 800 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 800 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 800")
end

yyval53 := new_constraint_named_type (Void, yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_105
			--|#line 802 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 802 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 802")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_106
			--|#line 804 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 804 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 804")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_107
			--|#line 806 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 806 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 806")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_108
			--|#line 808 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 808 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 808")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_109
			--|#line 810 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 810 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 810")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_110
			--|#line 812 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 812 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 812")
end

yyval53 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_111
			--|#line 814 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 814 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 814")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_112
			--|#line 816 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 816 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 816")
end

yyval53 := new_constraint_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_113
			--|#line 818 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 818 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 818")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_114
			--|#line 822 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 822 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 822")
end

yyval53 := new_constraint_named_type (Void, yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_115
			--|#line 824 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 824 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 824")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_116
			--|#line 826 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 826 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 826")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_117
			--|#line 828 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 828 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 828")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_118
			--|#line 830 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 830 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 830")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_119
			--|#line 832 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 832 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 832")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_120
			--|#line 834 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 834 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 834")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_121
			--|#line 836 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 836 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 836")
end

yyval53 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_122
			--|#line 838 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 838 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 838")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_123
			--|#line 840 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 840 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 840")
end

yyval53 := new_constraint_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_124
			--|#line 842 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 842 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 842")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_125
			--|#line 844 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 844 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 844")
end

yyval53 := yyvs95.item (yyvsp95) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp53 := yyvsp53 + 1
	yyvsp95 := yyvsp95 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_126
			--|#line 846 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 846 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 846")
end

yyval53 := new_constraint_named_type (Void, yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_127
			--|#line 848 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 848 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 848")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_128
			--|#line 850 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 850 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 850")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_129
			--|#line 852 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 852 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 852")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_130
			--|#line 854 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 854 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 854")
end

yyval53 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_131
			--|#line 856 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 856 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 856")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_132
			--|#line 858 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 858 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 858")
end

yyval53 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_133
			--|#line 860 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 860 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 860")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_134
			--|#line 862 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 862 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 862")
end

yyval53 := new_constraint_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_135
			--|#line 864 "et_eiffel_parser.y"
		local
			yyval53: detachable ET_CONSTRAINT_TYPE
		do
--|#line 864 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 864")
end

yyval53 := new_constraint_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs50.item (yyvsp50)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp50 := yyvsp50 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_136
			--|#line 868 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 868 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 868")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp50 := yyvsp50 + 1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_137
			--|#line 870 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 870 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 870")
end

yyval50 := yyvs50.item (yyvsp50) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_138
			--|#line 874 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 874 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 874")
end

yyval50 := ast_factory.new_constraint_actual_parameters (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp50 := yyvsp50 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_139
			--|#line 877 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 877 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 877")
end

			yyval50 := yyvs50.item (yyvsp50)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_140
			--|#line 885 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 885 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 885")
end

			if attached yyvs53.item (yyvsp53) as l_constraint_type then
				yyval50 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval50 /= Void then
					yyval50.put_first (l_constraint_type)
				end
			else
				yyval50 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp50 := yyvsp50 + 1
	yyvsp53 := yyvsp53 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_141
			--|#line 896 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 896 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 896")
end

			yyval50 := yyvs50.item (yyvsp50)
			add_to_constraint_actual_parameter_list (yyvs49.item (yyvsp49), yyval50)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp49 := yyvsp49 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_142
			--|#line 901 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 901 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 901")
end

			yyval50 := yyvs50.item (yyvsp50)
			add_to_constraint_actual_parameter_list (ast_factory.new_constraint_actual_parameter_comma (new_constraint_named_type (Void, yyvs12.item (yyvsp12), Void), yyvs5.item (yyvsp5)), yyval50)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_143
			--|#line 908 "et_eiffel_parser.y"
		local
			yyval49: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 908 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 908")
end

			yyval49 := ast_factory.new_constraint_actual_parameter_comma (yyvs53.item (yyvsp53), yyvs5.item (yyvsp5))
			if yyval49 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp49 := yyvsp49 + 1
	yyvsp53 := yyvsp53 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp49 >= yyvsc49 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs49")
		end
		yyvsc49 := yyvsc49 + yyInitial_yyvs_size
		yyvs49 := yyspecial_routines49.aliased_resized_area (yyvs49, yyvsc49)
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
		end

	yy_do_action_144
			--|#line 917 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 917 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 917")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp50 := yyvsp50 + 1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_145
			--|#line 919 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 919 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 919")
end

yyval50 := yyvs50.item (yyvsp50) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_146
			--|#line 923 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 923 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 923")
end

yyval50 := ast_factory.new_constraint_actual_parameters (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp50 := yyvsp50 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_147
			--|#line 926 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 926 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 926")
end

			yyval50 := yyvs50.item (yyvsp50)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_148
			--|#line 932 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 932 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 932")
end

			yyval50 := yyvs50.item (yyvsp50)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_149
			--|#line 940 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 940 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 940")
end

			yyval50 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
			add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_actual_parameter (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5 - 1), yyvs53.item (yyvsp53)), yyval50)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp50 := yyvsp50 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -2
	yyvsp53 := yyvsp53 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_150
			--|#line 945 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 945 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 945")
end

			yyval50 := yyvs50.item (yyvsp50)
			add_to_constraint_actual_parameter_list (yyvs49.item (yyvsp49), yyvs50.item (yyvsp50))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp49 := yyvsp49 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_151
			--|#line 950 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 950 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 950")
end

			yyval50 := yyvs50.item (yyvsp50)
			add_to_constraint_actual_parameter_list (yyvs49.item (yyvsp49), yyvs50.item (yyvsp50))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp49 := yyvsp49 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_152
			--|#line 955 "et_eiffel_parser.y"
		local
			yyval50: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 955 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 955")
end

			yyval50 := yyvs50.item (yyvsp50)
			if yyval50 /= Void then
				if not yyval50.is_empty then
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyval50.first.type), yyval50)
				else
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), Void), yyval50)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_153
			--|#line 968 "et_eiffel_parser.y"
		local
			yyval49: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 968 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 968")
end

			yyval49 := ast_factory.new_constraint_labeled_actual_parameter (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs53.item (yyvsp53))
			if yyval49 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp49 := yyvsp49 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp53 := yyvsp53 -1
	if yyvsp49 >= yyvsc49 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs49")
		end
		yyvsc49 := yyvsc49 + yyInitial_yyvs_size
		yyvs49 := yyspecial_routines49.aliased_resized_area (yyvs49, yyvsc49)
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
		end

	yy_do_action_154
			--|#line 977 "et_eiffel_parser.y"
		local
			yyval49: detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 977 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 977")
end

			yyval49 := ast_factory.new_constraint_labeled_actual_parameter_semicolon (ast_factory.new_constraint_labeled_actual_parameter (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs53.item (yyvsp53)), yyvs21.item (yyvsp21))
			if yyval49 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp49 := yyvsp49 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp53 := yyvsp53 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp49 >= yyvsc49 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs49")
		end
		yyvsc49 := yyvsc49 + yyInitial_yyvs_size
		yyvs49 := yyspecial_routines49.aliased_resized_area (yyvs49, yyvsc49)
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
		end

	yy_do_action_155
			--|#line 988 "et_eiffel_parser.y"
		local
			yyval104: detachable ET_OBSOLETE
		do
--|#line 988 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 988")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp104 := yyvsp104 + 1
	if yyvsp104 >= yyvsc104 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs104")
		end
		yyvsc104 := yyvsc104 + yyInitial_yyvs_size
		yyvs104 := yyspecial_routines104.aliased_resized_area (yyvs104, yyvsc104)
	end
	yyspecial_routines104.force (yyvs104, yyval104, yyvsp104)
end
		end

	yy_do_action_156
			--|#line 990 "et_eiffel_parser.y"
		local
			yyval104: detachable ET_OBSOLETE
		do
--|#line 990 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 990")
end

yyval104 := ast_factory.new_obsolete_message (yyvs2.item (yyvsp2), yyvs15.item (yyvsp15)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp104 := yyvsp104 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp15 := yyvsp15 -1
	if yyvsp104 >= yyvsc104 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs104")
		end
		yyvsc104 := yyvsc104 + yyInitial_yyvs_size
		yyvs104 := yyspecial_routines104.aliased_resized_area (yyvs104, yyvsc104)
	end
	yyspecial_routines104.force (yyvs104, yyval104, yyvsp104)
end
		end

	yy_do_action_157
			--|#line 996 "et_eiffel_parser.y"
		local
			yyval107: detachable ET_PARENT_CLAUSE_LIST
		do
--|#line 996 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 996")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp107 := yyvsp107 + 1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_158
			--|#line 998 "et_eiffel_parser.y"
		local
			yyval107: detachable ET_PARENT_CLAUSE_LIST
		do
--|#line 998 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 998")
end

			yyval107 := yyvs107.item (yyvsp107)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_159
			--|#line 1005 "et_eiffel_parser.y"
		local
			yyval107: detachable ET_PARENT_CLAUSE_LIST
		do
--|#line 1005 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1005")
end

			if attached yyvs109.item (yyvsp109) as l_inheritance_clause then
				yyval107 := ast_factory.new_parent_clauses (counter_value + 1)
				if yyval107 /= Void then
					yyval107.put_first (l_inheritance_clause)
				end
			else
				yyval107 := ast_factory.new_parent_clauses (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp107 := yyvsp107 + 1
	yyvsp109 := yyvsp109 -1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_160
			--|#line 1016 "et_eiffel_parser.y"
		local
			yyval107: detachable ET_PARENT_CLAUSE_LIST
		do
--|#line 1016 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1016")
end

			yyval107 := yyvs107.item (yyvsp107)
			if yyval107 /= Void and attached yyvs109.item (yyvsp109) as l_inheritance_clause then
				yyval107.put_first (l_inheritance_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp107 := yyvsp107 -1
	yyvsp109 := yyvsp109 -1
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_161
			--|#line 1016 "et_eiffel_parser.y"
		local
			yyval107: detachable ET_PARENT_CLAUSE_LIST
		do
--|#line 1016 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1016")
end

			if yyvs109.item (yyvsp109) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp107 := yyvsp107 + 1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_162
			--|#line 1031 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1031 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1031")
end

			yyval109 := ast_factory.new_parents (yyvs2.item (yyvsp2), 0)
			if yyval109 /= Void then
				yyval109.set_clients_clause (yyvs45.item (yyvsp45))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_163
			--|#line 1038 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1038 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1038")
end

			yyval109 := yyvs109.item (yyvsp109)
			if yyval109 /= Void then
				yyval109.set_clients_clause (yyvs45.item (yyvsp45))
			end
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 -1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_164
			--|#line 1038 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1038 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1038")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp109 := yyvsp109 + 1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_165
			--|#line 1054 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1054 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1054")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), Void, Void, Void, Void, Void, Void)
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_166
			--|#line 1061 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1061 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1061")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), yyvs116.item (yyvsp116), yyvs67.item (yyvsp67), yyvs94.item (yyvsp94 - 2), yyvs94.item (yyvsp94 - 1), yyvs94.item (yyvsp94), yyvs2.item (yyvsp2))
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	yyvsp116 := yyvsp116 -1
	yyvsp67 := yyvsp67 -1
	yyvsp94 := yyvsp94 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_167
			--|#line 1069 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1069 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1069")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), Void, yyvs67.item (yyvsp67), yyvs94.item (yyvsp94 - 2), yyvs94.item (yyvsp94 - 1), yyvs94.item (yyvsp94), yyvs2.item (yyvsp2))
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	yyvsp67 := yyvsp67 -1
	yyvsp94 := yyvsp94 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_168
			--|#line 1076 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1076 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1076")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), Void, Void, yyvs94.item (yyvsp94 - 2), yyvs94.item (yyvsp94 - 1), yyvs94.item (yyvsp94), yyvs2.item (yyvsp2))
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	yyvsp94 := yyvsp94 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_169
			--|#line 1083 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1083 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1083")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), Void, Void, Void, yyvs94.item (yyvsp94 - 1), yyvs94.item (yyvsp94), yyvs2.item (yyvsp2))
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	yyvsp94 := yyvsp94 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_170
			--|#line 1090 "et_eiffel_parser.y"
		local
			yyval106: detachable ET_PARENT
		do
--|#line 1090 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1090")
end

			yyval106 := new_parent (yyvs12.item (yyvsp12), yyvs28.item (yyvsp28), Void, Void, Void, Void, yyvs94.item (yyvsp94), yyvs2.item (yyvsp2))
			if yyval106 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp106 := yyvsp106 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	yyvsp94 := yyvsp94 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_171
			--|#line 1099 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1099 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1099")
end

			yyval109 := ast_factory.new_parents (last_keyword, counter_value)
			if yyval109 /= Void and attached yyvs106.item (yyvsp106) as l_parent then
				yyval109.put_first (l_parent)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp109 := yyvsp109 + 1
	yyvsp106 := yyvsp106 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_172
			--|#line 1106 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1106 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1106")
end

			yyval109 := ast_factory.new_parents (last_keyword, counter_value)
			if yyval109 /= Void and attached yyvs108.item (yyvsp108) as l_parent then
				yyval109.put_first (l_parent)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp109 := yyvsp109 + 1
	yyvsp108 := yyvsp108 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_173
			--|#line 1113 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1113 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1113")
end

			yyval109 := yyvs109.item (yyvsp109)
			if yyval109 /= Void and attached yyvs106.item (yyvsp106) as l_parent then
				yyval109.put_first (l_parent)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp106 := yyvsp106 -1
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_174
			--|#line 1120 "et_eiffel_parser.y"
		local
			yyval109: detachable ET_PARENT_LIST
		do
--|#line 1120 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1120")
end

			yyval109 := yyvs109.item (yyvsp109)
			if yyval109 /= Void and attached yyvs108.item (yyvsp108) as l_parent then
				yyval109.put_first (l_parent)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp108 := yyvsp108 -1
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_175
			--|#line 1129 "et_eiffel_parser.y"
		local
			yyval108: detachable ET_PARENT_ITEM
		do
--|#line 1129 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1129")
end

			yyval108 := ast_factory.new_parent_semicolon (yyvs106.item (yyvsp106), yyvs21.item (yyvsp21))
			if yyval108 /= Void and yyvs106.item (yyvsp106) = Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp108 := yyvsp108 + 1
	yyvsp106 := yyvsp106 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_176
			--|#line 1140 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1140 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1140")
end

yyval116 := ast_factory.new_renames (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp116 := yyvsp116 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp116 >= yyvsc116 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs116")
		end
		yyvsc116 := yyvsc116 + yyInitial_yyvs_size
		yyvs116 := yyspecial_routines116.aliased_resized_area (yyvs116, yyvsc116)
	end
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_177
			--|#line 1142 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1142 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1142")
end

			yyval116 := yyvs116.item (yyvsp116)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp116 := yyvsp116 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_178
			--|#line 1142 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1142 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1142")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp116 := yyvsp116 + 1
	if yyvsp116 >= yyvsc116 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs116")
		end
		yyvsc116 := yyvsc116 + yyInitial_yyvs_size
		yyvs116 := yyspecial_routines116.aliased_resized_area (yyvs116, yyvsc116)
	end
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_179
			--|#line 1155 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1155 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1155")
end

			yyval116 := ast_factory.new_renames (last_keyword, counter_value)
			if yyval116 /= Void and attached yyvs115.item (yyvsp115) as l_rename then
				yyval116.put_first (l_rename)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp116 := yyvsp116 + 1
	yyvsp115 := yyvsp115 -1
	if yyvsp116 >= yyvsc116 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs116")
		end
		yyvsc116 := yyvsc116 + yyInitial_yyvs_size
		yyvs116 := yyspecial_routines116.aliased_resized_area (yyvs116, yyvsc116)
	end
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_180
			--|#line 1162 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1162 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1162")
end

			yyval116 := ast_factory.new_renames (last_keyword, counter_value)
			if yyval116 /= Void and attached yyvs115.item (yyvsp115) as l_rename then
				yyval116.put_first (l_rename)
			end
				-- TODO: syntax error.
			raise_error
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp116 := yyvsp116 + 1
	yyvsp115 := yyvsp115 -1
	if yyvsp116 >= yyvsc116 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs116")
		end
		yyvsc116 := yyvsc116 + yyInitial_yyvs_size
		yyvs116 := yyspecial_routines116.aliased_resized_area (yyvs116, yyvsc116)
	end
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_181
			--|#line 1171 "et_eiffel_parser.y"
		local
			yyval116: detachable ET_RENAME_LIST
		do
--|#line 1171 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1171")
end

			yyval116 := yyvs116.item (yyvsp116)
			if yyval116 /= Void and attached yyvs115.item (yyvsp115) as l_rename then
				yyval116.put_first (l_rename)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_182
			--|#line 1180 "et_eiffel_parser.y"
		local
			yyval115: detachable ET_RENAME_ITEM
		do
--|#line 1180 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1180")
end

			yyval115 := ast_factory.new_rename (yyvs75.item (yyvsp75), yyvs2.item (yyvsp2), yyvs70.item (yyvsp70))
			if yyval115 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_183
			--|#line 1189 "et_eiffel_parser.y"
		local
			yyval115: detachable ET_RENAME_ITEM
		do
--|#line 1189 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1189")
end

			yyval115 := ast_factory.new_rename_comma (yyvs75.item (yyvsp75), yyvs2.item (yyvsp2), yyvs70.item (yyvsp70), yyvs5.item (yyvsp5))
			if yyval115 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_184
			--|#line 1200 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1200 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1200")
end

yyval67 := ast_factory.new_exports (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp67 := yyvsp67 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_185
			--|#line 1202 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1202 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1202")
end

			yyval67 := yyvs67.item (yyvsp67)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp67 := yyvsp67 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_186
			--|#line 1202 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1202 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1202")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp67 := yyvsp67 + 1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_187
			--|#line 1215 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1215 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1215")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp67 := yyvsp67 + 1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_188
			--|#line 1217 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1217 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1217")
end

yyval67 := yyvs67.item (yyvsp67) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_189
			--|#line 1221 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1221 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1221")
end

			if attached yyvs66.item (yyvsp66) as l_new_export then
				yyval67 := ast_factory.new_exports (last_keyword, counter_value + 1)
				if yyval67 /= Void then
					yyval67.put_first (l_new_export)
				end
			else
				yyval67 := ast_factory.new_exports (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp67 := yyvsp67 + 1
	yyvsp66 := yyvsp66 -1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_190
			--|#line 1232 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1232 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1232")
end

			yyval67 := yyvs67.item (yyvsp67)
			if yyval67 /= Void and attached yyvs66.item (yyvsp66) as l_new_export then
				yyval67.put_first (l_new_export)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp67 := yyvsp67 -1
	yyvsp66 := yyvsp66 -1
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_191
			--|#line 1232 "et_eiffel_parser.y"
		local
			yyval67: detachable ET_EXPORT_LIST
		do
--|#line 1232 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1232")
end

			if yyvs66.item (yyvsp66) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp67 := yyvsp67 + 1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_192
			--|#line 1247 "et_eiffel_parser.y"
		local
			yyval66: detachable ET_EXPORT
		do
--|#line 1247 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1247")
end

			yyval66 := ast_factory.new_all_export (yyvs45.item (yyvsp45), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp45 := yyvsp45 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_193
			--|#line 1251 "et_eiffel_parser.y"
		local
			yyval66: detachable ET_EXPORT
		do
--|#line 1251 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1251")
end

			last_export_clients := yyvs45.item (yyvsp45)
			yyval66 := ast_factory.new_feature_export (last_export_clients, 0)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp45 := yyvsp45 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_194
			--|#line 1256 "et_eiffel_parser.y"
		local
			yyval66: detachable ET_EXPORT
		do
--|#line 1256 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1256")
end

			yyval66 := yyvs74.item (yyvsp74)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp45 := yyvsp45 -1
	yyvsp74 := yyvsp74 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_195
			--|#line 1256 "et_eiffel_parser.y"
		local
			yyval66: detachable ET_EXPORT
		do
--|#line 1256 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1256")
end

			last_export_clients := yyvs45.item (yyvsp45)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp66 := yyvsp66 + 1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_196
			--|#line 1266 "et_eiffel_parser.y"
		local
			yyval66: detachable ET_EXPORT
		do
--|#line 1266 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1266")
end

yyval66 := ast_factory.new_null_export (yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp21 := yyvsp21 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_197
			--|#line 1270 "et_eiffel_parser.y"
		local
			yyval74: detachable ET_FEATURE_EXPORT
		do
--|#line 1270 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1270")
end

			if attached yyvs75.item (yyvsp75) as l_feature_name then
				yyval74 := ast_factory.new_feature_export (last_export_clients, counter_value + 1)
				if yyval74 /= Void then
					yyval74.put_first (l_feature_name)
				end
			else
				yyval74 := ast_factory.new_feature_export (last_export_clients, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp74 := yyvsp74 + 1
	yyvsp75 := yyvsp75 -1
	if yyvsp74 >= yyvsc74 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs74")
		end
		yyvsc74 := yyvsc74 + yyInitial_yyvs_size
		yyvs74 := yyspecial_routines74.aliased_resized_area (yyvs74, yyvsc74)
	end
	yyspecial_routines74.force (yyvs74, yyval74, yyvsp74)
end
		end

	yy_do_action_198
			--|#line 1281 "et_eiffel_parser.y"
		local
			yyval74: detachable ET_FEATURE_EXPORT
		do
--|#line 1281 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1281")
end

			yyval74 := ast_factory.new_feature_export (last_export_clients, counter_value)
			if yyval74 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval74.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp74 := yyvsp74 + 1
	yyvsp76 := yyvsp76 -1
	if yyvsp74 >= yyvsc74 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs74")
		end
		yyvsc74 := yyvsc74 + yyInitial_yyvs_size
		yyvs74 := yyspecial_routines74.aliased_resized_area (yyvs74, yyvsc74)
	end
	yyspecial_routines74.force (yyvs74, yyval74, yyvsp74)
end
		end

	yy_do_action_199
			--|#line 1289 "et_eiffel_parser.y"
		local
			yyval74: detachable ET_FEATURE_EXPORT
		do
--|#line 1289 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1289")
end

			yyval74 := yyvs74.item (yyvsp74)
			if yyval74 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval74.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines74.force (yyvs74, yyval74, yyvsp74)
end
		end

	yy_do_action_200
			--|#line 1300 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1300 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1300")
end

			yyval45 := yyvs45.item (yyvsp45)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp45 := yyvsp45 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_201
			--|#line 1300 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1300 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1300")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp45 := yyvsp45 + 1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_202
			--|#line 1311 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1311 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1311")
end

yyval45 := ast_factory.new_none_clients (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp45 := yyvsp45 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_203
			--|#line 1315 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1315 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1315")
end

			yyval45 := ast_factory.new_clients (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval45 /= Void and attached yyvs44.item (yyvsp44) as l_client then
				yyval45.put_first (l_client)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp45 := yyvsp45 + 1
	yyvsp44 := yyvsp44 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_204
			--|#line 1322 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1322 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1322")
end

			yyval45 := ast_factory.new_clients (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval45 /= Void and attached yyvs44.item (yyvsp44) as l_client then
				yyval45.put_first (l_client)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp45 := yyvsp45 + 1
	yyvsp44 := yyvsp44 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_205
			--|#line 1330 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1330 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1330")
end

			yyval45 := yyvs45.item (yyvsp45)
			if yyval45 /= Void and attached yyvs44.item (yyvsp44) as l_client then
				yyval45.put_first (l_client)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp44 := yyvsp44 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_206
			--|#line 1337 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1337 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1337")
end

			yyval45 := yyvs45.item (yyvsp45)
			if yyval45 /= Void and attached yyvs44.item (yyvsp44) as l_client then
				yyval45.put_first (l_client)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp44 := yyvsp44 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_207
			--|#line 1347 "et_eiffel_parser.y"
		local
			yyval44: detachable ET_CLIENT_ITEM
		do
--|#line 1347 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1347")
end

			yyval44 := new_client (yyvs12.item (yyvsp12))
			if yyval44 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp44 := yyvsp44 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_208
			--|#line 1356 "et_eiffel_parser.y"
		local
			yyval44: detachable ET_CLIENT_ITEM
		do
--|#line 1356 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1356")
end

			yyval44 := new_client_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5))
			if yyval44 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp44 := yyvsp44 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_209
			--|#line 1366 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1366 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1366")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp45 := yyvsp45 + 1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_210
			--|#line 1368 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1368 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1368")
end

yyval45 := yyvs45.item (yyvsp45) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_211
			--|#line 1372 "et_eiffel_parser.y"
		local
			yyval45: detachable ET_CLIENTS
		do
--|#line 1372 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1372")
end

			yyval45 := ast_factory.new_clients (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 1)
			if yyval45 /= Void and attached new_client (yyvs12.item (yyvsp12)) as l_client then
				yyval45.put_first (l_client)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp45 := yyvsp45 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_212
			--|#line 1383 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1383 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1383")
end

yyval94 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp94 := yyvsp94 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_213
			--|#line 1385 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1385 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1385")
end

			yyval94 := yyvs94.item (yyvsp94)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp94 := yyvsp94 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_214
			--|#line 1385 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1385 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1385")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_215
			--|#line 1398 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1398 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1398")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_216
			--|#line 1400 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1400")
end

yyval94 := yyvs94.item (yyvsp94) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_217
			--|#line 1404 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1404 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1404")
end

yyval94 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp94 := yyvsp94 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_218
			--|#line 1406 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1406 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1406")
end

			yyval94 := yyvs94.item (yyvsp94)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp94 := yyvsp94 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_219
			--|#line 1406 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1406 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1406")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_220
			--|#line 1419 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1419 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1419")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_221
			--|#line 1421 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1421 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1421")
end

yyval94 := yyvs94.item (yyvsp94) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_222
			--|#line 1425 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1425 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1425")
end

yyval94 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp94 := yyvsp94 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_223
			--|#line 1427 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1427 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1427")
end

			yyval94 := yyvs94.item (yyvsp94)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp94 := yyvsp94 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_224
			--|#line 1427 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1427 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1427")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_225
			--|#line 1440 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1440 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1440")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp94 := yyvsp94 + 1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_226
			--|#line 1442 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1442 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1442")
end

yyval94 := yyvs94.item (yyvsp94) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_227
			--|#line 1446 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1446 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1446")
end

			if attached yyvs75.item (yyvsp75) as l_feature_name then
				yyval94 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value + 1)
				if yyval94 /= Void then
					yyval94.put_first (l_feature_name)
				end
			else
				yyval94 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp94 := yyvsp94 + 1
	yyvsp75 := yyvsp75 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_228
			--|#line 1457 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1457 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1457")
end

			yyval94 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value)
			if yyval94 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval94.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp94 := yyvsp94 + 1
	yyvsp76 := yyvsp76 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_229
			--|#line 1465 "et_eiffel_parser.y"
		local
			yyval94: detachable ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1465 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1465")
end

			yyval94 := yyvs94.item (yyvsp94)
			if yyval94 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval94.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_230
			--|#line 1474 "et_eiffel_parser.y"
		local
			yyval76: detachable ET_FEATURE_NAME_ITEM
		do
--|#line 1474 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1474")
end

			yyval76 := ast_factory.new_feature_name_comma (yyvs75.item (yyvsp75), yyvs5.item (yyvsp5))
			if yyval76 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp76 >= yyvsc76 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs76")
		end
		yyvsc76 := yyvsc76 + yyInitial_yyvs_size
		yyvs76 := yyspecial_routines76.aliased_resized_area (yyvs76, yyvsc76)
	end
	yyspecial_routines76.force (yyvs76, yyval76, yyvsp76)
end
		end

	yy_do_action_231
			--|#line 1485 "et_eiffel_parser.y"
		local
			yyval60: detachable ET_CREATOR_LIST
		do
--|#line 1485 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1485")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp60 := yyvsp60 + 1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_232
			--|#line 1487 "et_eiffel_parser.y"
		local
			yyval60: detachable ET_CREATOR_LIST
		do
--|#line 1487 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1487")
end

			yyval60 := yyvs60.item (yyvsp60)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_233
			--|#line 1494 "et_eiffel_parser.y"
		local
			yyval60: detachable ET_CREATOR_LIST
		do
--|#line 1494 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1494")
end

			if attached yyvs59.item (yyvsp59) as l_creation_clause then
				yyval60 := ast_factory.new_creators (counter_value + 1)
				if yyval60 /= Void then
					yyval60.put_first (l_creation_clause)
				end
			else
				yyval60 := ast_factory.new_creators (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp60 := yyvsp60 + 1
	yyvsp59 := yyvsp59 -1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_234
			--|#line 1505 "et_eiffel_parser.y"
		local
			yyval60: detachable ET_CREATOR_LIST
		do
--|#line 1505 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1505")
end

			yyval60 := yyvs60.item (yyvsp60)
			if yyval60 /= Void and attached yyvs59.item (yyvsp59) as l_creation_clause then
				yyval60.put_first (l_creation_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp60 := yyvsp60 -1
	yyvsp59 := yyvsp59 -1
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_235
			--|#line 1505 "et_eiffel_parser.y"
		local
			yyval60: detachable ET_CREATOR_LIST
		do
--|#line 1505 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1505")
end

			if yyvs59.item (yyvsp59) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp60 := yyvsp60 + 1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_236
			--|#line 1520 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1520 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1520")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), yyvs45.item (yyvsp45), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_237
			--|#line 1522 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1522 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1522")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), new_any_clients (yyvs2.item (yyvsp2)), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_238
			--|#line 1524 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1524")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_239
			--|#line 1524 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1524")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := yyvs45.item (yyvsp45)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_240
			--|#line 1536 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1536 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1536")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_241
			--|#line 1536 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1536 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1536")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := new_any_clients (last_keyword)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_242
			--|#line 1548 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1548 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1548")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), yyvs45.item (yyvsp45), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_243
			--|#line 1550 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1550 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1550")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), new_any_clients (yyvs2.item (yyvsp2)), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_244
			--|#line 1552 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1552 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1552")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_245
			--|#line 1552 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1552 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1552")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := yyvs45.item (yyvsp45)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_246
			--|#line 1564 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1564 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1564")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_247
			--|#line 1564 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1564 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1564")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := new_any_clients (last_keyword)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_248
			--|#line 1578 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1578 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1578")
end

			if attached yyvs12.item (yyvsp12) as l_identifier then
				l_identifier.set_feature_name (True)
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value + 1)
				if yyval59 /= Void then
					yyval59.put_first (l_identifier)
				end
			else
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_249
			--|#line 1590 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1590 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1590")
end

			if system_processor.is_ise then
				raise_error
			else
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value)
				if yyval59 /= Void and attached yyvs76.item (yyvsp76) as l_creation_procedure then
					yyval59.put_first (l_creation_procedure)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp76 := yyvsp76 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_250
			--|#line 1602 "et_eiffel_parser.y"
		local
			yyval59: detachable ET_CREATOR
		do
--|#line 1602 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1602")
end

			yyval59 := yyvs59.item (yyvsp59)
			if yyval59 /= Void and attached yyvs76.item (yyvsp76) as l_creation_procedure then
				yyval59.put_first (l_creation_procedure)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_251
			--|#line 1611 "et_eiffel_parser.y"
		local
			yyval76: detachable ET_FEATURE_NAME_ITEM
		do
--|#line 1611 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1611")
end

			if attached yyvs12.item (yyvsp12) as l_identifier then
				l_identifier.set_feature_name (True)
				yyval76 := ast_factory.new_feature_name_comma (l_identifier, yyvs5.item (yyvsp5))
			else
				yyval76 := ast_factory.new_feature_name_comma (Void, yyvs5.item (yyvsp5))
			end
			if yyval76 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp76 >= yyvsc76 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs76")
		end
		yyvsc76 := yyvsc76 + yyInitial_yyvs_size
		yyvs76 := yyspecial_routines76.aliased_resized_area (yyvs76, yyvsc76)
	end
	yyspecial_routines76.force (yyvs76, yyval76, yyvsp76)
end
		end

	yy_do_action_252
			--|#line 1627 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1627 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1627")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp56 := yyvsp56 + 1
	if yyvsp56 >= yyvsc56 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs56")
		end
		yyvsc56 := yyvsc56 + yyInitial_yyvs_size
		yyvs56 := yyspecial_routines56.aliased_resized_area (yyvs56, yyvsc56)
	end
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_253
			--|#line 1629 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1629 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1629")
end

yyval56 := yyvs56.item (yyvsp56) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_254
			--|#line 1633 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1633 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1633")
end

			yyval56 := yyvs56.item (yyvsp56)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp56 := yyvsp56 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_255
			--|#line 1633 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1633 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1633")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp56 := yyvsp56 + 1
	if yyvsp56 >= yyvsc56 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs56")
		end
		yyvsc56 := yyvsc56 + yyInitial_yyvs_size
		yyvs56 := yyspecial_routines56.aliased_resized_area (yyvs56, yyvsc56)
	end
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_256
			--|#line 1646 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1646 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1646")
end

			yyval56 := ast_factory.new_convert_features (last_keyword, counter_value + 1)
			if yyval56 /= Void and attached yyvs54.item (yyvsp54) as l_convert_feature then
				yyval56.put_first (l_convert_feature)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp56 := yyvsp56 + 1
	yyvsp54 := yyvsp54 -1
	if yyvsp56 >= yyvsc56 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs56")
		end
		yyvsc56 := yyvsc56 + yyInitial_yyvs_size
		yyvs56 := yyspecial_routines56.aliased_resized_area (yyvs56, yyvsc56)
	end
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_257
			--|#line 1653 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1653 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1653")
end

			yyval56 := ast_factory.new_convert_features (last_keyword, counter_value)
			if yyval56 /= Void and attached yyvs55.item (yyvsp55) as l_convert_feature then
				yyval56.put_first (l_convert_feature)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp56 := yyvsp56 + 1
	yyvsp55 := yyvsp55 -1
	if yyvsp56 >= yyvsc56 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs56")
		end
		yyvsc56 := yyvsc56 + yyInitial_yyvs_size
		yyvs56 := yyspecial_routines56.aliased_resized_area (yyvs56, yyvsc56)
	end
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_258
			--|#line 1660 "et_eiffel_parser.y"
		local
			yyval56: detachable ET_CONVERT_FEATURE_LIST
		do
--|#line 1660 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1660")
end

			yyval56 := yyvs56.item (yyvsp56)
			if yyval56 /= Void and attached yyvs55.item (yyvsp55) as l_convert_feature then
				yyval56.put_first (l_convert_feature)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp55 := yyvsp55 -1
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_259
			--|#line 1669 "et_eiffel_parser.y"
		local
			yyval55: detachable ET_CONVERT_FEATURE_ITEM
		do
--|#line 1669 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1669")
end

			yyval55 := ast_factory.new_convert_feature_comma (yyvs54.item (yyvsp54), yyvs5.item (yyvsp5))
			if yyval55 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp55 := yyvsp55 + 1
	yyvsp54 := yyvsp54 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp55 >= yyvsc55 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs55")
		end
		yyvsc55 := yyvsc55 + yyInitial_yyvs_size
		yyvs55 := yyspecial_routines55.aliased_resized_area (yyvs55, yyvsc55)
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
		end

	yy_do_action_260
			--|#line 1678 "et_eiffel_parser.y"
		local
			yyval54: detachable ET_CONVERT_FEATURE
		do
--|#line 1678 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1678")
end

			yyval54 := ast_factory.new_convert_function (yyvs75.item (yyvsp75), yyvs5.item (yyvsp5), yyvs124.item (yyvsp124))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp5 := yyvsp5 -1
	yyvsp124 := yyvsp124 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_261
			--|#line 1682 "et_eiffel_parser.y"
		local
			yyval54: detachable ET_CONVERT_FEATURE
		do
--|#line 1682 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1682")
end

			yyval54 := ast_factory.new_convert_procedure (yyvs75.item (yyvsp75), yyvs5.item (yyvsp5 - 1), yyvs124.item (yyvsp124), yyvs5.item (yyvsp5))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp5 := yyvsp5 -2
	yyvsp124 := yyvsp124 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_262
			--|#line 1688 "et_eiffel_parser.y"
		local
			yyval124: detachable ET_TYPE_LIST
		do
--|#line 1688 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1688")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp124 := yyvsp124 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp124 >= yyvsc124 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs124")
		end
		yyvsc124 := yyvsc124 + yyInitial_yyvs_size
		yyvs124 := yyspecial_routines124.aliased_resized_area (yyvs124, yyvsc124)
	end
	yyspecial_routines124.force (yyvs124, yyval124, yyvsp124)
end
		end

	yy_do_action_263
			--|#line 1690 "et_eiffel_parser.y"
		local
			yyval124: detachable ET_TYPE_LIST
		do
--|#line 1690 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1690")
end

			yyval124 := yyvs124.item (yyvsp124)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp124 := yyvsp124 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines124.force (yyvs124, yyval124, yyvsp124)
end
		end

	yy_do_action_264
			--|#line 1690 "et_eiffel_parser.y"
		local
			yyval124: detachable ET_TYPE_LIST
		do
--|#line 1690 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1690")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp124 := yyvsp124 + 1
	if yyvsp124 >= yyvsc124 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs124")
		end
		yyvsc124 := yyvsc124 + yyInitial_yyvs_size
		yyvs124 := yyspecial_routines124.aliased_resized_area (yyvs124, yyvsc124)
	end
	yyspecial_routines124.force (yyvs124, yyval124, yyvsp124)
end
		end

	yy_do_action_265
			--|#line 1703 "et_eiffel_parser.y"
		local
			yyval124: detachable ET_TYPE_LIST
		do
--|#line 1703 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1703")
end

			if attached yyvs119.item (yyvsp119) as l_convert_type then
				yyval124 := ast_factory.new_convert_types (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval124 /= Void then
					yyval124.put_first (l_convert_type)
				end
			else
				yyval124 := ast_factory.new_convert_types (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp124 := yyvsp124 + 1
	yyvsp119 := yyvsp119 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp124 >= yyvsc124 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs124")
		end
		yyvsc124 := yyvsc124 + yyInitial_yyvs_size
		yyvs124 := yyspecial_routines124.aliased_resized_area (yyvs124, yyvsc124)
	end
	yyspecial_routines124.force (yyvs124, yyval124, yyvsp124)
end
		end

	yy_do_action_266
			--|#line 1714 "et_eiffel_parser.y"
		local
			yyval124: detachable ET_TYPE_LIST
		do
--|#line 1714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1714")
end

			yyval124 := yyvs124.item (yyvsp124)
			if yyval124 /= Void and attached yyvs123.item (yyvsp123) as l_convert_type then
				yyval124.put_first (l_convert_type)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp123 := yyvsp123 -1
	yyspecial_routines124.force (yyvs124, yyval124, yyvsp124)
end
		end

	yy_do_action_267
			--|#line 1723 "et_eiffel_parser.y"
		local
			yyval123: detachable ET_TYPE_ITEM
		do
--|#line 1723 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1723")
end

			yyval123 := ast_factory.new_type_comma (yyvs119.item (yyvsp119), yyvs5.item (yyvsp5))
			if yyval123 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp123 := yyvsp123 + 1
	yyvsp119 := yyvsp119 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp123 >= yyvsc123 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs123")
		end
		yyvsc123 := yyvsc123 + yyInitial_yyvs_size
		yyvs123 := yyspecial_routines123.aliased_resized_area (yyvs123, yyvsc123)
	end
	yyspecial_routines123.force (yyvs123, yyval123, yyvsp123)
end
		end

	yy_do_action_268
			--|#line 1734 "et_eiffel_parser.y"
		local
			yyval73: detachable ET_FEATURE_CLAUSE_LIST
		do
--|#line 1734 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1734")
end

			-- $$ := Void
			set_class_features
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp73 := yyvsp73 + 1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_269
			--|#line 1739 "et_eiffel_parser.y"
		local
			yyval73: detachable ET_FEATURE_CLAUSE_LIST
		do
--|#line 1739 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1739")
end

yyval73 := yyvs73.item (yyvsp73) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_270
			--|#line 1743 "et_eiffel_parser.y"
		local
			yyval73: detachable ET_FEATURE_CLAUSE_LIST
		do
--|#line 1743 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1743")
end

			yyval73 := yyvs73.item (yyvsp73)
			set_class_features
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_271
			--|#line 1751 "et_eiffel_parser.y"
		local
			yyval73: detachable ET_FEATURE_CLAUSE_LIST
		do
--|#line 1751 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1751")
end

			yyval73 := ast_factory.new_feature_clauses (counter_value)
			if yyval73 /= Void and attached yyvs72.item (yyvsp72) as l_feature_clause then
				yyval73.put_first (l_feature_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp73 := yyvsp73 + 1
	yyvsp72 := yyvsp72 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_272
			--|#line 1758 "et_eiffel_parser.y"
		local
			yyval73: detachable ET_FEATURE_CLAUSE_LIST
		do
--|#line 1758 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1758")
end

			yyval73 := yyvs73.item (yyvsp73)
			if yyval73 /= Void and attached yyvs72.item (yyvsp72) as l_feature_clause then
				yyval73.put_first (l_feature_clause)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp72 := yyvsp72 -1
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_273
			--|#line 1767 "et_eiffel_parser.y"
		local
			yyval72: detachable ET_FEATURE_CLAUSE
		do
--|#line 1767 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1767")
end

			yyval72 := last_feature_clause
			if yyval72 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_274
			--|#line 1774 "et_eiffel_parser.y"
		local
			yyval72: detachable ET_FEATURE_CLAUSE
		do
--|#line 1774 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1774")
end

			yyval72 := last_feature_clause
			if yyval72 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_275
			--|#line 1783 "et_eiffel_parser.y"
		local
			yyval72: detachable ET_FEATURE_CLAUSE
		do
--|#line 1783 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1783")
end

			last_clients := yyvs45.item (yyvsp45)
			last_feature_clause := ast_factory.new_feature_clause (yyvs2.item (yyvsp2), last_clients)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp72 := yyvsp72 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp45 := yyvsp45 -1
	if yyvsp72 >= yyvsc72 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs72")
		end
		yyvsc72 := yyvsc72 + yyInitial_yyvs_size
		yyvs72 := yyspecial_routines72.aliased_resized_area (yyvs72, yyvsc72)
	end
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_276
			--|#line 1788 "et_eiffel_parser.y"
		local
			yyval72: detachable ET_FEATURE_CLAUSE
		do
--|#line 1788 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1788")
end

			last_clients := new_any_clients (yyvs2.item (yyvsp2))
			last_feature_clause := ast_factory.new_feature_clause (yyvs2.item (yyvsp2), last_clients)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp72 := yyvsp72 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp72 >= yyvsc72 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs72")
		end
		yyvsc72 := yyvsc72 + yyInitial_yyvs_size
		yyvs72 := yyspecial_routines72.aliased_resized_area (yyvs72, yyvsc72)
	end
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_277
			--|#line 1795 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1795 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1795")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp114 := yyvsp114 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_278
			--|#line 1796 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1796 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1796")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp112 := yyvsp112 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_279
			--|#line 1797 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1797 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1797")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp114 := yyvsp114 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_280
			--|#line 1798 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1798 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1798")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp112 := yyvsp112 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_281
			--|#line 1803 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1803 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1803")
end

			yyval114 := yyvs114.item (yyvsp114)
			register_query (yyval114)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_282
			--|#line 1808 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1808 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1808")
end

			yyval114 := yyvs114.item (yyvsp114)
			if yyval114 /= Void then
				yyval114.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_query (yyval114)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_283
			--|#line 1816 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1816 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1816")
end

			yyval114 := new_query_synonym (ast_factory.new_extended_feature_name_comma (yyvs70.item (yyvsp70), yyvs5.item (yyvsp5)), yyvs114.item (yyvsp114))
			register_query_synonym (yyval114)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_284
			--|#line 1821 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1821 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1821")
end

			yyval114 := new_query_synonym (yyvs70.item (yyvsp70), yyvs114.item (yyvsp114))
			register_query_synonym (yyval114)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp70 := yyvsp70 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_285
			--|#line 1827 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1827 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1827")
end

			yyval114 := new_query_synonym (ast_factory.new_extended_feature_name_comma (yyvs70.item (yyvsp70), yyvs5.item (yyvsp5)), yyvs114.item (yyvsp114))
			if yyval114 /= Void then
				yyval114.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_query_synonym (yyval114)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_286
			--|#line 1835 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1835 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1835")
end

			yyval114 := new_query_synonym (yyvs70.item (yyvsp70), yyvs114.item (yyvsp114))
			if yyval114 /= Void then
				yyval114.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_query_synonym (yyval114)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_287
			--|#line 1846 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1846 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1846")
end

			yyval112 := yyvs112.item (yyvsp112)
			register_procedure (yyval112)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_288
			--|#line 1851 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1851 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1851")
end

			yyval112 := yyvs112.item (yyvsp112)
			if yyval112 /= Void then
				yyval112.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_procedure (yyval112)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_289
			--|#line 1859 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1859 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1859")
end

			yyval112 := new_procedure_synonym (ast_factory.new_extended_feature_name_comma (yyvs70.item (yyvsp70), yyvs5.item (yyvsp5)), yyvs112.item (yyvsp112))
			register_procedure_synonym (yyval112)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_290
			--|#line 1864 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1864 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1864")
end

			yyval112 := new_procedure_synonym (yyvs70.item (yyvsp70), yyvs112.item (yyvsp112))
			register_procedure_synonym (yyval112)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp70 := yyvsp70 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_291
			--|#line 1870 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1870 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1870")
end

			yyval112 := new_procedure_synonym (ast_factory.new_extended_feature_name_comma (yyvs70.item (yyvsp70), yyvs5.item (yyvsp5)), yyvs112.item (yyvsp112))
			if yyval112 /= Void then
				yyval112.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_procedure_synonym (yyval112)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_292
			--|#line 1878 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 1878 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1878")
end

			yyval112 := new_procedure_synonym (yyvs70.item (yyvsp70), yyvs112.item (yyvsp112))
			if yyval112 /= Void then
				yyval112.set_frozen_keyword (yyvs2.item (yyvsp2))
				register_procedure_synonym (yyval112)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp70 := yyvsp70 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_293
			--|#line 1889 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1889 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1889")
end

yyval114 := ast_factory.new_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_294
			--|#line 1891 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1891 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1891")
end

yyval114 := ast_factory.new_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_295
			--|#line 1893 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1893 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1893")
end

			yyval114 := ast_factory.new_extended_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_296
			--|#line 1897 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1897 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1897")
end

yyval114 := ast_factory.new_constant_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2), yyvs48.item (yyvsp48), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -1
	yyvsp48 := yyvsp48 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_297
			--|#line 1899 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1899 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1899")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_constant_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs5.item (yyvsp5), yyvs48.item (yyvsp48), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp48 := yyvsp48 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_298
			--|#line 1907 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1907 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1907")
end

yyval114 := ast_factory.new_unique_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -2
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_299
			--|#line 1909 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1909 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1909")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_unique_attribute (yyvs70.item (yyvsp70), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_300
			--|#line 1917 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1917 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1917")
end

yyval114 := ast_factory.new_do_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 1), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -2
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_301
			--|#line 1920 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1920 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1920")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_do_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_302
			--|#line 1929 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1929 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1929")
end

yyval114 := ast_factory.new_do_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 1), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -2
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_303
			--|#line 1933 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1933 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1933")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_do_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_304
			--|#line 1943 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1943 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1943")
end

yyval114 := ast_factory.new_once_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 16
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_305
			--|#line 1946 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1946 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1946")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_once_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_306
			--|#line 1955 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1955 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1955")
end

yyval114 := ast_factory.new_once_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 17
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_307
			--|#line 1959 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1959 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1959")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_once_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 16
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_308
			--|#line 1969 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1969 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1969")
end

yyval114 := ast_factory.new_deferred_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_309
			--|#line 1971 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1971 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1971")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_deferred_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_310
			--|#line 1979 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1979 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1979")
end

yyval114 := ast_factory.new_deferred_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_311
			--|#line 1982 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1982 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1982")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := ast_factory.new_deferred_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_312
			--|#line 1991 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1991 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1991")
end

yyval114 := new_external_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_313
			--|#line 1994 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 1994 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1994")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := new_external_function (yyvs70.item (yyvsp70), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_314
			--|#line 2003 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 2003 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2003")
end

yyval114 := new_external_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_315
			--|#line 2007 "et_eiffel_parser.y"
		local
			yyval114: detachable ET_QUERY
		do
--|#line 2007 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2007")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval114 := new_external_function (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs34.item (yyvsp34), Void, yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp114 := yyvsp114 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp34 := yyvsp34 -1
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_316
			--|#line 2019 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2019 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2019")
end

yyval112 := ast_factory.new_do_procedure (yyvs70.item (yyvsp70), Void, yyvs2.item (yyvsp2 - 1), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp2 := yyvsp2 -2
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_317
			--|#line 2022 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2022 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2022")
end

yyval112 := ast_factory.new_do_procedure (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), yyvs2.item (yyvsp2 - 1), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp2 := yyvsp2 -2
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_318
			--|#line 2026 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2026 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2026")
end

yyval112 := ast_factory.new_once_procedure (yyvs70.item (yyvsp70), Void, yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_319
			--|#line 2029 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2029 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2029")
end

yyval112 := ast_factory.new_once_procedure (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_320
			--|#line 2033 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2033 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2033")
end

yyval112 := ast_factory.new_deferred_procedure (yyvs70.item (yyvsp70), Void, yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 9
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_321
			--|#line 2035 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2035 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2035")
end

yyval112 := ast_factory.new_deferred_procedure (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), yyvs2.item (yyvsp2 - 1), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_322
			--|#line 2038 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2038 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2038")
end

yyval112 := new_external_procedure (yyvs70.item (yyvsp70), Void, yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_323
			--|#line 2041 "et_eiffel_parser.y"
		local
			yyval112: detachable ET_PROCEDURE
		do
--|#line 2041 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2041")
end

yyval112 := new_external_procedure (yyvs70.item (yyvsp70), yyvs79.item (yyvsp79), yyvs2.item (yyvsp2 - 2), yyvs85.item (yyvsp85), yyvs104.item (yyvsp104), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), yyvs21.item (yyvsp21), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp112 := yyvsp112 + 1
	yyvsp70 := yyvsp70 -1
	yyvsp79 := yyvsp79 -1
	yyvsp2 := yyvsp2 -3
	yyvsp85 := yyvsp85 -1
	yyvsp104 := yyvsp104 -1
	yyvsp111 := yyvsp111 -1
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_324
			--|#line 2047 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 2047 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2047")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval2 := Void
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_325
			--|#line 2055 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 2055 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2055")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_326
			--|#line 2059 "et_eiffel_parser.y"
		local
			yyval21: detachable ET_SEMICOLON_SYMBOL
		do
--|#line 2059 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2059")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp21 := yyvsp21 + 1
	if yyvsp21 >= yyvsc21 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs21")
		end
		yyvsc21 := yyvsc21 + yyInitial_yyvs_size
		yyvs21 := yyspecial_routines21.aliased_resized_area (yyvs21, yyvsc21)
	end
	yyspecial_routines21.force (yyvs21, yyval21, yyvsp21)
end
		end

	yy_do_action_327
			--|#line 2061 "et_eiffel_parser.y"
		local
			yyval21: detachable ET_SEMICOLON_SYMBOL
		do
--|#line 2061 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2061")
end

yyval21 := yyvs21.item (yyvsp21) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines21.force (yyvs21, yyval21, yyvsp21)
end
		end

	yy_do_action_328
			--|#line 2065 "et_eiffel_parser.y"
		local
			yyval71: detachable ET_EXTERNAL_ALIAS
		do
--|#line 2065 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2065")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp71 := yyvsp71 + 1
	if yyvsp71 >= yyvsc71 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs71")
		end
		yyvsc71 := yyvsc71 + yyInitial_yyvs_size
		yyvs71 := yyspecial_routines71.aliased_resized_area (yyvs71, yyvsc71)
	end
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_329
			--|#line 2067 "et_eiffel_parser.y"
		local
			yyval71: detachable ET_EXTERNAL_ALIAS
		do
--|#line 2067 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2067")
end

yyval71 := ast_factory.new_external_alias (yyvs2.item (yyvsp2), yyvs15.item (yyvsp15)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp71 := yyvsp71 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp15 := yyvsp15 -1
	if yyvsp71 >= yyvsc71 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs71")
		end
		yyvsc71 := yyvsc71 + yyInitial_yyvs_size
		yyvs71 := yyspecial_routines71.aliased_resized_area (yyvs71, yyvsc71)
	end
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_330
			--|#line 2071 "et_eiffel_parser.y"
		local
			yyval34: detachable ET_ASSIGNER
		do
--|#line 2071 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2071")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp34 := yyvsp34 + 1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_331
			--|#line 2073 "et_eiffel_parser.y"
		local
			yyval34: detachable ET_ASSIGNER
		do
--|#line 2073 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2073")
end

yyval34 := ast_factory.new_assigner (yyvs2.item (yyvsp2), yyvs75.item (yyvsp75)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp75 := yyvsp75 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_332
			--|#line 2079 "et_eiffel_parser.y"
		local
			yyval75: detachable ET_FEATURE_NAME
		do
--|#line 2079 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2079")
end

			if attached yyvs12.item (yyvsp12) as l_identifier then
				l_identifier.set_feature_name (True)
				yyval75 := l_identifier 
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp75 := yyvsp75 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp75 >= yyvsc75 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs75")
		end
		yyvsc75 := yyvsc75 + yyInitial_yyvs_size
		yyvs75 := yyspecial_routines75.aliased_resized_area (yyvs75, yyvsc75)
	end
	yyspecial_routines75.force (yyvs75, yyval75, yyvsp75)
end
		end

	yy_do_action_333
			--|#line 2088 "et_eiffel_parser.y"
		local
			yyval70: detachable ET_EXTENDED_FEATURE_NAME
		do
--|#line 2088 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2088")
end

yyval70 := yyvs75.item (yyvsp75) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp70 := yyvsp70 + 1
	yyvsp75 := yyvsp75 -1
	if yyvsp70 >= yyvsc70 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs70")
		end
		yyvsc70 := yyvsc70 + yyInitial_yyvs_size
		yyvs70 := yyspecial_routines70.aliased_resized_area (yyvs70, yyvsc70)
	end
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_334
			--|#line 2090 "et_eiffel_parser.y"
		local
			yyval70: detachable ET_EXTENDED_FEATURE_NAME
		do
--|#line 2090 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2090")
end

			if attached yyvs12.item (yyvsp12) as l_identifier then
				l_identifier.set_feature_name (True)
				yyval70 := ast_factory.new_aliased_feature_name (l_identifier, yyvs33.item (yyvsp33))
			else
				yyval70 := ast_factory.new_aliased_feature_name (Void, yyvs33.item (yyvsp33))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp70 := yyvsp70 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp33 := yyvsp33 -1
	if yyvsp70 >= yyvsc70 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs70")
		end
		yyvsc70 := yyvsc70 + yyInitial_yyvs_size
		yyvs70 := yyspecial_routines70.aliased_resized_area (yyvs70, yyvsc70)
	end
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_335
			--|#line 2101 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2101 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2101")
end

yyval33 := ast_factory.new_alias_not_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_336
			--|#line 2103 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2103 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2103")
end

yyval33 := ast_factory.new_alias_plus_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_337
			--|#line 2105 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2105 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2105")
end

yyval33 := ast_factory.new_alias_minus_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_338
			--|#line 2107 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2107 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2107")
end

yyval33 := ast_factory.new_alias_times_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_339
			--|#line 2109 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2109 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2109")
end

yyval33 := ast_factory.new_alias_divide_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_340
			--|#line 2111 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2111 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2111")
end

yyval33 := ast_factory.new_alias_div_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_341
			--|#line 2113 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2113 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2113")
end

yyval33 := ast_factory.new_alias_mod_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_342
			--|#line 2115 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2115 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2115")
end

yyval33 := ast_factory.new_alias_power_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_343
			--|#line 2117 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2117 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2117")
end

yyval33 := ast_factory.new_alias_lt_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_344
			--|#line 2119 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2119 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2119")
end

yyval33 := ast_factory.new_alias_le_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_345
			--|#line 2121 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2121 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2121")
end

yyval33 := ast_factory.new_alias_gt_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_346
			--|#line 2123 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2123 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2123")
end

yyval33 := ast_factory.new_alias_ge_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_347
			--|#line 2125 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2125 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2125")
end

yyval33 := ast_factory.new_alias_and_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_348
			--|#line 2127 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2127 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2127")
end

yyval33 := ast_factory.new_alias_and_then_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_349
			--|#line 2129 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2129 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2129")
end

yyval33 := ast_factory.new_alias_or_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_350
			--|#line 2131 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2131 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2131")
end

yyval33 := ast_factory.new_alias_or_else_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_351
			--|#line 2133 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2133 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2133")
end

yyval33 := ast_factory.new_alias_implies_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_352
			--|#line 2135 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2135 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2135")
end

yyval33 := ast_factory.new_alias_xor_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_353
			--|#line 2137 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2137 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2137")
end

yyval33 := ast_factory.new_alias_dotdot_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_354
			--|#line 2139 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2139 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2139")
end

yyval33 := ast_factory.new_alias_free_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_355
			--|#line 2141 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2141 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2141")
end

yyval33 := ast_factory.new_alias_bracket_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_356
			--|#line 2143 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2143 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2143")
end

yyval33 := ast_factory.new_alias_parenthesis_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_357
			--|#line 2145 "et_eiffel_parser.y"
		local
			yyval33: detachable ET_ALIAS_NAME
		do
--|#line 2145 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2145")
end

yyval33 := new_invalid_alias_name (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_358
			--|#line 2149 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 2149 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2149")
end

yyval2 := Void 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_359
			--|#line 2151 "et_eiffel_parser.y"
		local
			yyval2: detachable ET_KEYWORD
		do
--|#line 2151 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2151")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_360
			--|#line 2157 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2157 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2157")
end

			yyval79 := yyvs79.item (yyvsp79)
			set_start_closure (yyval79)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_361
			--|#line 2164 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2164 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2164")
end

yyval79 := new_formal_arguments (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp79 := yyvsp79 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp79 >= yyvsc79 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs79")
		end
		yyvsc79 := yyvsc79 + yyInitial_yyvs_size
		yyvs79 := yyspecial_routines79.aliased_resized_area (yyvs79, yyvsc79)
	end
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_362
			--|#line 2166 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2166 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2166")
end

			yyval79 := yyvs79.item (yyvsp79)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp5 := yyvsp5 -1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_363
			--|#line 2174 "et_eiffel_parser.y"
		local
			yyval5: detachable ET_SYMBOL
		do
--|#line 2174 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2174")
end

			-- Needed to solve ambiguity when parsing:
			--   agent (a).f
			--   agent (a: A) do ... end
			yyval5 := yyvs5.item (yyvsp5)
			add_symbol (yyval5)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines5.force (yyvs5, yyval5, yyvsp5)
end
		end

	yy_do_action_364
			--|#line 2185 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2185 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2185")
end

			yyval79 := new_formal_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval79 /= Void and attached yyvs78.item (yyvsp78) as l_formal_argument then
				yyval79.put_first (l_formal_argument)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp79 := yyvsp79 + 1
	yyvsp78 := yyvsp78 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp79 >= yyvsc79 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs79")
		end
		yyvsc79 := yyvsc79 + yyInitial_yyvs_size
		yyvs79 := yyspecial_routines79.aliased_resized_area (yyvs79, yyvsc79)
	end
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_365
			--|#line 2192 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2192 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2192")
end

			yyval79 := new_formal_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval79 /= Void and attached yyvs78.item (yyvsp78) as l_formal_argument then
				yyval79.put_first (l_formal_argument)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp79 := yyvsp79 + 1
	yyvsp78 := yyvsp78 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp79 >= yyvsc79 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs79")
		end
		yyvsc79 := yyvsc79 + yyInitial_yyvs_size
		yyvs79 := yyspecial_routines79.aliased_resized_area (yyvs79, yyvsc79)
	end
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_366
			--|#line 2199 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2199 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2199")
end

			yyval79 := yyvs79.item (yyvsp79)
			if yyval79 /= Void and attached yyvs77.item (yyvsp77) as l_formal_argument then
				if not yyval79.is_empty then
					l_formal_argument.set_declared_type (yyval79.first.type)
					yyval79.put_first (l_formal_argument)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 -1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_367
			--|#line 2209 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2209 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2209")
end

			-- TODO: Syntax error
			yyval79 := yyvs79.item (yyvsp79)
			if yyval79 /= Void and attached yyvs77.item (yyvsp77) as l_formal_argument then
				if not yyval79.is_empty then
					l_formal_argument.set_declared_type (yyval79.first.type)
					yyval79.put_first (l_formal_argument)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 -1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_368
			--|#line 2220 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2220 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2220")
end

			yyval79 := yyvs79.item (yyvsp79)
			if yyval79 /= Void and attached yyvs78.item (yyvsp78) as l_formal_argument then
				yyval79.put_first (l_formal_argument)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp78 := yyvsp78 -1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_369
			--|#line 2227 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2227 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2227")
end

			yyval79 := yyvs79.item (yyvsp79)
			if yyval79 /= Void and attached yyvs78.item (yyvsp78) as l_formal_argument then
				yyval79.put_first (l_formal_argument)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp78 := yyvsp78 -1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_370
			--|#line 2236 "et_eiffel_parser.y"
		local
			yyval77: detachable ET_FORMAL_ARGUMENT
		do
--|#line 2236 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2236")
end

			yyval77 := ast_factory.new_formal_comma_argument (ast_factory.new_argument_name_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), dummy_type)
			if yyval77 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp77 >= yyvsc77 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs77")
		end
		yyvsc77 := yyvsc77 + yyInitial_yyvs_size
		yyvs77 := yyspecial_routines77.aliased_resized_area (yyvs77, yyvsc77)
	end
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_371
			--|#line 2245 "et_eiffel_parser.y"
		local
			yyval77: detachable ET_FORMAL_ARGUMENT
		do
--|#line 2245 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2245")
end

			yyval77 := ast_factory.new_formal_comma_argument (yyvs12.item (yyvsp12), dummy_type)
			if yyval77 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp77 := yyvsp77 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp77 >= yyvsc77 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs77")
		end
		yyvsc77 := yyvsc77 + yyInitial_yyvs_size
		yyvs77 := yyspecial_routines77.aliased_resized_area (yyvs77, yyvsc77)
	end
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_372
			--|#line 2254 "et_eiffel_parser.y"
		local
			yyval78: detachable ET_FORMAL_ARGUMENT_ITEM
		do
--|#line 2254 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2254")
end

			yyval78 := ast_factory.new_formal_argument (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)))
			if yyval78 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp78 := yyvsp78 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_373
			--|#line 2263 "et_eiffel_parser.y"
		local
			yyval78: detachable ET_FORMAL_ARGUMENT_ITEM
		do
--|#line 2263 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2263")
end

			yyval78 := ast_factory.new_formal_argument_semicolon (ast_factory.new_formal_argument (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119))), yyvs21.item (yyvsp21))
			if yyval78 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp78 := yyvsp78 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_374
			--|#line 2274 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2274 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2274")
end

yyval98 := Void 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp98 := yyvsp98 + 1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_375
			--|#line 2276 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2276 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2276")
end

yyval98 := new_local_variables (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp98 := yyvsp98 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_376
			--|#line 2278 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2278 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2278")
end

			yyval98 := yyvs98.item (yyvsp98)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_377
			--|#line 2278 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2278 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2278")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp98 := yyvsp98 + 1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_378
			--|#line 2291 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2291 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2291")
end

			yyval98 := new_local_variables (last_keyword, counter_value)
			if yyval98 /= Void and attached yyvs97.item (yyvsp97) as l_local_variable then
				yyval98.put_first (l_local_variable)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp98 := yyvsp98 + 1
	yyvsp97 := yyvsp97 -1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_379
			--|#line 2298 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2298 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2298")
end

			yyval98 := new_local_variables (last_keyword, counter_value)
			if yyval98 /= Void and attached yyvs97.item (yyvsp97) as l_local_variable then
				yyval98.put_first (l_local_variable)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp98 := yyvsp98 + 1
	yyvsp97 := yyvsp97 -1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_380
			--|#line 2305 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2305 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2305")
end

			yyval98 := yyvs98.item (yyvsp98)
			if yyval98 /= Void and attached yyvs96.item (yyvsp96) as l_local_variable then
				if not yyval98.is_empty then
					l_local_variable.set_declared_type (yyval98.first.type)
					yyval98.put_first (l_local_variable)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp96 := yyvsp96 -1
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_381
			--|#line 2315 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2315 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2315")
end

			-- TODO: Syntax error
			yyval98 := yyvs98.item (yyvsp98)
			if yyval98 /= Void and attached yyvs96.item (yyvsp96) as l_local_variable then
				if not yyval98.is_empty then
					l_local_variable.set_declared_type (yyval98.first.type)
					yyval98.put_first (l_local_variable)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp96 := yyvsp96 -1
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_382
			--|#line 2326 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2326 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2326")
end

			yyval98 := yyvs98.item (yyvsp98)
			if yyval98 /= Void and attached yyvs97.item (yyvsp97) as l_local_variable then
				yyval98.put_first (l_local_variable)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp97 := yyvsp97 -1
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_383
			--|#line 2333 "et_eiffel_parser.y"
		local
			yyval98: detachable ET_LOCAL_VARIABLE_LIST
		do
--|#line 2333 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2333")
end

			yyval98 := yyvs98.item (yyvsp98)
			if yyval98 /= Void and attached yyvs97.item (yyvsp97) as l_local_variable then
				yyval98.put_first (l_local_variable)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp97 := yyvsp97 -1
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_384
			--|#line 2342 "et_eiffel_parser.y"
		local
			yyval96: detachable ET_LOCAL_VARIABLE
		do
--|#line 2342 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2342")
end

			yyval96 := ast_factory.new_local_comma_variable (ast_factory.new_local_name_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), dummy_type)
			if yyval96 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp96 := yyvsp96 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp96 >= yyvsc96 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs96")
		end
		yyvsc96 := yyvsc96 + yyInitial_yyvs_size
		yyvs96 := yyspecial_routines96.aliased_resized_area (yyvs96, yyvsc96)
	end
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_385
			--|#line 2351 "et_eiffel_parser.y"
		local
			yyval96: detachable ET_LOCAL_VARIABLE
		do
--|#line 2351 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2351")
end

			yyval96 := ast_factory.new_local_comma_variable (yyvs12.item (yyvsp12), dummy_type)
			if yyval96 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp96 := yyvsp96 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp96 >= yyvsc96 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs96")
		end
		yyvsc96 := yyvsc96 + yyInitial_yyvs_size
		yyvs96 := yyspecial_routines96.aliased_resized_area (yyvs96, yyvsc96)
	end
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_386
			--|#line 2360 "et_eiffel_parser.y"
		local
			yyval97: detachable ET_LOCAL_VARIABLE_ITEM
		do
--|#line 2360 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2360")
end

			yyval97 := ast_factory.new_local_variable (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)))
			if yyval97 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp97 := yyvsp97 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_387
			--|#line 2369 "et_eiffel_parser.y"
		local
			yyval97: detachable ET_LOCAL_VARIABLE_ITEM
		do
--|#line 2369 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2369")
end

			yyval97 := ast_factory.new_local_variable_semicolon (ast_factory.new_local_variable (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119))), yyvs21.item (yyvsp21))
			if yyval97 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp97 := yyvsp97 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_388
			--|#line 2380 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2380 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2380")
end

add_expression_assertion (yyvs68.item (yyvsp68), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp68 := yyvsp68 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_389
			--|#line 2382 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2382 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2382")
end

add_expression_assertion (yyvs68.item (yyvsp68), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_390
			--|#line 2384 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2384 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2384")
end

add_tagged_assertion (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_391
			--|#line 2386 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2386 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2386")
end

add_tagged_assertion (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_392
			--|#line 2388 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2388 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2388")
end

			if assertion_kind = assertion_kind_postcondition then
					-- 'class' assertions only allowed in postconditions.
				add_class_assertion (ast_factory.new_class_assertion (yyvs2.item (yyvsp2)), Void)
			else
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_393
			--|#line 2397 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2397 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2397")
end

			if assertion_kind = assertion_kind_postcondition then
					-- 'class' assertions only allowed in postconditions.
				add_class_assertion (ast_factory.new_class_assertion (yyvs2.item (yyvsp2)), yyvs21.item (yyvsp21))
			else
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_394
			--|#line 2406 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2406 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2406")
end

add_expression_assertion (yyvs68.item (yyvsp68), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_395
			--|#line 2408 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2408 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2408")
end

add_expression_assertion (yyvs68.item (yyvsp68), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp21 := yyvsp21 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_396
			--|#line 2410 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2410 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2410")
end

add_tagged_assertion (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_397
			--|#line 2412 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2412 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2412")
end

add_tagged_assertion (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5), yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp21 := yyvsp21 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_398
			--|#line 2414 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2414 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2414")
end

			if assertion_kind = assertion_kind_postcondition then
					-- 'class' assertions only allowed in postconditions.
				add_class_assertion (ast_factory.new_class_assertion (yyvs2.item (yyvsp2)), Void)
			else
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_399
			--|#line 2423 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2423 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2423")
end

			if assertion_kind = assertion_kind_postcondition then
					-- 'class' assertions only allowed in postconditions.
				add_class_assertion (ast_factory.new_class_assertion (yyvs2.item (yyvsp2)), yyvs21.item (yyvsp21))
			else
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp21 := yyvsp21 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_400
			--|#line 2434 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2434 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2434")
end

start_precondition 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_401
			--|#line 2438 "et_eiffel_parser.y"
		local
			yyval111: detachable ET_PRECONDITIONS
		do
--|#line 2438 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2438")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp111 := yyvsp111 + 1
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_402
			--|#line 2440 "et_eiffel_parser.y"
		local
			yyval111: detachable ET_PRECONDITIONS
		do
--|#line 2440 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2440")
end

yyval111 := new_preconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp111 := yyvsp111 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_403
			--|#line 2442 "et_eiffel_parser.y"
		local
			yyval111: detachable ET_PRECONDITIONS
		do
--|#line 2442 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2442")
end

yyval111 := new_preconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp111 := yyvsp111 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_404
			--|#line 2444 "et_eiffel_parser.y"
		local
			yyval111: detachable ET_PRECONDITIONS
		do
--|#line 2444 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2444")
end

yyval111 := new_preconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp111 := yyvsp111 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_405
			--|#line 2446 "et_eiffel_parser.y"
		local
			yyval111: detachable ET_PRECONDITIONS
		do
--|#line 2446 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2446")
end

yyval111 := new_preconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp111 := yyvsp111 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_406
			--|#line 2450 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2450 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2450")
end

start_postcondition 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_407
			--|#line 2454 "et_eiffel_parser.y"
		local
			yyval110: detachable ET_POSTCONDITIONS
		do
--|#line 2454 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2454")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp110 := yyvsp110 + 1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_408
			--|#line 2456 "et_eiffel_parser.y"
		local
			yyval110: detachable ET_POSTCONDITIONS
		do
--|#line 2456 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2456")
end

yyval110 := new_postconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp110 := yyvsp110 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_409
			--|#line 2458 "et_eiffel_parser.y"
		local
			yyval110: detachable ET_POSTCONDITIONS
		do
--|#line 2458 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2458")
end

yyval110 := new_postconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp110 := yyvsp110 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_410
			--|#line 2460 "et_eiffel_parser.y"
		local
			yyval110: detachable ET_POSTCONDITIONS
		do
--|#line 2460 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2460")
end

yyval110 := new_postconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp110 := yyvsp110 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_411
			--|#line 2462 "et_eiffel_parser.y"
		local
			yyval110: detachable ET_POSTCONDITIONS
		do
--|#line 2462 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2462")
end

yyval110 := new_postconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp110 := yyvsp110 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_412
			--|#line 2466 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2466 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2466")
end

start_invariant 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_413
			--|#line 2470 "et_eiffel_parser.y"
		local
			yyval93: detachable ET_INVARIANTS
		do
--|#line 2470 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2470")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp93 := yyvsp93 + 1
	if yyvsp93 >= yyvsc93 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs93")
		end
		yyvsc93 := yyvsc93 + yyInitial_yyvs_size
		yyvs93 := yyspecial_routines93.aliased_resized_area (yyvs93, yyvsc93)
	end
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_414
			--|#line 2472 "et_eiffel_parser.y"
		local
			yyval93: detachable ET_INVARIANTS
		do
--|#line 2472 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2472")
end

yyval93 := yyvs93.item (yyvsp93) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_415
			--|#line 2476 "et_eiffel_parser.y"
		local
			yyval93: detachable ET_INVARIANTS
		do
--|#line 2476 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2476")
end

yyval93 := new_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp93 := yyvsp93 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp93 >= yyvsc93 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs93")
		end
		yyvsc93 := yyvsc93 + yyInitial_yyvs_size
		yyvs93 := yyspecial_routines93.aliased_resized_area (yyvs93, yyvsc93)
	end
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_416
			--|#line 2478 "et_eiffel_parser.y"
		local
			yyval93: detachable ET_INVARIANTS
		do
--|#line 2478 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2478")
end

yyval93 := new_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp93 := yyvsp93 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -3
	if yyvsp93 >= yyvsc93 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs93")
		end
		yyvsc93 := yyvsc93 + yyInitial_yyvs_size
		yyvs93 := yyspecial_routines93.aliased_resized_area (yyvs93, yyvsc93)
	end
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_417
			--|#line 2482 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2482 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2482")
end

set_start_closure (Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_418
			--|#line 2486 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2486 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2486")
end

start_loop_invariant 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_419
			--|#line 2490 "et_eiffel_parser.y"
		local
			yyval99: detachable ET_LOOP_INVARIANTS
		do
--|#line 2490 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2490")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp99 := yyvsp99 + 1
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_420
			--|#line 2492 "et_eiffel_parser.y"
		local
			yyval99: detachable ET_LOOP_INVARIANTS
		do
--|#line 2492 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2492")
end

yyval99 := yyvs99.item (yyvsp99) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_421
			--|#line 2496 "et_eiffel_parser.y"
		local
			yyval99: detachable ET_LOOP_INVARIANTS
		do
--|#line 2496 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2496")
end

yyval99 := new_loop_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp99 := yyvsp99 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_422
			--|#line 2498 "et_eiffel_parser.y"
		local
			yyval99: detachable ET_LOOP_INVARIANTS
		do
--|#line 2498 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2498")
end

yyval99 := new_loop_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp99 := yyvsp99 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_423
			--|#line 2502 "et_eiffel_parser.y"
		local
			yyval125: detachable ET_VARIANT
		do
--|#line 2502 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2502")
end

yyval125 := ast_factory.new_variant (yyvs2.item (yyvsp2), Void, yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp125 := yyvsp125 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp125 >= yyvsc125 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs125")
		end
		yyvsc125 := yyvsc125 + yyInitial_yyvs_size
		yyvs125 := yyspecial_routines125.aliased_resized_area (yyvs125, yyvsc125)
	end
	yyspecial_routines125.force (yyvs125, yyval125, yyvsp125)
end
		end

	yy_do_action_424
			--|#line 2504 "et_eiffel_parser.y"
		local
			yyval125: detachable ET_VARIANT
		do
--|#line 2504 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2504")
end

yyval125 := ast_factory.new_variant (yyvs2.item (yyvsp2), ast_factory.new_tag (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp125 := yyvsp125 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp125 >= yyvsc125 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs125")
		end
		yyvsc125 := yyvsc125 + yyInitial_yyvs_size
		yyvs125 := yyspecial_routines125.aliased_resized_area (yyvs125, yyvsc125)
	end
	yyspecial_routines125.force (yyvs125, yyval125, yyvsp125)
end
		end

	yy_do_action_425
			--|#line 2508 "et_eiffel_parser.y"
		local
			yyval125: detachable ET_VARIANT
		do
--|#line 2508 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2508")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp125 := yyvsp125 + 1
	if yyvsp125 >= yyvsc125 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs125")
		end
		yyvsc125 := yyvsc125 + yyInitial_yyvs_size
		yyvs125 := yyspecial_routines125.aliased_resized_area (yyvs125, yyvsc125)
	end
	yyspecial_routines125.force (yyvs125, yyval125, yyvsp125)
end
		end

	yy_do_action_426
			--|#line 2510 "et_eiffel_parser.y"
		local
			yyval125: detachable ET_VARIANT
		do
--|#line 2510 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2510")
end

yyval125 := yyvs125.item (yyvsp125) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines125.force (yyvs125, yyval125, yyvsp125)
end
		end

	yy_do_action_427
			--|#line 2516 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2516 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2516")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp46 := yyvsp46 + 1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_428
			--|#line 2518 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2518 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2518")
end

yyval46 := yyvs46.item (yyvsp46) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_429
			--|#line 2524 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2524")
end

yyval119 := new_named_type (Void, yyvs12.item (yyvsp12), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_430
			--|#line 2526 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2526 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2526")
end

yyval119 := yyvs119.item (yyvsp119) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_431
			--|#line 2530 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2530 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2530")
end

yyval119 := new_named_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_432
			--|#line 2532 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2532 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2532")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_433
			--|#line 2534 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2534 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2534")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_434
			--|#line 2536 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2536 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2536")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_435
			--|#line 2538 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2538 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2538")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_436
			--|#line 2540 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2540 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2540")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_437
			--|#line 2542 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2542 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2542")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_438
			--|#line 2544 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2544 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2544")
end

yyval119 := new_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_439
			--|#line 2546 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2546 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2546")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_440
			--|#line 2548 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2548 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2548")
end

yyval119 := new_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_441
			--|#line 2550 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2550 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2550")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_442
			--|#line 2552 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2552 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2552")
end

yyval119 := yyvs95.item (yyvsp95) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp119 := yyvsp119 + 1
	yyvsp95 := yyvsp95 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_443
			--|#line 2554 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2554 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2554")
end

yyval119 := new_tuple_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_444
			--|#line 2556 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2556 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2556")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_445
			--|#line 2558 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2558 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2558")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_446
			--|#line 2560 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2560 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2560")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_447
			--|#line 2562 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2562 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2562")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_448
			--|#line 2564 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2564 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2564")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_449
			--|#line 2566 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2566 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2566")
end

yyval119 := new_tuple_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_450
			--|#line 2568 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2568 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2568")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_451
			--|#line 2570 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2570 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2570")
end

yyval119 := new_tuple_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_452
			--|#line 2572 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2572 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2572")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_453
			--|#line 2576 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2576 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2576")
end

yyval119 := new_named_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_454
			--|#line 2578 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2578 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2578")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_455
			--|#line 2580 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2580 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2580")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_456
			--|#line 2582 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2582 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2582")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_457
			--|#line 2584 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2584 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2584")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_458
			--|#line 2586 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2586 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2586")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_459
			--|#line 2588 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2588 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2588")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_460
			--|#line 2590 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2590 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2590")
end

yyval119 := new_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_461
			--|#line 2592 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2592 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2592")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_462
			--|#line 2594 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2594")
end

yyval119 := new_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_463
			--|#line 2596 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2596 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2596")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_464
			--|#line 2598 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2598 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2598")
end

yyval119 := yyvs95.item (yyvsp95) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp119 := yyvsp119 + 1
	yyvsp95 := yyvsp95 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_465
			--|#line 2600 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2600 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2600")
end

yyval119 := new_tuple_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_466
			--|#line 2602 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2602 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2602")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_467
			--|#line 2604 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2604 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2604")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_468
			--|#line 2606 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2606 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2606")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_469
			--|#line 2608 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2608 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2608")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_470
			--|#line 2610 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2610 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2610")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_471
			--|#line 2612 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2612 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2612")
end

yyval119 := new_tuple_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_472
			--|#line 2614 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2614 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2614")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_473
			--|#line 2616 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2616 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2616")
end

yyval119 := new_tuple_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_474
			--|#line 2618 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2618 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2618")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_475
			--|#line 2622 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2622 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2622")
end

yyval119 := new_named_type (Void, yyvs12.item (yyvsp12), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_476
			--|#line 2624 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2624 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2624")
end

yyval119 := new_named_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_477
			--|#line 2626 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2626 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2626")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_478
			--|#line 2628 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2628 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2628")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_479
			--|#line 2630 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2630 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2630")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_480
			--|#line 2632 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2632 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2632")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_481
			--|#line 2634 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2634 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2634")
end

yyval119 := new_named_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_482
			--|#line 2636 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2636 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2636")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_483
			--|#line 2638 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2638 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2638")
end

yyval119 := new_named_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_484
			--|#line 2640 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2640 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2640")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_485
			--|#line 2642 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2642 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2642")
end

yyval119 := new_named_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_486
			--|#line 2644 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2644 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2644")
end

yyval119 := new_named_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_487
			--|#line 2646 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2646 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2646")
end

yyval119 := yyvs95.item (yyvsp95) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp119 := yyvsp119 + 1
	yyvsp95 := yyvsp95 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_488
			--|#line 2648 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2648 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2648")
end

yyval119 := new_tuple_type (Void, yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_489
			--|#line 2650 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2650 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2650")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_490
			--|#line 2652 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2652 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2652")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_491
			--|#line 2654 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2654 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2654")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_492
			--|#line 2656 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2656 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2656")
end

yyval119 := new_tuple_type (yyvs2.item (yyvsp2), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_493
			--|#line 2658 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2658 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2658")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_494
			--|#line 2660 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2660 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2660")
end

yyval119 := new_tuple_type (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_495
			--|#line 2662 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2662 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2662")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_496
			--|#line 2664 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2664 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2664")
end

yyval119 := new_tuple_type (yyvs23.item (yyvsp23), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_497
			--|#line 2666 "et_eiffel_parser.y"
		local
			yyval119: detachable ET_TYPE
		do
--|#line 2666 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2666")
end

yyval119 := new_tuple_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs12.item (yyvsp12), yyvs28.item (yyvsp28)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp119 := yyvsp119 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp28 := yyvsp28 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_498
			--|#line 2670 "et_eiffel_parser.y"
		local
			yyval12: detachable ET_IDENTIFIER
		do
--|#line 2670 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2670")
end

yyval12 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
		end

	yy_do_action_499
			--|#line 2672 "et_eiffel_parser.y"
		local
			yyval12: detachable ET_IDENTIFIER
		do
--|#line 2672 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2672")
end

yyval12 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
		end

	yy_do_action_500
			--|#line 2676 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2676 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2676")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp28 := yyvsp28 + 1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_501
			--|#line 2678 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2678 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2678")
end

yyval28 := yyvs28.item (yyvsp28) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_502
			--|#line 2682 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2682 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2682")
end

yyval28 := ast_factory.new_actual_parameters (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_503
			--|#line 2685 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2685 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2685")
end

			yyval28 := yyvs28.item (yyvsp28)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_504
			--|#line 2693 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2693 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2693")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp22 := yyvsp22 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_505
			--|#line 2700 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2700 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2700")
end

			if attached yyvs119.item (yyvsp119) as l_type then
				yyval28 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval28 /= Void then
					yyval28.put_first (l_type)
				end
			else
				yyval28 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 + 1
	yyvsp119 := yyvsp119 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_506
			--|#line 2711 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2711 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2711")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (yyvs27.item (yyvsp27), yyval28)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_507
			--|#line 2716 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2716 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2716")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (ast_factory.new_actual_parameter_comma (new_named_type (Void, yyvs12.item (yyvsp12), Void), yyvs5.item (yyvsp5)), yyval28)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_508
			--|#line 2721 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2721 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2721")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (ast_factory.new_actual_parameter_comma (new_named_type (Void, yyvs12.item (yyvsp12), Void), yyvs5.item (yyvsp5)), yyval28)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_509
			--|#line 2726 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2726 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2726")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (ast_factory.new_actual_parameter_comma (new_tuple_type (Void, yyvs12.item (yyvsp12), Void), yyvs5.item (yyvsp5)), yyval28)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_510
			--|#line 2733 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2733 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2733")
end

			increment_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_511
			--|#line 2739 "et_eiffel_parser.y"
		local
			yyval27: detachable ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2739 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2739")
end

			yyval27 := ast_factory.new_actual_parameter_comma (yyvs119.item (yyvsp119), yyvs5.item (yyvsp5))
			if yyval27 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 + 1
	yyvsp119 := yyvsp119 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_512
			--|#line 2748 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2748 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2748")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp28 := yyvsp28 + 1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_513
			--|#line 2750 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2750 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2750")
end

yyval28 := yyvs28.item (yyvsp28) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_514
			--|#line 2754 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2754 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2754")
end

yyval28 := ast_factory.new_actual_parameters (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_515
			--|#line 2757 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2757 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2757")
end

			yyval28 := yyvs28.item (yyvsp28)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_516
			--|#line 2763 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2763 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2763")
end

			yyval28 := yyvs28.item (yyvsp28)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_517
			--|#line 2771 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2771 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2771")
end

			yyval28 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
			add_to_actual_parameter_list (ast_factory.new_labeled_actual_parameter (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119))), yyval28)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp28 := yyvsp28 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_518
			--|#line 2776 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2776 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2776")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (yyvs27.item (yyvsp27), yyvs28.item (yyvsp28))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_519
			--|#line 2781 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2781 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2781")
end

			yyval28 := yyvs28.item (yyvsp28)
			add_to_actual_parameter_list (yyvs27.item (yyvsp27), yyvs28.item (yyvsp28))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_520
			--|#line 2786 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2786 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2786")
end

			yyval28 := yyvs28.item (yyvsp28)
			if yyval28 /= Void then
				if not yyval28.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyval28.first.type), yyval28)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), Void), yyval28)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_521
			--|#line 2797 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2797 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2797")
end

			yyval28 := yyvs28.item (yyvsp28)
			if yyval28 /= Void then
				if not yyval28.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyval28.first.type), yyval28)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), Void), yyval28)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_522
			--|#line 2808 "et_eiffel_parser.y"
		local
			yyval28: detachable ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2808 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2808")
end

			yyval28 := yyvs28.item (yyvsp28)
			if yyval28 /= Void then
				if not yyval28.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyval28.first.type), yyval28)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), Void), yyval28)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_523
			--|#line 2821 "et_eiffel_parser.y"
		local
			yyval27: detachable ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2821 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2821")
end

			yyval27 := ast_factory.new_labeled_actual_parameter (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)))
			if yyval27 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_524
			--|#line 2830 "et_eiffel_parser.y"
		local
			yyval27: detachable ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2830 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2830")
end

			yyval27 := ast_factory.new_labeled_actual_parameter_semicolon (ast_factory.new_labeled_actual_parameter (yyvs12.item (yyvsp12), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119))), yyvs21.item (yyvsp21))
			if yyval27 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp27 := yyvsp27 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp21 := yyvsp21 -1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_525
			--|#line 2839 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2839 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2839")
end

yyval95 := new_like_feature (Void, yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_526
			--|#line 2841 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2841 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2841")
end

yyval95 := ast_factory.new_like_current (tokens.implicit_attached_type_mark, yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_527
			--|#line 2843 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2843 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2843")
end

yyval95 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp95 := yyvsp95 + 1
	yyvsp113 := yyvsp113 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_528
			--|#line 2847 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2847 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2847")
end

yyval95 := new_like_feature (Void, yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_529
			--|#line 2849 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2849 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2849")
end

yyval95 := new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_530
			--|#line 2851 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2851 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2851")
end

yyval95 := new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_531
			--|#line 2853 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2853 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2853")
end

yyval95 := new_like_feature (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_532
			--|#line 2855 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2855 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2855")
end

yyval95 := new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_533
			--|#line 2857 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2857 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2857")
end

yyval95 := new_like_feature (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_534
			--|#line 2859 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2859 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2859")
end

yyval95 := new_like_feature (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_535
			--|#line 2861 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2861 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2861")
end

yyval95 := new_like_feature (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_536
			--|#line 2863 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2863 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2863")
end

yyval95 := new_like_feature (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_537
			--|#line 2865 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2865 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2865")
end

yyval95 := new_like_feature (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_538
			--|#line 2867 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2867 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2867")
end

yyval95 := ast_factory.new_like_current (tokens.implicit_attached_type_mark, yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_539
			--|#line 2869 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2869 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2869")
end

yyval95 := ast_factory.new_like_current (ast_factory.new_attachment_mark_separate_keyword (tokens.implicit_attached_type_mark, yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_540
			--|#line 2871 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2871 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2871")
end

yyval95 := ast_factory.new_like_current (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_541
			--|#line 2873 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2873 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2873")
end

yyval95 := ast_factory.new_like_current (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_542
			--|#line 2875 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2875 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2875")
end

yyval95 := ast_factory.new_like_current (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_543
			--|#line 2877 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2877 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2877")
end

yyval95 := ast_factory.new_like_current (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_544
			--|#line 2879 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2879 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2879")
end

yyval95 := ast_factory.new_like_current (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_545
			--|#line 2881 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2881 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2881")
end

yyval95 := ast_factory.new_like_current (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_546
			--|#line 2883 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2883 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2883")
end

yyval95 := ast_factory.new_like_current (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_547
			--|#line 2885 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2885 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2885")
end

yyval95 := ast_factory.new_like_current (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp95 := yyvsp95 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -2
	yyvsp10 := yyvsp10 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_548
			--|#line 2887 "et_eiffel_parser.y"
		local
			yyval95: detachable ET_LIKE_TYPE
		do
--|#line 2887 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2887")
end

yyval95 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp95 := yyvsp95 + 1
	yyvsp113 := yyvsp113 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_549
			--|#line 2891 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2891 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2891")
end

yyval113 := ast_factory.new_qualified_like_braced_type (Void, yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_550
			--|#line 2893 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2893 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2893")
end

yyval113 := ast_factory.new_qualified_like_type (Void, yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp113 := yyvsp113 + 1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_551
			--|#line 2897 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2897 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2897")
end

yyval113 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_552
			--|#line 2899 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2899 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2899")
end

yyval113 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_553
			--|#line 2901 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2901 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2901")
end

yyval113 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_554
			--|#line 2903 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2903 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2903")
end

yyval113 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_555
			--|#line 2905 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2905 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2905")
end

yyval113 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_556
			--|#line 2907 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2907 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2907")
end

yyval113 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_557
			--|#line 2909 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2909 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2909")
end

			if system_processor.older_ise_version (ise_6_1_0) then
				raise_error
			else
				yyval113 := ast_factory.new_qualified_like_braced_type (yyvs5.item (yyvsp5 - 3), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp5 := yyvsp5 -4
	yyvsp2 := yyvsp2 -1
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_558
			--|#line 2917 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2917 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2917")
end

			if system_processor.older_ise_version (ise_6_1_0) then
				raise_error
			else
				yyval113 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5 - 3), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp113 := yyvsp113 + 1
	yyvsp5 := yyvsp5 -4
	yyvsp2 := yyvsp2 -2
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_559
			--|#line 2925 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2925 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2925")
end

			if system_processor.older_ise_version (ise_6_1_0) then
				raise_error
			else
				yyval113 := ast_factory.new_qualified_like_braced_type (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_560
			--|#line 2933 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2933 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2933")
end

			if system_processor.older_ise_version (ise_6_1_0) then
				raise_error
			else
				yyval113 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp113 := yyvsp113 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_561
			--|#line 2941 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2941 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2941")
end

yyval113 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_562
			--|#line 2943 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2943 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2943")
end

yyval113 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_563
			--|#line 2945 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2945 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2945")
end

yyval113 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_564
			--|#line 2947 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2947 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2947")
end

yyval113 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_565
			--|#line 2949 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2949 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2949")
end

yyval113 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_mark_separate_keyword (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_566
			--|#line 2951 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2951 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2951")
end

yyval113 := ast_factory.new_qualified_like_type (yyvs5.item (yyvsp5 - 1), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp113 := yyvsp113 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp95 := yyvsp95 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_567
			--|#line 2953 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2953 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2953")
end

yyval113 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_mark_separate_keyword (yyvs5.item (yyvsp5 - 1), yyvs2.item (yyvsp2)), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp113 := yyvsp113 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp2 := yyvsp2 -1
	yyvsp95 := yyvsp95 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_568
			--|#line 2955 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2955 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2955")
end

yyval113 := ast_factory.new_qualified_like_type (yyvs23.item (yyvsp23), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp113 := yyvsp113 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_569
			--|#line 2957 "et_eiffel_parser.y"
		local
			yyval113: detachable ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2957 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2957")
end

yyval113 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_mark_separate_keyword (yyvs23.item (yyvsp23), yyvs2.item (yyvsp2)), yyvs95.item (yyvsp95), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), last_class)
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp113 := yyvsp113 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp2 := yyvsp2 -1
	yyvsp95 := yyvsp95 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_570
			--|#line 2963 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2963 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2963")
end

yyval46 := ast_factory.new_do_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_571
			--|#line 2967 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2967 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2967")
end

yyval46 := ast_factory.new_attribute_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_572
			--|#line 2971 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2971 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2971")
end

yyval46 := ast_factory.new_then_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_573
			--|#line 2975 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2975 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2975")
end

yyval46 := ast_factory.new_then_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_574
			--|#line 2979 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2979 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2979")
end

yyval46 := ast_factory.new_else_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_575
			--|#line 2983 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2983 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2983")
end

yyval46 := ast_factory.new_else_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_576
			--|#line 2987 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2987 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2987")
end

yyval46 := ast_factory.new_rescue_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_577
			--|#line 2991 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2991 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2991")
end

yyval46 := ast_factory.new_from_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_578
			--|#line 2995 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2995 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2995")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp46 := yyvsp46 + 1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_579
			--|#line 2997 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 2997 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2997")
end

yyval46 := yyvs46.item (yyvsp46) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_580
			--|#line 3001 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3001 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3001")
end

yyval46 := ast_factory.new_loop_compound (yyvs2.item (yyvsp2), yyvs46.item (yyvsp46)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_581
			--|#line 3005 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3005 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3005")
end

			yyval46 := yyvs46.item (yyvsp46)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_582
			--|#line 3012 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3012 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3012")
end

yyval46 := ast_factory.new_empty_compound 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp46 := yyvsp46 + 1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_583
			--|#line 3014 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3014 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3014")
end

yyval46 := yyvs46.item (yyvsp46) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_584
			--|#line 3018 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3018 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3018")
end

yyval46 := ast_factory.new_compound (0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp46 := yyvsp46 + 1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_585
			--|#line 3020 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3020 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3020")
end

yyval46 := yyvs46.item (yyvsp46) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_586
			--|#line 3024 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3024 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3024")
end

			if attached yyvs92.item (yyvsp92) as l_instruction then
				yyval46 := ast_factory.new_compound (counter_value + 1)
				if yyval46 /= Void then
					yyval46.put_first (l_instruction)
				end
			else
				yyval46 := ast_factory.new_compound (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp46 := yyvsp46 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_587
			--|#line 3035 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3035 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3035")
end

			yyval46 := yyvs46.item (yyvsp46)
			if yyval46 /= Void and attached yyvs92.item (yyvsp92) as l_instruction then
				yyval46.put_first (l_instruction)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp46 := yyvsp46 -1
	yyvsp92 := yyvsp92 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_588
			--|#line 3035 "et_eiffel_parser.y"
		local
			yyval46: detachable ET_COMPOUND
		do
--|#line 3035 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3035")
end

			if yyvs92.item (yyvsp92) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp46 := yyvsp46 + 1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_589
			--|#line 3056 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3056 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3056")
end

yyval92 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_590
			--|#line 3058 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3058 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3058")
end

yyval92 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_591
			--|#line 3060 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3060 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3060")
end

yyval92 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_592
			--|#line 3062 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3062 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3062")
end

yyval92 := ast_factory.new_assigner_instruction (yyvs37.item (yyvsp37), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp37 := yyvsp37 -1
	yyvsp5 := yyvsp5 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_593
			--|#line 3064 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3064 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3064")
end

yyval92 := ast_factory.new_assigner_instruction (yyvs35.item (yyvsp35), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp35 := yyvsp35 -1
	yyvsp5 := yyvsp5 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_594
			--|#line 3066 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3066 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3066")
end

yyval92 := ast_factory.new_assignment (yyvs128.item (yyvsp128), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp128 := yyvsp128 -1
	yyvsp5 := yyvsp5 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_595
			--|#line 3068 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3068 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3068")
end

yyval92 := ast_factory.new_assignment_attempt (yyvs128.item (yyvsp128), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp128 := yyvsp128 -1
	yyvsp5 := yyvsp5 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_596
			--|#line 3070 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3070 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3070")
end

yyval92 := yyvs84.item (yyvsp84) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp84 := yyvsp84 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_597
			--|#line 3072 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3072 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3072")
end

yyval92 := yyvs91.item (yyvsp91) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp91 := yyvsp91 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_598
			--|#line 3074 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3074 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3074")
end

yyval92 := ast_factory.new_loop_instruction_old_syntax (yyvs46.item (yyvsp46 - 1), yyvs99.item (yyvsp99), yyvs125.item (yyvsp125), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp92 := yyvsp92 + 1
	yyvsp46 := yyvsp46 -2
	yyvsp99 := yyvsp99 -1
	yyvsp125 := yyvsp125 -1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_599
			--|#line 3076 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3076 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3076")
end

			if system_processor.older_ise_version (ise_6_3_7_4554) then
				yyval92 := ast_factory.new_loop_instruction_old_syntax (yyvs46.item (yyvsp46 - 1), yyvs99.item (yyvsp99), Void, ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2))
			else
				yyval92 := ast_factory.new_loop_instruction (yyvs46.item (yyvsp46 - 1), yyvs99.item (yyvsp99), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), Void, yyvs2.item (yyvsp2))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp92 := yyvsp92 + 1
	yyvsp46 := yyvsp46 -2
	yyvsp99 := yyvsp99 -1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_600
			--|#line 3084 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3084 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3084")
end

			if system_processor.older_ise_version (ise_6_3_7_4554) then
				raise_error
			else
				yyval92 := ast_factory.new_loop_instruction (yyvs46.item (yyvsp46 - 1), yyvs99.item (yyvsp99), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), yyvs125.item (yyvsp125), yyvs2.item (yyvsp2))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp92 := yyvsp92 + 1
	yyvsp46 := yyvsp46 -2
	yyvsp99 := yyvsp99 -1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp125 := yyvsp125 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_601
			--|#line 3097 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3097 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3097")
end

yyval92 := new_across_instruction (yyvs25.item (yyvsp25), yyvs46.item (yyvsp46 - 1), yyvs99.item (yyvsp99), yyvs47.item (yyvsp47), yyvs46.item (yyvsp46), yyvs125.item (yyvsp125), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp92 := yyvsp92 + 1
	yyvsp25 := yyvsp25 -1
	yyvsp46 := yyvsp46 -2
	yyvsp99 := yyvsp99 -1
	yyvsp47 := yyvsp47 -1
	yyvsp125 := yyvsp125 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_602
			--|#line 3099 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3099 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3099")
end

yyval92 := yyvs61.item (yyvsp61) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp61 := yyvsp61 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_603
			--|#line 3101 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3101 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3101")
end

yyval92 := yyvs38.item (yyvsp38) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp38 := yyvsp38 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_604
			--|#line 3103 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3103 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3103")
end

yyval92 := yyvs18.item (yyvsp18) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_605
			--|#line 3105 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3105 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3105")
end

yyval92 := ast_factory.new_null_instruction (yyvs21.item (yyvsp21)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp21 := yyvsp21 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_606
			--|#line 3111 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 3111 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3111")
end

start_check_instruction 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_607
			--|#line 3115 "et_eiffel_parser.y"
		local
			yyval38: detachable ET_CHECK_INSTRUCTION
		do
--|#line 3115 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3115")
end

yyval38 := new_check_instruction (yyvs2.item (yyvsp2 - 1), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp38 := yyvsp38 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_608
			--|#line 3117 "et_eiffel_parser.y"
		local
			yyval38: detachable ET_CHECK_INSTRUCTION
		do
--|#line 3117 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3117")
end

yyval38 := new_check_instruction (yyvs2.item (yyvsp2 - 1), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_609
			--|#line 3119 "et_eiffel_parser.y"
		local
			yyval38: detachable ET_CHECK_INSTRUCTION
		do
--|#line 3119 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3119")
end

yyval38 := new_check_instruction (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_610
			--|#line 3121 "et_eiffel_parser.y"
		local
			yyval38: detachable ET_CHECK_INSTRUCTION
		do
--|#line 3121 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3121")
end

yyval38 := new_check_instruction (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp38 := yyvsp38 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	yyvsp46 := yyvsp46 -1
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_611
			--|#line 3127 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3127 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3127")
end

yyval92 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5), yyvs128.item (yyvsp128), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp128 := yyvsp128 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_612
			--|#line 3129 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3129 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3129")
end

yyval92 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1), yyvs128.item (yyvsp128), ast_factory.new_qualified_call (new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp128 := yyvsp128 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_613
			--|#line 3131 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3131 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3131")
end

yyval92 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 1), Void, yyvs5.item (yyvsp5), yyvs128.item (yyvsp128), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp128 := yyvsp128 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_614
			--|#line 3133 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3133 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3133")
end

yyval92 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 2), Void, yyvs5.item (yyvsp5 - 1), yyvs128.item (yyvsp128), ast_factory.new_qualified_call (new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp128 := yyvsp128 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_615
			--|#line 3137 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3137 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3137")
end

yyval92 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)), yyvs128.item (yyvsp128), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp128 := yyvsp128 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_616
			--|#line 3139 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3139 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3139")
end

yyval92 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), yyvs128.item (yyvsp128), ast_factory.new_qualified_call (new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 9
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp128 := yyvsp128 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_617
			--|#line 3141 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3141 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3141")
end

yyval92 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), Void, yyvs128.item (yyvsp128), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp128 := yyvsp128 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_618
			--|#line 3143 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3143 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3143")
end

yyval92 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), Void, yyvs128.item (yyvsp128), ast_factory.new_qualified_call (new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp128 := yyvsp128 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_619
			--|#line 3147 "et_eiffel_parser.y"
		local
			yyval57: detachable ET_CREATE_EXPRESSION
		do
--|#line 3147 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3147")
end

yyval57 := ast_factory.new_create_expression (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp57 := yyvsp57 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_620
			--|#line 3149 "et_eiffel_parser.y"
		local
			yyval57: detachable ET_CREATE_EXPRESSION
		do
--|#line 3149 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3149")
end

yyval57 := ast_factory.new_create_expression (yyvs2.item (yyvsp2), yyvs58.item (yyvsp58), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), ast_factory.new_qualified_call (new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp57 := yyvsp57 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp58 := yyvsp58 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_621
			--|#line 3153 "et_eiffel_parser.y"
		local
			yyval58: detachable ET_CREATION_REGION
		do
--|#line 3153 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3153")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp58 := yyvsp58 + 1
	if yyvsp58 >= yyvsc58 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs58")
		end
		yyvsc58 := yyvsc58 + yyInitial_yyvs_size
		yyvs58 := yyspecial_routines58.aliased_resized_area (yyvs58, yyvsc58)
	end
	yyspecial_routines58.force (yyvs58, yyval58, yyvsp58)
end
		end

	yy_do_action_622
			--|#line 3154 "et_eiffel_parser.y"
		local
			yyval58: detachable ET_CREATION_REGION
		do
--|#line 3154 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3154")
end

yyval58 := ast_factory.new_creation_region (yyvs19.item (yyvsp19 - 1), yyvs12.item (yyvsp12), yyvs19.item (yyvsp19)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp58 := yyvsp58 + 1
	yyvsp19 := yyvsp19 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp58 >= yyvsc58 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs58")
		end
		yyvsc58 := yyvsc58 + yyInitial_yyvs_size
		yyvs58 := yyspecial_routines58.aliased_resized_area (yyvs58, yyvsc58)
	end
	yyspecial_routines58.force (yyvs58, yyval58, yyvsp58)
end
		end

	yy_do_action_623
			--|#line 3160 "et_eiffel_parser.y"
		local
			yyval84: detachable ET_IF_INSTRUCTION
		do
--|#line 3160 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3160")
end

yyval84 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), Void, Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp84 := yyvsp84 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_624
			--|#line 3162 "et_eiffel_parser.y"
		local
			yyval84: detachable ET_IF_INSTRUCTION
		do
--|#line 3162 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3162")
end

yyval84 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46 - 1), Void, yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp84 := yyvsp84 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp46 := yyvsp46 -2
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_625
			--|#line 3164 "et_eiffel_parser.y"
		local
			yyval84: detachable ET_IF_INSTRUCTION
		do
--|#line 3164 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3164")
end

yyval84 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46), yyvs65.item (yyvsp65), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp84 := yyvsp84 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp46 := yyvsp46 -1
	yyvsp65 := yyvsp65 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_626
			--|#line 3166 "et_eiffel_parser.y"
		local
			yyval84: detachable ET_IF_INSTRUCTION
		do
--|#line 3166 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3166")
end

yyval84 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46 - 1), yyvs65.item (yyvsp65), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp84 := yyvsp84 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp46 := yyvsp46 -2
	yyvsp65 := yyvsp65 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_627
			--|#line 3170 "et_eiffel_parser.y"
		local
			yyval65: detachable ET_ELSEIF_PART_LIST
		do
--|#line 3170 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3170")
end

			yyval65 := yyvs65.item (yyvsp65)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_628
			--|#line 3177 "et_eiffel_parser.y"
		local
			yyval65: detachable ET_ELSEIF_PART_LIST
		do
--|#line 3177 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3177")
end

			yyval65 := ast_factory.new_elseif_part_list (counter_value)
			if yyval65 /= Void and attached yyvs64.item (yyvsp64) as l_elseif_part then
				yyval65.put_first (l_elseif_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp65 := yyvsp65 + 1
	yyvsp64 := yyvsp64 -1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_629
			--|#line 3184 "et_eiffel_parser.y"
		local
			yyval65: detachable ET_ELSEIF_PART_LIST
		do
--|#line 3184 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3184")
end

			yyval65 := yyvs65.item (yyvsp65)
			if yyval65 /= Void and attached yyvs64.item (yyvsp64) as l_elseif_part then
				yyval65.put_first (l_elseif_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp64 := yyvsp64 -1
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_630
			--|#line 3193 "et_eiffel_parser.y"
		local
			yyval64: detachable ET_ELSEIF_PART
		do
--|#line 3193 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3193")
end

			yyval64 := ast_factory.new_elseif_part (ast_factory.new_conditional (yyvs2.item (yyvsp2), yyvs68.item (yyvsp68)), yyvs46.item (yyvsp46))
			if yyval64 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp64 := yyvsp64 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp64 >= yyvsc64 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs64")
		end
		yyvsc64 := yyvsc64 + yyInitial_yyvs_size
		yyvs64 := yyspecial_routines64.aliased_resized_area (yyvs64, yyvsc64)
	end
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_631
			--|#line 3204 "et_eiffel_parser.y"
		local
			yyval83: detachable ET_IF_EXPRESSION
		do
--|#line 3204 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3204")
end

yyval83 := ast_factory.new_if_expression (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 3), yyvs68.item (yyvsp68 - 2)), yyvs2.item (yyvsp2 - 2), yyvs68.item (yyvsp68 - 1), Void, yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp83 := yyvsp83 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp68 := yyvsp68 -3
	if yyvsp83 >= yyvsc83 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs83")
		end
		yyvsc83 := yyvsc83 + yyInitial_yyvs_size
		yyvs83 := yyspecial_routines83.aliased_resized_area (yyvs83, yyvsc83)
	end
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_632
			--|#line 3206 "et_eiffel_parser.y"
		local
			yyval83: detachable ET_IF_EXPRESSION
		do
--|#line 3206 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3206")
end

yyval83 := ast_factory.new_if_expression (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 3), yyvs68.item (yyvsp68 - 2)), yyvs2.item (yyvsp2 - 2), yyvs68.item (yyvsp68 - 1), yyvs63.item (yyvsp63), yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp83 := yyvsp83 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp68 := yyvsp68 -3
	yyvsp63 := yyvsp63 -1
	if yyvsp83 >= yyvsc83 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs83")
		end
		yyvsc83 := yyvsc83 + yyInitial_yyvs_size
		yyvs83 := yyspecial_routines83.aliased_resized_area (yyvs83, yyvsc83)
	end
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_633
			--|#line 3210 "et_eiffel_parser.y"
		local
			yyval63: detachable ET_ELSEIF_EXPRESSION_LIST
		do
--|#line 3210 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3210")
end

			yyval63 := yyvs63.item (yyvsp63)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_634
			--|#line 3217 "et_eiffel_parser.y"
		local
			yyval63: detachable ET_ELSEIF_EXPRESSION_LIST
		do
--|#line 3217 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3217")
end

			yyval63 := ast_factory.new_elseif_expression_list (counter_value)
			if yyval63 /= Void and attached yyvs62.item (yyvsp62) as l_elseif_part then
				yyval63.put_first (l_elseif_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp63 := yyvsp63 + 1
	yyvsp62 := yyvsp62 -1
	if yyvsp63 >= yyvsc63 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs63")
		end
		yyvsc63 := yyvsc63 + yyInitial_yyvs_size
		yyvs63 := yyspecial_routines63.aliased_resized_area (yyvs63, yyvsc63)
	end
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_635
			--|#line 3224 "et_eiffel_parser.y"
		local
			yyval63: detachable ET_ELSEIF_EXPRESSION_LIST
		do
--|#line 3224 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3224")
end

			yyval63 := yyvs63.item (yyvsp63)
			if yyval63 /= Void and attached yyvs62.item (yyvsp62) as l_elseif_part then
				yyval63.put_first (l_elseif_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp62 := yyvsp62 -1
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_636
			--|#line 3233 "et_eiffel_parser.y"
		local
			yyval62: detachable ET_ELSEIF_EXPRESSION
		do
--|#line 3233 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3233")
end

			yyval62 := ast_factory.new_elseif_expression (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68 - 1)), yyvs2.item (yyvsp2), yyvs68.item (yyvsp68))
			if yyval62 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp62 := yyvsp62 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -2
	if yyvsp62 >= yyvsc62 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs62")
		end
		yyvsc62 := yyvsc62 + yyInitial_yyvs_size
		yyvs62 := yyspecial_routines62.aliased_resized_area (yyvs62, yyvsc62)
	end
	yyspecial_routines62.force (yyvs62, yyval62, yyvsp62)
end
		end

	yy_do_action_637
			--|#line 3244 "et_eiffel_parser.y"
		local
			yyval91: detachable ET_INSPECT_INSTRUCTION
		do
--|#line 3244 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3244")
end

yyval91 := ast_factory.new_inspect_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs127.item (yyvsp127), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp91 := yyvsp91 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp127 := yyvsp127 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_638
			--|#line 3246 "et_eiffel_parser.y"
		local
			yyval91: detachable ET_INSPECT_INSTRUCTION
		do
--|#line 3246 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3246")
end

yyval91 := ast_factory.new_inspect_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs127.item (yyvsp127), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp91 := yyvsp91 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp127 := yyvsp127 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_639
			--|#line 3250 "et_eiffel_parser.y"
		local
			yyval127: detachable ET_WHEN_PART_LIST
		do
--|#line 3250 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3250")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp127 := yyvsp127 + 1
	if yyvsp127 >= yyvsc127 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs127")
		end
		yyvsc127 := yyvsc127 + yyInitial_yyvs_size
		yyvs127 := yyspecial_routines127.aliased_resized_area (yyvs127, yyvsc127)
	end
	yyspecial_routines127.force (yyvs127, yyval127, yyvsp127)
end
		end

	yy_do_action_640
			--|#line 3252 "et_eiffel_parser.y"
		local
			yyval127: detachable ET_WHEN_PART_LIST
		do
--|#line 3252 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3252")
end

			yyval127 := yyvs127.item (yyvsp127)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines127.force (yyvs127, yyval127, yyvsp127)
end
		end

	yy_do_action_641
			--|#line 3259 "et_eiffel_parser.y"
		local
			yyval127: detachable ET_WHEN_PART_LIST
		do
--|#line 3259 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3259")
end

			yyval127 := ast_factory.new_when_part_list (counter_value)
			if yyval127 /= Void and attached yyvs126.item (yyvsp126) as l_when_part then
				yyval127.put_first (l_when_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp127 := yyvsp127 + 1
	yyvsp126 := yyvsp126 -1
	if yyvsp127 >= yyvsc127 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs127")
		end
		yyvsc127 := yyvsc127 + yyInitial_yyvs_size
		yyvs127 := yyspecial_routines127.aliased_resized_area (yyvs127, yyvsc127)
	end
	yyspecial_routines127.force (yyvs127, yyval127, yyvsp127)
end
		end

	yy_do_action_642
			--|#line 3266 "et_eiffel_parser.y"
		local
			yyval127: detachable ET_WHEN_PART_LIST
		do
--|#line 3266 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3266")
end

			yyval127 := yyvs127.item (yyvsp127)
			if yyval127 /= Void and attached yyvs126.item (yyvsp126) as l_when_part then
				yyval127.put_first (l_when_part)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp126 := yyvsp126 -1
	yyspecial_routines127.force (yyvs127, yyval127, yyvsp127)
end
		end

	yy_do_action_643
			--|#line 3275 "et_eiffel_parser.y"
		local
			yyval126: detachable ET_WHEN_PART
		do
--|#line 3275 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3275")
end

			yyval126 := ast_factory.new_when_part (yyvs42.item (yyvsp42), yyvs46.item (yyvsp46))
			if yyval126 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp126 := yyvsp126 + 1
	yyvsp42 := yyvsp42 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp126 >= yyvsc126 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs126")
		end
		yyvsc126 := yyvsc126 + yyInitial_yyvs_size
		yyvs126 := yyspecial_routines126.aliased_resized_area (yyvs126, yyvsc126)
	end
	yyspecial_routines126.force (yyvs126, yyval126, yyvsp126)
end
		end

	yy_do_action_644
			--|#line 3284 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3284 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3284")
end

yyval42 := ast_factory.new_choice_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_645
			--|#line 3286 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3286")
end

			yyval42 := yyvs42.item (yyvsp42)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp42 := yyvsp42 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_646
			--|#line 3286 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3286")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp42 := yyvsp42 + 1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_647
			--|#line 3299 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3299 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3299")
end

			if attached yyvs39.item (yyvsp39) as l_choice then
				yyval42 := ast_factory.new_choice_list (last_keyword, counter_value + 1)
				if yyval42 /= Void then
					yyval42.put_first (l_choice)
				end
			else
				yyval42 := ast_factory.new_choice_list (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp39 := yyvsp39 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_648
			--|#line 3310 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3310 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3310")
end

			yyval42 := ast_factory.new_choice_list (last_keyword, counter_value)
			if yyval42 /= Void and attached yyvs41.item (yyvsp41) as l_choice then
				yyval42.put_first (l_choice)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp41 := yyvsp41 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_649
			--|#line 3318 "et_eiffel_parser.y"
		local
			yyval42: detachable ET_CHOICE_LIST
		do
--|#line 3318 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3318")
end

			yyval42 := yyvs42.item (yyvsp42)
			if yyval42 /= Void and attached yyvs41.item (yyvsp41) as l_choice then
				yyval42.put_first (l_choice)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp41 := yyvsp41 -1
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_650
			--|#line 3327 "et_eiffel_parser.y"
		local
			yyval41: detachable ET_CHOICE_ITEM
		do
--|#line 3327 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3327")
end

			yyval41 := ast_factory.new_choice_comma (yyvs39.item (yyvsp39), yyvs5.item (yyvsp5))
			if yyval41 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp41 := yyvsp41 + 1
	yyvsp39 := yyvsp39 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp41 >= yyvsc41 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs41")
		end
		yyvsc41 := yyvsc41 + yyInitial_yyvs_size
		yyvs41 := yyspecial_routines41.aliased_resized_area (yyvs41, yyvsc41)
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
		end

	yy_do_action_651
			--|#line 3336 "et_eiffel_parser.y"
		local
			yyval39: detachable ET_CHOICE
		do
--|#line 3336 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3336")
end

yyval39 := yyvs40.item (yyvsp40) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp39 := yyvsp39 + 1
	yyvsp40 := yyvsp40 -1
	if yyvsp39 >= yyvsc39 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs39")
		end
		yyvsc39 := yyvsc39 + yyInitial_yyvs_size
		yyvs39 := yyspecial_routines39.aliased_resized_area (yyvs39, yyvsc39)
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
		end

	yy_do_action_652
			--|#line 3338 "et_eiffel_parser.y"
		local
			yyval39: detachable ET_CHOICE
		do
--|#line 3338 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3338")
end

yyval39 := ast_factory.new_choice_range (yyvs40.item (yyvsp40 - 1), yyvs5.item (yyvsp5), yyvs40.item (yyvsp40)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp39 := yyvsp39 + 1
	yyvsp40 := yyvsp40 -2
	yyvsp5 := yyvsp5 -1
	if yyvsp39 >= yyvsc39 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs39")
		end
		yyvsc39 := yyvsc39 + yyInitial_yyvs_size
		yyvs39 := yyspecial_routines39.aliased_resized_area (yyvs39, yyvsc39)
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
		end

	yy_do_action_653
			--|#line 3342 "et_eiffel_parser.y"
		local
			yyval40: detachable ET_CHOICE_CONSTANT
		do
--|#line 3342 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3342")
end

yyval40 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp40 := yyvsp40 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_654
			--|#line 3344 "et_eiffel_parser.y"
		local
			yyval40: detachable ET_CHOICE_CONSTANT
		do
--|#line 3344 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3344")
end

yyval40 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp40 := yyvsp40 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_655
			--|#line 3346 "et_eiffel_parser.y"
		local
			yyval40: detachable ET_CHOICE_CONSTANT
		do
--|#line 3346 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3346")
end

yyval40 := new_choice_attribute_constant (yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp40 := yyvsp40 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_656
			--|#line 3348 "et_eiffel_parser.y"
		local
			yyval40: detachable ET_CHOICE_CONSTANT
		do
--|#line 3348 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3348")
end

yyval40 := yyvs117.item (yyvsp117) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp40 := yyvsp40 + 1
	yyvsp117 := yyvsp117 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_657
			--|#line 3354 "et_eiffel_parser.y"
		local
			yyval25: detachable ET_ACROSS_INSTRUCTION
		do
--|#line 3354 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3354")
end

yyval25 := new_across_instruction_header (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp25 := yyvsp25 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp25 >= yyvsc25 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs25")
		end
		yyvsc25 := yyvsc25 + yyInitial_yyvs_size
		yyvs25 := yyspecial_routines25.aliased_resized_area (yyvs25, yyvsc25)
	end
	yyspecial_routines25.force (yyvs25, yyval25, yyvsp25)
end
		end

	yy_do_action_658
			--|#line 3356 "et_eiffel_parser.y"
		local
			yyval25: detachable ET_ACROSS_INSTRUCTION
		do
--|#line 3356 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3356")
end

yyval25 := new_across_instruction_header (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp25 := yyvsp25 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp25 >= yyvsc25 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs25")
		end
		yyvsc25 := yyvsc25 + yyInitial_yyvs_size
		yyvs25 := yyspecial_routines25.aliased_resized_area (yyvs25, yyvsc25)
	end
	yyspecial_routines25.force (yyvs25, yyval25, yyvsp25)
end
		end

	yy_do_action_659
			--|#line 3360 "et_eiffel_parser.y"
		local
			yyval47: detachable ET_CONDITIONAL
		do
--|#line 3360 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3360")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp47 := yyvsp47 + 1
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_660
			--|#line 3362 "et_eiffel_parser.y"
		local
			yyval47: detachable ET_CONDITIONAL
		do
--|#line 3362 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3362")
end

yyval47 := ast_factory.new_conditional (yyvs2.item (yyvsp2), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp47 := yyvsp47 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_661
			--|#line 3368 "et_eiffel_parser.y"
		local
			yyval61: detachable ET_DEBUG_INSTRUCTION
		do
--|#line 3368 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3368")
end

yyval61 := ast_factory.new_debug_instruction (yyvs102.item (yyvsp102), ast_factory.new_debug_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46)), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp61 := yyvsp61 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -1
	if yyvsp61 >= yyvsc61 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs61")
		end
		yyvsc61 := yyvsc61 + yyInitial_yyvs_size
		yyvs61 := yyspecial_routines61.aliased_resized_area (yyvs61, yyvsc61)
	end
	yyspecial_routines61.force (yyvs61, yyval61, yyvsp61)
end
		end

	yy_do_action_662
			--|#line 3372 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3372 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3372")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp102 := yyvsp102 + 1
	if yyvsp102 >= yyvsc102 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs102")
		end
		yyvsc102 := yyvsc102 + yyInitial_yyvs_size
		yyvs102 := yyspecial_routines102.aliased_resized_area (yyvs102, yyvsc102)
	end
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_663
			--|#line 3374 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3374 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3374")
end

yyval102 := ast_factory.new_manifest_string_list (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp102 := yyvsp102 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp102 >= yyvsc102 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs102")
		end
		yyvsc102 := yyvsc102 + yyInitial_yyvs_size
		yyvs102 := yyspecial_routines102.aliased_resized_area (yyvs102, yyvsc102)
	end
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_664
			--|#line 3376 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3376 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3376")
end

			yyval102 := yyvs102.item (yyvsp102)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp102 := yyvsp102 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_665
			--|#line 3376 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3376 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3376")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp102 := yyvsp102 + 1
	if yyvsp102 >= yyvsc102 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs102")
		end
		yyvsc102 := yyvsc102 + yyInitial_yyvs_size
		yyvs102 := yyspecial_routines102.aliased_resized_area (yyvs102, yyvsc102)
	end
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_666
			--|#line 3389 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3389 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3389")
end

			if attached yyvs15.item (yyvsp15) as l_manifest_string then
				yyval102 := ast_factory.new_manifest_string_list (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval102 /= Void then
					yyval102.put_first (l_manifest_string)
				end
			else
				yyval102 := ast_factory.new_manifest_string_list (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp102 := yyvsp102 + 1
	yyvsp15 := yyvsp15 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp102 >= yyvsc102 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs102")
		end
		yyvsc102 := yyvsc102 + yyInitial_yyvs_size
		yyvs102 := yyspecial_routines102.aliased_resized_area (yyvs102, yyvsc102)
	end
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_667
			--|#line 3400 "et_eiffel_parser.y"
		local
			yyval102: detachable ET_MANIFEST_STRING_LIST
		do
--|#line 3400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3400")
end

			yyval102 := yyvs102.item (yyvsp102)
			if yyval102 /= Void and attached yyvs101.item (yyvsp101) as l_manifest_string then
				yyval102.put_first (l_manifest_string)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp101 := yyvsp101 -1
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_668
			--|#line 3409 "et_eiffel_parser.y"
		local
			yyval101: detachable ET_MANIFEST_STRING_ITEM
		do
--|#line 3409 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3409")
end

			yyval101 := ast_factory.new_manifest_string_comma (yyvs15.item (yyvsp15), yyvs5.item (yyvsp5))
			if yyval101 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp101 := yyvsp101 + 1
	yyvsp15 := yyvsp15 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp101 >= yyvsc101 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs101")
		end
		yyvsc101 := yyvsc101 + yyInitial_yyvs_size
		yyvs101 := yyspecial_routines101.aliased_resized_area (yyvs101, yyvsc101)
	end
	yyspecial_routines101.force (yyvs101, yyval101, yyvsp101)
end
		end

	yy_do_action_669
			--|#line 3420 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3420 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3420")
end

yyval92 := new_unqualified_call_instruction (yyvs12.item (yyvsp12), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_670
			--|#line 3422 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3422 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3422")
end

yyval92 := ast_factory.new_qualified_call_instruction (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_671
			--|#line 3424 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3424 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3424")
end

yyval92 := ast_factory.new_qualified_call_instruction (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_672
			--|#line 3426 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3426 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3426")
end

yyval92 := ast_factory.new_precursor_instruction (False, yyvs4.item (yyvsp4), Void, yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_673
			--|#line 3428 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3428 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3428")
end

yyval92 := ast_factory.new_precursor_instruction (False, yyvs4.item (yyvsp4), ast_factory.new_precursor_class_name (yyvs5.item (yyvsp5 - 1), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp92 := yyvsp92 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp5 := yyvsp5 -2
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_674
			--|#line 3430 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3430 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3430")
end

yyval92 := ast_factory.new_static_call_instruction (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_675
			--|#line 3432 "et_eiffel_parser.y"
		local
			yyval92: detachable ET_INSTRUCTION
		do
--|#line 3432 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3432")
end

yyval92 := ast_factory.new_static_call_instruction (Void, ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_676
			--|#line 3436 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3436 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3436")
end

yyval68 := new_unqualified_call_expression (yyvs12.item (yyvsp12), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_677
			--|#line 3438 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3438 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3438")
end

yyval68 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_678
			--|#line 3442 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3442 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3442")
end

yyval68 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_679
			--|#line 3446 "et_eiffel_parser.y"
		local
			yyval37: detachable ET_QUALIFIED_CALL_EXPRESSION
		do
--|#line 3446 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3446")
end

yyval37 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp37 >= yyvsc37 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs37")
		end
		yyvsc37 := yyvsc37 + yyInitial_yyvs_size
		yyvs37 := yyspecial_routines37.aliased_resized_area (yyvs37, yyvsc37)
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_680
			--|#line 3448 "et_eiffel_parser.y"
		local
			yyval37: detachable ET_QUALIFIED_CALL_EXPRESSION
		do
--|#line 3448 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3448")
end

yyval37 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp37 >= yyvsc37 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs37")
		end
		yyvsc37 := yyvsc37 + yyInitial_yyvs_size
		yyvs37 := yyspecial_routines37.aliased_resized_area (yyvs37, yyvsc37)
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_681
			--|#line 3452 "et_eiffel_parser.y"
		local
			yyval117: detachable ET_STATIC_CALL_EXPRESSION
		do
--|#line 3452 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3452")
end

yyval117 := ast_factory.new_static_call_expression (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp117 := yyvsp117 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp117 >= yyvsc117 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs117")
		end
		yyvsc117 := yyvsc117 + yyInitial_yyvs_size
		yyvs117 := yyspecial_routines117.aliased_resized_area (yyvs117, yyvsc117)
	end
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_682
			--|#line 3454 "et_eiffel_parser.y"
		local
			yyval117: detachable ET_STATIC_CALL_EXPRESSION
		do
--|#line 3454 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3454")
end

yyval117 := ast_factory.new_static_call_expression (Void, ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5 - 1)), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp117 := yyvsp117 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp117 >= yyvsc117 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs117")
		end
		yyvsc117 := yyvsc117 + yyInitial_yyvs_size
		yyvs117 := yyspecial_routines117.aliased_resized_area (yyvs117, yyvsc117)
	end
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_683
			--|#line 3458 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3458 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3458")
end

yyval68 := ast_factory.new_precursor_expression (False, yyvs4.item (yyvsp4), Void, yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_684
			--|#line 3460 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3460 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3460")
end

yyval68 := ast_factory.new_precursor_expression (False, yyvs4.item (yyvsp4), ast_factory.new_precursor_class_name (yyvs5.item (yyvsp5 - 1), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp68 := yyvsp68 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp5 := yyvsp5 -2
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_685
			--|#line 3464 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3464 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3464")
end

yyval68 := new_unqualified_call_expression (yyvs12.item (yyvsp12), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_686
			--|#line 3466 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3466 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3466")
end

yyval68 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_687
			--|#line 3468 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3468 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3468")
end

yyval68 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_688
			--|#line 3470 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3470 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3470")
end

yyval68 := yyvs105.item (yyvsp105) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp105 := yyvsp105 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_689
			--|#line 3472 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3472 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3472")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_690
			--|#line 3474 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3474 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3474")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval68 := yyvs35.item (yyvsp35)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp35 := yyvsp35 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_691
			--|#line 3482 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3482 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3482")
end

yyval68 := yyvs117.item (yyvsp117) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp117 := yyvsp117 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_692
			--|#line 3484 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3484 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3484")
end

yyval68 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_693
			--|#line 3488 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3488 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3488")
end

			if system_processor.older_ise_version (ise_5_7_59914) then
				raise_error
			else
				yyval68 := yyvs35.item (yyvsp35)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp35 := yyvsp35 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_694
			--|#line 3496 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3496 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3496")
end

yyval68 := ast_factory.new_qualified_call_expression (yyvs68.item (yyvsp68), new_dot_feature_name (yyvs5.item (yyvsp5), yyvs12.item (yyvsp12)), yyvs26.item (yyvsp26)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp12 := yyvsp12 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_695
			--|#line 3502 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3502 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3502")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp26 := yyvsp26 + 1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_696
			--|#line 3504 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3504 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3504")
end

yyval26 := ast_factory.new_actual_arguments (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp26 := yyvsp26 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_697
			--|#line 3506 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3506 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3506")
end

			yyval26 := yyvs26.item (yyvsp26)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp26 := yyvsp26 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_698
			--|#line 3506 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3506 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3506")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp26 := yyvsp26 + 1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_699
			--|#line 3519 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3519 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3519")
end

			if attached yyvs68.item (yyvsp68) as l_expression then
				yyval26 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval26 /= Void then
					yyval26.put_first (l_expression)
				end
			else
				yyval26 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp26 := yyvsp26 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_700
			--|#line 3530 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3530 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3530")
end

			yyval26 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval26 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval26.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp26 := yyvsp26 + 1
	yyvsp69 := yyvsp69 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_701
			--|#line 3538 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3538 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3538")
end

			yyval26 := yyvs26.item (yyvsp26)
			if yyval26 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval26.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 -1
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_702
			--|#line 3547 "et_eiffel_parser.y"
		local
			yyval69: detachable ET_EXPRESSION_ITEM
		do
--|#line 3547 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3547")
end

			yyval69 := ast_factory.new_expression_comma (yyvs68.item (yyvsp68), yyvs5.item (yyvsp5))
			if yyval69 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp69 >= yyvsc69 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs69")
		end
		yyvsc69 := yyvsc69 + yyInitial_yyvs_size
		yyvs69 := yyspecial_routines69.aliased_resized_area (yyvs69, yyvsc69)
	end
	yyspecial_routines69.force (yyvs69, yyval69, yyvsp69)
end
		end

	yy_do_action_703
			--|#line 3556 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3556 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3556")
end

yyval68 := new_feature_address (yyvs5.item (yyvsp5), yyvs75.item (yyvsp75)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp75 := yyvsp75 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_704
			--|#line 3558 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3558 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3558")
end

yyval68 := ast_factory.new_current_address (yyvs5.item (yyvsp5), yyvs10.item (yyvsp10)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp10 := yyvsp10 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_705
			--|#line 3560 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3560 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3560")
end

yyval68 := ast_factory.new_result_address (yyvs5.item (yyvsp5), yyvs17.item (yyvsp17)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp17 := yyvsp17 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_706
			--|#line 3562 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3562 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3562")
end

yyval68 := ast_factory.new_expression_address (yyvs5.item (yyvsp5), yyvs105.item (yyvsp105)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp105 := yyvsp105 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_707
			--|#line 3569 "et_eiffel_parser.y"
		local
			yyval128: detachable ET_WRITABLE
		do
--|#line 3569 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3569")
end

yyval128 := new_writable (yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp128 := yyvsp128 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp128 >= yyvsc128 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs128")
		end
		yyvsc128 := yyvsc128 + yyInitial_yyvs_size
		yyvs128 := yyspecial_routines128.aliased_resized_area (yyvs128, yyvsc128)
	end
	yyspecial_routines128.force (yyvs128, yyval128, yyvsp128)
end
		end

	yy_do_action_708
			--|#line 3571 "et_eiffel_parser.y"
		local
			yyval128: detachable ET_WRITABLE
		do
--|#line 3571 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3571")
end

yyval128 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp128 := yyvsp128 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp128 >= yyvsc128 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs128")
		end
		yyvsc128 := yyvsc128 + yyInitial_yyvs_size
		yyvs128 := yyspecial_routines128.aliased_resized_area (yyvs128, yyvsc128)
	end
	yyspecial_routines128.force (yyvs128, yyval128, yyvsp128)
end
		end

	yy_do_action_709
			--|#line 3577 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3577 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3577")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_710
			--|#line 3579 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3579 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3579")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_711
			--|#line 3583 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3583 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3583")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), ast_factory.new_infix_free_operator (yyvs11.item (yyvsp11)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp11 := yyvsp11 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_712
			--|#line 3585 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3585 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3585")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), ast_factory.new_infix_plus_operator (yyvs19.item (yyvsp19)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_713
			--|#line 3587 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3587 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3587")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), ast_factory.new_infix_minus_operator (yyvs19.item (yyvsp19)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_714
			--|#line 3589 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3589 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3589")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_715
			--|#line 3591 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3591 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3591")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_716
			--|#line 3593 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3593 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3593")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_717
			--|#line 3595 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3595 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3595")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_718
			--|#line 3597 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3597 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3597")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_719
			--|#line 3599 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3599 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3599")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_720
			--|#line 3601 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3601 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3601")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_721
			--|#line 3603 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3603 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3603")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_722
			--|#line 3605 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3605 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3605")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_723
			--|#line 3607 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3607 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3607")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs14.item (yyvsp14), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_724
			--|#line 3609 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3609 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3609")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs14.item (yyvsp14), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_725
			--|#line 3611 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3611 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3611")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs14.item (yyvsp14), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_726
			--|#line 3613 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3613 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3613")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), ast_factory.new_infix_and_then_operator (yyvs14.item (yyvsp14), yyvs2.item (yyvsp2)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_727
			--|#line 3615 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3615 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3615")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), ast_factory.new_infix_or_else_operator (yyvs14.item (yyvsp14), yyvs2.item (yyvsp2)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_728
			--|#line 3617 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3617 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3617")
end

yyval68 := ast_factory.new_infix_expression (yyvs68.item (yyvsp68 - 1), yyvs14.item (yyvsp14), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp14 := yyvsp14 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_729
			--|#line 3619 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3619 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3619")
end

yyval68 := ast_factory.new_equality_expression (yyvs68.item (yyvsp68 - 1), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_730
			--|#line 3621 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3621 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3621")
end

yyval68 := ast_factory.new_equality_expression (yyvs68.item (yyvsp68 - 1), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_731
			--|#line 3623 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3623 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3623")
end

yyval68 := ast_factory.new_object_equality_expression (yyvs68.item (yyvsp68 - 1), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_732
			--|#line 3625 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3625 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3625")
end

yyval68 := ast_factory.new_object_equality_expression (yyvs68.item (yyvsp68 - 1), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_733
			--|#line 3629 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3629 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3629")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_734
			--|#line 3631 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3631 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3631")
end

yyval68 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_735
			--|#line 3633 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3633 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3633")
end

yyval68 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_736
			--|#line 3635 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3635 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3635")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_737
			--|#line 3637 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3637 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3637")
end

yyval68 := yyvs35.item (yyvsp35) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp35 := yyvsp35 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_738
			--|#line 3639 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3639 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3639")
end

yyval68 := ast_factory.new_manifest_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_739
			--|#line 3643 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3643 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3643")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_740
			--|#line 3645 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3645 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3645")
end

yyval68 := yyvs35.item (yyvsp35) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp35 := yyvsp35 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_741
			--|#line 3647 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3647 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3647")
end

yyval68 := yyvs57.item (yyvsp57) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp57 := yyvsp57 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_742
			--|#line 3649 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3649 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3649")
end

yyval68 := yyvs24.item (yyvsp24) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp24 := yyvsp24 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_743
			--|#line 3651 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3651 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3651")
end

yyval68 := yyvs24.item (yyvsp24) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp24 := yyvsp24 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_744
			--|#line 3653 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3653 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3653")
end

yyval68 := yyvs83.item (yyvsp83) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp83 := yyvsp83 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_745
			--|#line 3655 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3655 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3655")
end

yyval68 := yyvs103.item (yyvsp103) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp103 := yyvsp103 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_746
			--|#line 3657 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3657 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3657")
end

yyval68 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_747
			--|#line 3659 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3659 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3659")
end

yyval68 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_748
			--|#line 3661 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3661 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3661")
end

yyval68 := new_prefix_plus_expression (yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_749
			--|#line 3663 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3663 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3663")
end

yyval68 := new_prefix_minus_expression (yyvs19.item (yyvsp19), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_750
			--|#line 3665 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3665 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3665")
end

yyval68 := ast_factory.new_prefix_expression (yyvs14.item (yyvsp14), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp14 := yyvsp14 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_751
			--|#line 3667 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3667 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3667")
end

yyval68 := ast_factory.new_prefix_expression (ast_factory.new_prefix_free_operator (yyvs11.item (yyvsp11)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp11 := yyvsp11 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_752
			--|#line 3669 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3669 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3669")
end

yyval68 := ast_factory.new_old_expression (yyvs2.item (yyvsp2), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_753
			--|#line 3671 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3671 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3671")
end

			if system_processor.older_ise_version (ise_6_1_0) then
				raise_error
			else
				yyval68 := new_old_object_test (yyvs5.item (yyvsp5 - 2), yyvs12.item (yyvsp12), yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5), yyvs68.item (yyvsp68))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp5 := yyvsp5 -3
	yyvsp12 := yyvsp12 -1
	yyvsp119 := yyvsp119 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_754
			--|#line 3679 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3679 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3679")
end

yyval68 := ast_factory.new_object_test (yyvs2.item (yyvsp2), Void, yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_755
			--|#line 3681 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3681 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3681")
end

yyval68 := ast_factory.new_object_test (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)), yyvs68.item (yyvsp68)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_756
			--|#line 3683 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3683 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3683")
end

yyval68 := new_named_object_test (yyvs2.item (yyvsp2 - 1), Void, yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_757
			--|#line 3685 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3685 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3685")
end

yyval68 := new_named_object_test (yyvs2.item (yyvsp2 - 1), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp12 := yyvsp12 -1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_758
			--|#line 3689 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3689 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3689")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_759
			--|#line 3691 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3691 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3691")
end

yyval68 := yyvs117.item (yyvsp117) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp117 := yyvsp117 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_760
			--|#line 3693 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3693 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3693")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_761
			--|#line 3695 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3695 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3695")
end

yyval68 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_762
			--|#line 3697 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3697 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3697")
end

yyval68 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_763
			--|#line 3699 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3699 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3699")
end

yyval68 := yyvs105.item (yyvsp105) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp105 := yyvsp105 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_764
			--|#line 3701 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3701 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3701")
end

yyval68 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_765
			--|#line 3703 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3703 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3703")
end

yyval68 := yyvs36.item (yyvsp36) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp36 := yyvsp36 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_766
			--|#line 3705 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3705 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3705")
end

yyval68 := yyvs90.item (yyvsp90) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp90 := yyvsp90 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_767
			--|#line 3707 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3707 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3707")
end

yyval68 := yyvs20.item (yyvsp20) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp20 := yyvsp20 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_768
			--|#line 3709 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3709 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3709")
end

yyval68 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_769
			--|#line 3711 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3711 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3711")
end

yyval68 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_770
			--|#line 3713 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3713 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3713")
end

yyval68 := new_once_manifest_string (yyvs2.item (yyvsp2), yyvs15.item (yyvsp15)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp15 := yyvsp15 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_771
			--|#line 3746 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3746 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3746")
end

yyval68 := yyvs100.item (yyvsp100) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp100 := yyvsp100 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_772
			--|#line 3748 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3748 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3748")
end

yyval68 := yyvs118.item (yyvsp118) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp118 := yyvsp118 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_773
			--|#line 3750 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3750 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3750")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_774
			--|#line 3754 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3754 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3754")
end

yyval68 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_775
			--|#line 3756 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3756 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3756")
end

yyval68 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_776
			--|#line 3758 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3758 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3758")
end

			if system_processor.older_ise_version (ise_17_11_0) then
				raise_error
			else
				yyval68 := yyvs100.item (yyvsp100)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp100 := yyvsp100 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_777
			--|#line 3766 "et_eiffel_parser.y"
		local
			yyval68: detachable ET_EXPRESSION
		do
--|#line 3766 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3766")
end

yyval68 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_778
			--|#line 3770 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3770 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3770")
end

yyval35 := yyvs35.item (yyvsp35) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_779
			--|#line 3772 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3772 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3772")
end

yyval35 := yyvs35.item (yyvsp35) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_780
			--|#line 3776 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3776 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3776")
end

			yyval35 := ast_factory.new_bracket_expression (yyvs68.item (yyvsp68), yyvs22.item (yyvsp22), yyvs26.item (yyvsp26))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp68 := yyvsp68 -1
	yyvsp22 := yyvsp22 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_781
			--|#line 3776 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3776 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3776")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp35 := yyvsp35 + 1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_782
			--|#line 3787 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3787 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3787")
end

			yyval35 := ast_factory.new_bracket_expression (yyvs35.item (yyvsp35 - 1), yyvs22.item (yyvsp22), yyvs26.item (yyvsp26))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 -1
	yyvsp22 := yyvsp22 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_783
			--|#line 3787 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3787 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3787")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp35 := yyvsp35 + 1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_784
			--|#line 3800 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3800 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3800")
end

			yyval35 := ast_factory.new_bracket_expression (yyvs68.item (yyvsp68), yyvs22.item (yyvsp22), yyvs26.item (yyvsp26))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp68 := yyvsp68 -1
	yyvsp22 := yyvsp22 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_785
			--|#line 3800 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3800 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3800")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp35 := yyvsp35 + 1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_786
			--|#line 3811 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3811 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3811")
end

			yyval35 := ast_factory.new_bracket_expression (yyvs35.item (yyvsp35 - 1), yyvs22.item (yyvsp22), yyvs26.item (yyvsp26))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp35 := yyvsp35 -1
	yyvsp22 := yyvsp22 -1
	yyvsp26 := yyvsp26 -1
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_787
			--|#line 3811 "et_eiffel_parser.y"
		local
			yyval35: detachable ET_BRACKET_EXPRESSION
		do
--|#line 3811 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3811")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp35 := yyvsp35 + 1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_788
			--|#line 3824 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3824 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3824")
end

			if attached yyvs68.item (yyvsp68) as l_expression then
				yyval26 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval26 /= Void then
					yyval26.put_first (l_expression)
				end
			else
				yyval26 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp26 := yyvsp26 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_789
			--|#line 3835 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3835 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3835")
end

			yyval26 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval26 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval26.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp26 := yyvsp26 + 1
	yyvsp69 := yyvsp69 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_790
			--|#line 3843 "et_eiffel_parser.y"
		local
			yyval26: detachable ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3843 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3843")
end

			yyval26 := yyvs26.item (yyvsp26)
			if yyval26 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval26.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 -1
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_791
			--|#line 3852 "et_eiffel_parser.y"
		local
			yyval105: detachable ET_PARENTHESIZED_EXPRESSION
		do
--|#line 3852 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3852")
end

			remove_symbol
			remove_counter
		 	yyval105 := ast_factory.new_parenthesized_expression (yyvs5.item (yyvsp5 - 1), yyvs68.item (yyvsp68), yyvs5.item (yyvsp5))
		 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp105 := yyvsp105 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp68 := yyvsp68 -1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_792
			--|#line 3860 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3860 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3860")
end

yyval100 := ast_factory.new_manifest_array (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_793
			--|#line 3862 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3862 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3862")
end

			yyval100 := yyvs100.item (yyvsp100)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp100 := yyvsp100 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_794
			--|#line 3862 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3862 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3862")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp100 := yyvsp100 + 1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_795
			--|#line 3875 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3875 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3875")
end

			yyval100 := yyvs100.item (yyvsp100)
			if yyval100 /= Void then
				yyval100.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_796
			--|#line 3884 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3884 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3884")
end

			if attached yyvs68.item (yyvsp68) as l_expression then
				yyval100 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval100 /= Void then
					yyval100.put_first (l_expression)
				end
			else
				yyval100 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_797
			--|#line 3895 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3895 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3895")
end

			yyval100 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval100 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval100.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp69 := yyvsp69 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_798
			--|#line 3903 "et_eiffel_parser.y"
		local
			yyval100: detachable ET_MANIFEST_ARRAY
		do
--|#line 3903 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3903")
end

			yyval100 := yyvs100.item (yyvsp100)
			if yyval100 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval100.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 -1
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_799
			--|#line 3912 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3912 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3912")
end

yyval103 := ast_factory.new_manifest_tuple (yyvs22.item (yyvsp22), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 + 1
	yyvsp22 := yyvsp22 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_800
			--|#line 3914 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3914 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3914")
end

			yyval103 := yyvs103.item (yyvsp103)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp103 := yyvsp103 -1
	yyvsp22 := yyvsp22 -1
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_801
			--|#line 3914 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3914 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3914")
end

			add_symbol (yyvs22.item (yyvsp22))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp103 := yyvsp103 + 1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_802
			--|#line 3927 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3927 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3927")
end

			if attached yyvs68.item (yyvsp68) as l_expression then
				yyval103 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval103 /= Void then
					yyval103.put_first (l_expression)
				end
			else
				yyval103 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_803
			--|#line 3938 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3938 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3938")
end

			yyval103 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval103 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval103.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 + 1
	yyvsp69 := yyvsp69 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_804
			--|#line 3946 "et_eiffel_parser.y"
		local
			yyval103: detachable ET_MANIFEST_TUPLE
		do
--|#line 3946 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3946")
end

			yyval103 := yyvs103.item (yyvsp103)
			if yyval103 /= Void and attached yyvs69.item (yyvsp69) as l_expression then
				yyval103.put_first (l_expression)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 -1
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_805
			--|#line 3955 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3955 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3955")
end

yyval118 := ast_factory.new_strip_expression (yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp118 := yyvsp118 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_806
			--|#line 3957 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3957 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3957")
end

			yyval118 := yyvs118.item (yyvsp118)
			remove_keyword
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp118 := yyvsp118 -1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_807
			--|#line 3957 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3957 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3957")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp118 := yyvsp118 + 1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_808
			--|#line 3972 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3972 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3972")
end

			if attached yyvs75.item (yyvsp75) as l_feature_name then
				yyval118 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval118 /= Void then
					yyval118.put_first (l_feature_name)
				end
			else
				yyval118 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp118 := yyvsp118 + 1
	yyvsp75 := yyvsp75 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_809
			--|#line 3983 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3983 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3983")
end

			yyval118 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval118 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval118.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp118 := yyvsp118 + 1
	yyvsp76 := yyvsp76 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_810
			--|#line 3991 "et_eiffel_parser.y"
		local
			yyval118: detachable ET_STRIP_EXPRESSION
		do
--|#line 3991 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3991")
end

			yyval118 := yyvs118.item (yyvsp118)
			if yyval118 /= Void and attached yyvs76.item (yyvsp76) as l_feature_name then
				yyval118.put_first (l_feature_name)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_811
			--|#line 4000 "et_eiffel_parser.y"
		local
			yyval48: detachable ET_CONSTANT
		do
--|#line 4000 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4000")
end

yyval48 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_812
			--|#line 4002 "et_eiffel_parser.y"
		local
			yyval48: detachable ET_CONSTANT
		do
--|#line 4002 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4002")
end

yyval48 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_813
			--|#line 4004 "et_eiffel_parser.y"
		local
			yyval48: detachable ET_CONSTANT
		do
--|#line 4004 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4004")
end

yyval48 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_814
			--|#line 4006 "et_eiffel_parser.y"
		local
			yyval48: detachable ET_CONSTANT
		do
--|#line 4006 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4006")
end

yyval48 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_815
			--|#line 4008 "et_eiffel_parser.y"
		local
			yyval48: detachable ET_CONSTANT
		do
--|#line 4008 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4008")
end

yyval48 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_816
			--|#line 4012 "et_eiffel_parser.y"
		local
			yyval24: detachable ET_ACROSS_EXPRESSION
		do
--|#line 4012 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4012")
end

yyval24 := new_across_some_expression (yyvs24.item (yyvsp24), yyvs99.item (yyvsp99), yyvs47.item (yyvsp47), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs125.item (yyvsp125), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp99 := yyvsp99 -1
	yyvsp47 := yyvsp47 -1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp125 := yyvsp125 -1
	yyspecial_routines24.force (yyvs24, yyval24, yyvsp24)
end
		end

	yy_do_action_817
			--|#line 4016 "et_eiffel_parser.y"
		local
			yyval24: detachable ET_ACROSS_EXPRESSION
		do
--|#line 4016 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4016")
end

yyval24 := new_across_all_expression (yyvs24.item (yyvsp24), yyvs99.item (yyvsp99), yyvs47.item (yyvsp47), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68)), yyvs125.item (yyvsp125), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp99 := yyvsp99 -1
	yyvsp47 := yyvsp47 -1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp125 := yyvsp125 -1
	yyspecial_routines24.force (yyvs24, yyval24, yyvsp24)
end
		end

	yy_do_action_818
			--|#line 4020 "et_eiffel_parser.y"
		local
			yyval24: detachable ET_ACROSS_EXPRESSION
		do
--|#line 4020 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4020")
end

yyval24 := new_across_expression_header (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp24 := yyvsp24 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp24 >= yyvsc24 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs24")
		end
		yyvsc24 := yyvsc24 + yyInitial_yyvs_size
		yyvs24 := yyspecial_routines24.aliased_resized_area (yyvs24, yyvsc24)
	end
	yyspecial_routines24.force (yyvs24, yyval24, yyvsp24)
end
		end

	yy_do_action_819
			--|#line 4022 "et_eiffel_parser.y"
		local
			yyval24: detachable ET_ACROSS_EXPRESSION
		do
--|#line 4022 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4022")
end

yyval24 := new_across_expression_header (yyvs2.item (yyvsp2 - 1), yyvs68.item (yyvsp68), yyvs2.item (yyvsp2), yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp24 := yyvsp24 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp68 := yyvsp68 -1
	yyvsp12 := yyvsp12 -1
	if yyvsp24 >= yyvsc24 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs24")
		end
		yyvsc24 := yyvsc24 + yyInitial_yyvs_size
		yyvs24 := yyspecial_routines24.aliased_resized_area (yyvs24, yyvsc24)
	end
	yyspecial_routines24.force (yyvs24, yyval24, yyvsp24)
end
		end

	yy_do_action_820
			--|#line 4028 "et_eiffel_parser.y"
		local
			yyval36: detachable ET_CALL_AGENT
		do
--|#line 4028 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4028")
end

yyval36 := ast_factory.new_call_agent (yyvs3.item (yyvsp3), Void, yyvs75.item (yyvsp75), yyvs31.item (yyvsp31)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp36 := yyvsp36 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp75 := yyvsp75 -1
	yyvsp31 := yyvsp31 -1
	if yyvsp36 >= yyvsc36 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs36")
		end
		yyvsc36 := yyvsc36 + yyInitial_yyvs_size
		yyvs36 := yyspecial_routines36.aliased_resized_area (yyvs36, yyvsc36)
	end
	yyspecial_routines36.force (yyvs36, yyval36, yyvsp36)
end
		end

	yy_do_action_821
			--|#line 4030 "et_eiffel_parser.y"
		local
			yyval36: detachable ET_CALL_AGENT
		do
--|#line 4030 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4030")
end

yyval36 := ast_factory.new_call_agent (yyvs3.item (yyvsp3), yyvs32.item (yyvsp32), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs75.item (yyvsp75)), yyvs31.item (yyvsp31)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp36 := yyvsp36 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp32 := yyvsp32 -1
	yyvsp5 := yyvsp5 -1
	yyvsp75 := yyvsp75 -1
	yyvsp31 := yyvsp31 -1
	if yyvsp36 >= yyvsc36 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs36")
		end
		yyvsc36 := yyvsc36 + yyInitial_yyvs_size
		yyvs36 := yyspecial_routines36.aliased_resized_area (yyvs36, yyvsc36)
	end
	yyspecial_routines36.force (yyvs36, yyval36, yyvsp36)
end
		end

	yy_do_action_822
			--|#line 4034 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4034 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4034")
end

			set_inline_agent_actual_arguments (yyvs90.item (yyvsp90), yyvs31.item (yyvsp31))
			yyval90 := yyvs90.item (yyvsp90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 -1
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_823
			--|#line 4041 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4041 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4041")
end

			yyval90 := ast_factory.new_do_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_824
			--|#line 4051 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4051 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4051")
end

			yyval90 := ast_factory.new_do_function_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_825
			--|#line 4057 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4057 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4057")
end

			yyval90 := ast_factory.new_once_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_826
			--|#line 4063 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4063 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4063")
end

			yyval90 := ast_factory.new_once_function_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_827
			--|#line 4069 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4069 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4069")
end

			yyval90 := ast_factory.new_external_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_828
			--|#line 4075 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4075 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4075")
end

			yyval90 := ast_factory.new_external_function_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs119.item (yyvsp119)), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp5 := yyvsp5 -1
	yyvsp119 := yyvsp119 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_829
			--|#line 4081 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4081 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4081")
end

			yyval90 := ast_factory.new_do_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_830
			--|#line 4087 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4087 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4087")
end

			yyval90 := ast_factory.new_do_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs46.item (yyvsp46 - 1), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_831
			--|#line 4093 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4093 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4093")
end

			yyval90 := ast_factory.new_once_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_832
			--|#line 4099 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4099 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4099")
end

			yyval90 := ast_factory.new_once_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), yyvs111.item (yyvsp111), yyvs98.item (yyvsp98), yyvs102.item (yyvsp102), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs46.item (yyvsp46 - 1)), yyvs110.item (yyvsp110), yyvs46.item (yyvsp46), yyvs2.item (yyvsp2), Void)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp111 := yyvsp111 -1
	yyvsp98 := yyvsp98 -1
	yyvsp2 := yyvsp2 -2
	yyvsp102 := yyvsp102 -1
	yyvsp46 := yyvsp46 -2
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_833
			--|#line 4104 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4104 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4104")
end

			yyval90 := ast_factory.new_external_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_834
			--|#line 4110 "et_eiffel_parser.y"
		local
			yyval90: detachable ET_INLINE_AGENT
		do
--|#line 4110 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4110")
end

			yyval90 := ast_factory.new_external_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs79.item (yyvsp79), yyvs111.item (yyvsp111), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs15.item (yyvsp15)), yyvs71.item (yyvsp71), yyvs110.item (yyvsp110), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval90)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp90 := yyvsp90 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp79 := yyvsp79 -1
	yyvsp111 := yyvsp111 -1
	yyvsp2 := yyvsp2 -2
	yyvsp15 := yyvsp15 -1
	yyvsp71 := yyvsp71 -1
	yyvsp110 := yyvsp110 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_835
			--|#line 4118 "et_eiffel_parser.y"
		local
			yyval79: detachable ET_FORMAL_ARGUMENT_LIST
		do
--|#line 4118 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4118")
end

			yyval79 := yyvs79.item (yyvsp79)
			set_start_closure (yyval79)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_836
			--|#line 4125 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 4125 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4125")
end

set_start_closure (Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_837
			--|#line 4129 "et_eiffel_parser.y"
		local
			yyval32: detachable ET_AGENT_TARGET
		do
--|#line 4129 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4129")
end

yyval32 := new_agent_identifier_target (yyvs12.item (yyvsp12)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp32 := yyvsp32 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_838
			--|#line 4131 "et_eiffel_parser.y"
		local
			yyval32: detachable ET_AGENT_TARGET
		do
--|#line 4131 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4131")
end

yyval32 := yyvs105.item (yyvsp105) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp32 := yyvsp32 + 1
	yyvsp105 := yyvsp105 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_839
			--|#line 4133 "et_eiffel_parser.y"
		local
			yyval32: detachable ET_AGENT_TARGET
		do
--|#line 4133 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4133")
end

yyval32 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp32 := yyvsp32 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_840
			--|#line 4135 "et_eiffel_parser.y"
		local
			yyval32: detachable ET_AGENT_TARGET
		do
--|#line 4135 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4135")
end

yyval32 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp32 := yyvsp32 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_841
			--|#line 4137 "et_eiffel_parser.y"
		local
			yyval32: detachable ET_AGENT_TARGET
		do
--|#line 4137 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4137")
end

yyval32 := ast_factory.new_agent_open_target (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp32 := yyvsp32 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_842
			--|#line 4141 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4141 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4141")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp31 := yyvsp31 + 1
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_843
			--|#line 4143 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4143 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4143")
end

yyval31 := ast_factory.new_agent_argument_operands (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_844
			--|#line 4145 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4145 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4145")
end

			yyval31 := yyvs31.item (yyvsp31)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp31 := yyvsp31 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_845
			--|#line 4145 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4145 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4145")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp31 := yyvsp31 + 1
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_846
			--|#line 4158 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4158 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4158")
end

			if attached yyvs29.item (yyvsp29) as l_agent_actual then
				yyval31 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval31 /= Void then
					yyval31.put_first (l_agent_actual)
				end
			else
				yyval31 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 + 1
	yyvsp29 := yyvsp29 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_847
			--|#line 4169 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4169 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4169")
end

			yyval31 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval31 /= Void and attached yyvs30.item (yyvsp30) as l_agent_actual then
				yyval31.put_first (l_agent_actual)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 + 1
	yyvsp30 := yyvsp30 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_848
			--|#line 4177 "et_eiffel_parser.y"
		local
			yyval31: detachable ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4177 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4177")
end

			yyval31 := yyvs31.item (yyvsp31)
			if yyval31 /= Void and attached yyvs30.item (yyvsp30) as l_agent_actual then
				yyval31.put_first (l_agent_actual)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp30 := yyvsp30 -1
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_849
			--|#line 4186 "et_eiffel_parser.y"
		local
			yyval30: detachable ET_AGENT_ARGUMENT_OPERAND_ITEM
		do
--|#line 4186 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4186")
end

			yyval30 := ast_factory.new_agent_argument_operand_comma (yyvs29.item (yyvsp29), yyvs5.item (yyvsp5))
			if yyval30 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp30 := yyvsp30 + 1
	yyvsp29 := yyvsp29 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp30 >= yyvsc30 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs30")
		end
		yyvsc30 := yyvsc30 + yyInitial_yyvs_size
		yyvs30 := yyspecial_routines30.aliased_resized_area (yyvs30, yyvsc30)
	end
	yyspecial_routines30.force (yyvs30, yyval30, yyvsp30)
end
		end

	yy_do_action_850
			--|#line 4195 "et_eiffel_parser.y"
		local
			yyval29: detachable ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4195 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4195")
end

yyval29 := yyvs68.item (yyvsp68) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp68 := yyvsp68 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_851
			--|#line 4197 "et_eiffel_parser.y"
		local
			yyval29: detachable ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4197 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4197")
end

yyval29 := yyvs23.item (yyvsp23) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp29 := yyvsp29 + 1
	yyvsp23 := yyvsp23 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_852
			--|#line 4199 "et_eiffel_parser.y"
		local
			yyval29: detachable ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4199 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4199")
end

yyval29 := ast_factory.new_agent_typed_open_argument (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5), yyvs23.item (yyvsp23)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp29 := yyvsp29 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyvsp23 := yyvsp23 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_853
			--|#line 4205 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4205 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4205")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_854
			--|#line 4207 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4207 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4207")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_855
			--|#line 4211 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4211 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4211")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_856
			--|#line 4213 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4213 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4213")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_857
			--|#line 4215 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4215 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4215")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_858
			--|#line 4217 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4217 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4217")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_859
			--|#line 4219 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4219 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4219")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_860
			--|#line 4221 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4221 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4221")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_861
			--|#line 4223 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4223 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4223")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_862
			--|#line 4225 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4225 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4225")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_863
			--|#line 4227 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4227 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4227")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_864
			--|#line 4229 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4229 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4229")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_865
			--|#line 4231 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4231 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4231")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_866
			--|#line 4233 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4233 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4233")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_867
			--|#line 4235 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4235 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4235")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_868
			--|#line 4237 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4237 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4237")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_869
			--|#line 4239 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4239 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4239")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_870
			--|#line 4241 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4241 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4241")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_871
			--|#line 4243 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4243 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4243")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_872
			--|#line 4245 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4245 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4245")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_873
			--|#line 4247 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4247 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4247")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_874
			--|#line 4249 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4249 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4249")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_875
			--|#line 4251 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4251 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4251")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_876
			--|#line 4253 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4253 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4253")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_877
			--|#line 4255 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4255 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4255")
end

yyval15 := yyvs15.item (yyvsp15) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_878
			--|#line 4257 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4257 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4257")
end

abort 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp15 := yyvsp15 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp15 >= yyvsc15 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs15")
		end
		yyvsc15 := yyvsc15 + yyInitial_yyvs_size
		yyvs15 := yyspecial_routines15.aliased_resized_area (yyvs15, yyvsc15)
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_879
			--|#line 4261 "et_eiffel_parser.y"
		local
			yyval15: detachable ET_MANIFEST_STRING
		do
--|#line 4261 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4261")
end

			yyval15 := yyvs15.item (yyvsp15)
			if yyval15 /= Void then
				yyval15.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
		end

	yy_do_action_880
			--|#line 4270 "et_eiffel_parser.y"
		local
			yyval9: detachable ET_CHARACTER_CONSTANT
		do
--|#line 4270 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4270")
end

yyval9 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
		end

	yy_do_action_881
			--|#line 4272 "et_eiffel_parser.y"
		local
			yyval9: detachable ET_CHARACTER_CONSTANT
		do
--|#line 4272 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4272")
end

yyval9 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
		end

	yy_do_action_882
			--|#line 4276 "et_eiffel_parser.y"
		local
			yyval9: detachable ET_CHARACTER_CONSTANT
		do
--|#line 4276 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4276")
end

yyval9 := yyvs9.item (yyvsp9) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
		end

	yy_do_action_883
			--|#line 4278 "et_eiffel_parser.y"
		local
			yyval9: detachable ET_CHARACTER_CONSTANT
		do
--|#line 4278 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4278")
end

abort 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp9 := yyvsp9 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp9 >= yyvsc9 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs9")
		end
		yyvsc9 := yyvsc9 + yyInitial_yyvs_size
		yyvs9 := yyspecial_routines9.aliased_resized_area (yyvs9, yyvsc9)
	end
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
		end

	yy_do_action_884
			--|#line 4282 "et_eiffel_parser.y"
		local
			yyval9: detachable ET_CHARACTER_CONSTANT
		do
--|#line 4282 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4282")
end

			yyval9 := yyvs9.item (yyvsp9)
			if yyval9 /= Void then
				yyval9.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
		end

	yy_do_action_885
			--|#line 4291 "et_eiffel_parser.y"
		local
			yyval7: detachable ET_BOOLEAN_CONSTANT
		do
--|#line 4291 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4291")
end

yyval7 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
		end

	yy_do_action_886
			--|#line 4293 "et_eiffel_parser.y"
		local
			yyval7: detachable ET_BOOLEAN_CONSTANT
		do
--|#line 4293 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4293")
end

yyval7 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
		end

	yy_do_action_887
			--|#line 4297 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4297 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4297")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_888
			--|#line 4299 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4299 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4299")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_889
			--|#line 4303 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4303 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4303")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_890
			--|#line 4305 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4305 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4305")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_891
			--|#line 4309 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4309 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4309")
end

			yyval13 := yyvs13.item (yyvsp13)
			if yyval13 /= Void then
				yyval13.set_sign (yyvs19.item (yyvsp19))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_892
			--|#line 4316 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4316 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4316")
end

			yyval13 := yyvs13.item (yyvsp13)
			if yyval13 /= Void then
				yyval13.set_sign (yyvs19.item (yyvsp19))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_893
			--|#line 4325 "et_eiffel_parser.y"
		local
			yyval13: detachable ET_INTEGER_CONSTANT
		do
--|#line 4325 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4325")
end

			yyval13 := yyvs13.item (yyvsp13)
			if yyval13 /= Void then
				yyval13.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_894
			--|#line 4334 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4334 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4334")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_895
			--|#line 4336 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4336 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4336")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_896
			--|#line 4340 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4340 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4340")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_897
			--|#line 4342 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4342 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4342")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_898
			--|#line 4346 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4346 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4346")
end

			yyval16 := yyvs16.item (yyvsp16)
			if yyval16 /= Void then
				yyval16.set_sign (yyvs19.item (yyvsp19))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_899
			--|#line 4353 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4353 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4353")
end

			yyval16 := yyvs16.item (yyvsp16)
			if yyval16 /= Void then
				yyval16.set_sign (yyvs19.item (yyvsp19))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp19 := yyvsp19 -1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_900
			--|#line 4362 "et_eiffel_parser.y"
		local
			yyval16: detachable ET_REAL_CONSTANT
		do
--|#line 4362 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4362")
end

			yyval16 := yyvs16.item (yyvsp16)
			if yyval16 /= Void then
				yyval16.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs119.item (yyvsp119), yyvs5.item (yyvsp5)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_901
			--|#line 4371 "et_eiffel_parser.y"
		local
			yyval12: detachable ET_IDENTIFIER
		do
--|#line 4371 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4371")
end

yyval12 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
		end

	yy_do_action_902
			--|#line 4373 "et_eiffel_parser.y"
		local
			yyval12: detachable ET_IDENTIFIER
		do
--|#line 4373 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4373")
end

yyval12 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
		end

	yy_do_action_903
			--|#line 4375 "et_eiffel_parser.y"
		local
			yyval12: detachable ET_IDENTIFIER
		do
--|#line 4375 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4375")
end

yyval12 := yyvs12.item (yyvsp12) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
		end

	yy_do_action_904
			--|#line 4381 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 4381 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4381")
end

add_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_error_action (yy_act: INTEGER)
			-- Execute error action.
		do
			if yy_act <= 199 then
				yy_do_error_action_0_199 (yy_act)
			elseif yy_act <= 399 then
				yy_do_error_action_200_399 (yy_act)
			elseif yy_act <= 599 then
				yy_do_error_action_400_599 (yy_act)
			elseif yy_act <= 799 then
				yy_do_error_action_600_799 (yy_act)
			elseif yy_act <= 999 then
				yy_do_error_action_800_999 (yy_act)
			elseif yy_act <= 1199 then
				yy_do_error_action_1000_1199 (yy_act)
			elseif yy_act <= 1399 then
				yy_do_error_action_1200_1399 (yy_act)
			elseif yy_act <= 1599 then
				yy_do_error_action_1400_1599 (yy_act)
			elseif yy_act <= 1799 then
				yy_do_error_action_1600_1799 (yy_act)
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_0_199 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_200_399 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_400_599 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_600_799 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_800_999 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1000_1199 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1200_1399 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1400_1599 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1600_1799 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			when 1735 then
					-- End-of-file expected action.
				report_eof_expected_error
			else
					-- Default action.
				report_error ("parse error")
			end
		end

feature {NONE} -- Table templates

	yytranslate_template: SPECIAL [INTEGER]
			-- Template for `yytranslate'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 371)
			yytranslate_template_1 (an_array)
			yytranslate_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yytranslate_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yytranslate'.
		do
			yyarray_subcopy (an_array, <<
			    0,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,  129,    2,    2,  127,    2,    2,    2,
			  122,  123,  115,  131,  125,  130,  128,  108,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,  124,  136,
			  112,  132,  110,  138,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,  137,    2,  126,  114,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,  120,    2,  121,  133,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2, yyDummy>>,
			1, 200, 0)
		end

	yytranslate_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yytranslate'.
		do
			yyarray_subcopy (an_array, <<
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    1,    2,    3,    4,
			    5,    6,    7,    8,    9,   10,   11,   12,   13,   14,
			   15,   16,   17,   18,   19,   20,   21,   22,   23,   24,
			   25,   26,   27,   28,   29,   30,   31,   32,   33,   34,
			   35,   36,   37,   38,   39,   40,   41,   42,   43,   44,

			   45,   46,   47,   48,   49,   50,   51,   52,   53,   54,
			   55,   56,   57,   58,   59,   60,   61,   62,   63,   64,
			   65,   66,   67,   68,   69,   70,   71,   72,   73,   74,
			   75,   76,   77,   78,   79,   80,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,  106,  107,  109,  111,  113,  116,  117,  118,  119,
			  134,  135, yyDummy>>,
			1, 172, 200)
		end

	yyr1_template: SPECIAL [INTEGER]
			-- Template for `yyr1'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 904)
			yyr1_template_1 (an_array)
			yyr1_template_2 (an_array)
			yyr1_template_3 (an_array)
			yyr1_template_4 (an_array)
			yyr1_template_5 (an_array)
			Result := yyfixed_array (an_array)
		end

	yyr1_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yyr1'.
		do
			yyarray_subcopy (an_array, <<
			    0,  385,  385,  179,  386,  386,  387,  178,  388,  281,
			  281,  389,  281,  281,  390,  282,  282,  284,  284,  391,
			  284,  392,  288,  290,  289,  283,  283,  283,  394,  283,
			  395,  285,  287,  287,  286,  286,  293,  293,  291,  291,
			  291,  291,  291,  291,  291,  291,  292,  177,  177,  177,
			  177,  307,  307,  308,  308,  275,  275,  275,  396,  276,
			  276,  274,  273,  273,  273,  273,  273,  273,  273,  273,
			  273,  372,  372,  374,  397,  375,  375,  373,  215,  215,
			  398,  216,  216,  216,  213,  213,  212,  212,  399,  214,
			  214,  214,  217,  217,  217,  217,  217,  217,  217,  217,

			  217,  217,  217,  217,  217,  217,  217,  217,  217,  217,
			  217,  217,  217,  217,  218,  218,  218,  218,  218,  218,
			  218,  218,  218,  218,  218,  218,  218,  218,  218,  218,
			  218,  218,  218,  218,  218,  218,  207,  207,  206,  206,
			  208,  208,  208,  203,  210,  210,  209,  209,  209,  211,
			  211,  211,  211,  204,  205,  339,  339,  342,  342,  343,
			  343,  402,  345,  345,  403,  341,  341,  341,  341,  341,
			  341,  346,  346,  346,  346,  344,  361,  361,  404,  362,
			  362,  362,  359,  360,  238,  238,  405,  239,  239,  240,
			  240,  406,  237,  237,  237,  407,  237,  261,  261,  261, yyDummy>>,
			1, 200, 0)
		end

	yyr1_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yyr1'.
		do
			yyarray_subcopy (an_array, <<
			  182,  408,  182,  183,  183,  183,  183,  180,  181,  185,
			  185,  184,  316,  316,  409,  317,  317,  314,  314,  410,
			  315,  315,  312,  312,  411,  313,  313,  311,  311,  311,
			  263,  228,  228,  229,  229,  412,  226,  226,  226,  413,
			  226,  414,  226,  226,  226,  415,  226,  416,  227,  227,
			  227,  264,  221,  221,  222,  417,  223,  223,  223,  220,
			  219,  219,  377,  377,  418,  378,  378,  376,  259,  259,
			  258,  260,  260,  256,  256,  257,  257,  419,  419,  419,
			  419,  353,  353,  353,  353,  353,  353,  349,  349,  349,
			  349,  349,  349,  354,  354,  354,  354,  354,  354,  354,

			  354,  354,  354,  354,  354,  354,  354,  354,  354,  354,
			  354,  354,  354,  354,  354,  354,  350,  350,  350,  350,
			  350,  350,  350,  350,  309,  309,  363,  363,  255,  255,
			  161,  161,  262,  254,  254,  160,  160,  160,  160,  160,
			  160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
			  160,  160,  160,  160,  160,  160,  160,  160,  310,  310,
			  272,  269,  269,  367,  270,  270,  270,  270,  270,  270,
			  266,  265,  267,  268,  324,  324,  324,  420,  325,  325,
			  325,  325,  325,  325,  321,  320,  322,  323,  421,  421,
			  421,  421,  421,  421,  421,  421,  421,  421,  421,  421, yyDummy>>,
			1, 200, 200)
		end

	yyr1_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yyr1'.
		do
			yyarray_subcopy (an_array, <<
			  422,  348,  348,  348,  348,  348,  423,  347,  347,  347,
			  347,  347,  424,  306,  306,  305,  305,  425,  426,  327,
			  327,  326,  326,  379,  379,  380,  380,  187,  187,  368,
			  368,  369,  369,  369,  369,  369,  369,  369,  369,  369,
			  369,  369,  369,  369,  369,  369,  369,  369,  369,  369,
			  369,  369,  369,  370,  370,  370,  370,  370,  370,  370,
			  370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
			  370,  370,  370,  370,  370,  371,  371,  371,  371,  371,
			  371,  371,  371,  371,  371,  371,  371,  371,  371,  371,
			  371,  371,  371,  371,  371,  371,  371,  371,  278,  278,

			  149,  149,  151,  151,  400,  150,  150,  150,  150,  150,
			  401,  146,  152,  152,  153,  153,  153,  154,  154,  154,
			  154,  154,  154,  147,  148,  319,  319,  319,  318,  318,
			  318,  318,  318,  318,  318,  318,  318,  318,  318,  318,
			  318,  318,  318,  318,  318,  318,  318,  318,  318,  352,
			  352,  351,  351,  351,  351,  351,  351,  351,  351,  351,
			  351,  351,  351,  351,  351,  351,  351,  351,  351,  351,
			  188,  197,  189,  190,  191,  192,  193,  194,  195,  195,
			  196,  186,  199,  199,  200,  200,  198,  198,  427,  297,
			  297,  297,  297,  297,  297,  297,  297,  297,  297,  297, yyDummy>>,
			1, 200, 400)
		end

	yyr1_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yyr1'.
		do
			yyarray_subcopy (an_array, <<
			  297,  297,  297,  297,  297,  297,  428,  171,  171,  171,
			  171,  298,  298,  298,  298,  300,  300,  300,  300,  224,
			  224,  225,  225,  280,  280,  280,  280,  235,  236,  236,
			  234,  279,  279,  232,  233,  233,  231,  296,  296,  383,
			  383,  382,  382,  381,  175,  175,  429,  176,  176,  176,
			  174,  172,  172,  173,  173,  173,  173,  142,  142,  201,
			  201,  230,  336,  336,  336,  430,  335,  335,  334,  299,
			  299,  299,  299,  299,  299,  299,  247,  247,  246,  167,
			  167,  364,  364,  244,  244,  243,  243,  243,  243,  243,
			  243,  243,  243,  242,  242,  143,  143,  143,  431,  144,

			  144,  144,  253,  245,  245,  245,  245,  384,  384,  241,
			  241,  250,  250,  250,  250,  250,  250,  250,  250,  250,
			  250,  250,  250,  250,  250,  250,  250,  250,  250,  250,
			  250,  250,  250,  251,  251,  251,  251,  251,  251,  252,
			  252,  252,  252,  252,  252,  252,  252,  252,  252,  252,
			  252,  252,  252,  252,  252,  252,  252,  252,  249,  249,
			  249,  249,  249,  249,  249,  249,  249,  249,  249,  249,
			  249,  249,  249,  249,  248,  248,  248,  248,  163,  163,
			  164,  432,  164,  433,  165,  434,  165,  435,  145,  145,
			  145,  340,  329,  329,  436,  328,  330,  330,  330,  337, yyDummy>>,
			1, 200, 600)
		end

	yyr1_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yyr1'.
		do
			yyarray_subcopy (an_array, <<
			  337,  437,  338,  338,  338,  365,  365,  438,  366,  366,
			  366,  202,  202,  202,  202,  202,  140,  139,  141,  141,
			  166,  166,  294,  295,  295,  295,  295,  295,  295,  295,
			  295,  295,  295,  295,  295,  271,  439,  159,  159,  159,
			  159,  159,  157,  157,  157,  440,  158,  158,  158,  156,
			  155,  155,  155,  331,  331,  333,  333,  333,  333,  333,
			  333,  333,  333,  333,  333,  333,  333,  333,  333,  333,
			  333,  333,  333,  333,  333,  333,  333,  333,  333,  332,
			  168,  168,  170,  170,  169,  162,  162,  301,  301,  303,
			  303,  304,  304,  302,  355,  355,  357,  357,  358,  358,

			  356,  277,  277,  277,  393, yyDummy>>,
			1, 105, 800)
		end

	yytypes1_template: SPECIAL [INTEGER]
			-- Template for `yytypes1'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1737)
			yytypes1_template_1 (an_array)
			yytypes1_template_2 (an_array)
			yytypes1_template_3 (an_array)
			yytypes1_template_4 (an_array)
			yytypes1_template_5 (an_array)
			yytypes1_template_6 (an_array)
			yytypes1_template_7 (an_array)
			yytypes1_template_8 (an_array)
			yytypes1_template_9 (an_array)
			Result := yyfixed_array (an_array)
		end

	yytypes1_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    1,    8,    2,    2,   43,   85,   85,   43,   85,   85,
			    2,   43,   43,    2,   85,   86,   86,    1,   85,   86,
			   86,    1,   22,   82,    2,    2,    2,    2,    2,   21,
			   85,   85,   12,   12,   12,   12,   86,   21,   85,   21,
			   85,   19,   19,    5,    6,    6,   16,   15,   15,   15,
			   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
			   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
			   13,    9,    7,    7,    2,    7,    9,    9,    9,   57,
			   12,   86,   87,   88,   89,   13,   13,   13,   13,   15,
			   15,   15,   16,   16,   16,   16,    5,   82,    2,  104,

			    2,    2,    2,    2,   85,   85,    5,   85,   85,   16,
			   13,   16,   13,   23,    5,   12,   12,   12,    2,    2,
			    2,    2,    2,   12,   95,   95,  113,  113,  119,  119,
			   19,   58,   22,    2,  103,    5,    5,   12,   89,    2,
			    2,   80,   81,   82,   12,   15,  107,    1,    2,    2,
			    2,   12,   89,   12,    2,    2,   12,   95,  113,   12,
			    2,    2,   12,   95,   22,   28,   28,    1,   12,    2,
			    2,   12,   95,   12,    2,    2,   12,   95,   12,    2,
			   12,   95,   12,    5,   10,   12,   22,   28,    1,    5,
			    5,   12,    5,    5,  103,    2,   89,   12,   12,    5, yyDummy>>,
			1, 200, 0)
		end

	yytypes1_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    5,   82,    5,   60,    1,    2,  107,  109,   12,   12,
			   12,   28,   12,    2,   12,   95,    5,   10,   12,   28,
			   28,    5,   28,   12,    2,   12,   95,    5,   10,   12,
			   28,    5,    5,   23,    5,   12,   12,   12,    2,    2,
			    2,    2,   27,   27,   27,   28,   28,   12,   12,   95,
			  119,  119,   28,   12,    2,   12,   95,    5,   10,   12,
			   28,    5,   28,   12,    2,   12,   95,    5,   10,   12,
			   28,    5,   28,    5,   10,   12,   28,    5,   28,  119,
			    5,   12,   12,   12,   28,   12,    9,   13,   15,   16,
			   19,  119,   19,   19,    5,    5,    5,    2,   20,   17,

			   16,   14,   13,   11,   10,    5,    4,    3,    2,    2,
			    2,    2,    2,    2,   24,   24,   24,    7,   35,   35,
			   36,    9,    9,   57,   68,   68,   68,   68,   68,   68,
			   68,   68,   68,   68,   68,   68,   69,   12,   83,   90,
			   90,   13,  100,  100,   15,   15,  103,  103,  105,   16,
			  117,  118,    5,    5,    5,   23,    5,    5,   12,    2,
			    2,    2,    2,   53,   12,   95,  120,  122,    2,   56,
			   56,    2,    2,   59,   60,    5,   45,   45,  107,   28,
			    5,   10,   12,   28,    5,  119,   12,   28,    5,   10,
			   12,   28,    5,  119,   12,   12,    2,   12,   12,    2, yyDummy>>,
			1, 200, 200)
		end

	yytypes1_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			   12,    5,    5,   28,    5,   12,    2,   12,   12,    2,
			   12,   12,   12,   12,   28,   12,   12,   12,   28,   28,
			    5,   28,    5,    5,   28,    5,   10,   12,   28,    5,
			  119,   12,   28,    5,   10,   12,   28,    5,  119,   12,
			  119,   12,    5,    5,    5,    5,    5,   68,   68,   17,
			   10,   75,   12,  105,   12,   12,   12,   12,  119,   68,
			   68,   68,    5,  100,    5,    5,   26,    5,    5,   17,
			   10,   32,   75,   79,   79,   12,  105,    5,    1,   68,
			    5,   68,    5,    5,   15,   68,    5,    2,   99,   99,
			   22,   22,    5,    5,    5,    5,   19,   19,    5,    5,

			   19,   19,   19,   19,   19,   19,   19,   19,   19,   14,
			   14,   14,   14,   11,    5,    5,   22,   22,    5,  103,
			   26,    5,   31,   68,  120,  122,  120,  122,   12,    2,
			   12,   12,    2,   12,  122,   22,   50,   50,    1,   12,
			    2,   12,   12,    2,   12,   12,   12,   12,    2,   52,
			   22,   50,   50,    1,    2,   51,   51,   51,   56,   73,
			   73,    1,    5,   45,   59,   45,   59,   60,   12,  109,
			  107,  119,   12,    5,  119,   12,    5,   28,   12,   12,
			   28,   28,   12,   12,   28,    1,    1,    1,   28,   12,
			   12,   28,   28,   12,   12,   28,   28,   28,   28,    5, yyDummy>>,
			1, 200, 400)
		end

	yytypes1_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    5,    5,  119,  119,   12,    5,  119,   12,    5,    5,
			    5,    1,    1,    1,    5,    5,    5,   68,   69,  100,
			    5,   26,   12,    5,  119,    5,   31,    5,    2,  111,
			   77,   77,   78,   78,   79,   12,    5,  111,    2,    2,
			  119,    2,    5,  118,  119,    2,  119,    1,    2,   47,
			   35,   35,   68,   68,   68,   68,   68,   68,   68,   68,
			   68,   68,   68,   68,   68,   68,   68,   68,   68,    2,
			   68,    2,   68,   68,   12,   12,   35,   35,    5,   31,
			    5,   51,   51,   51,   51,   50,   12,   12,   50,   50,
			   12,   12,   50,  120,  121,  122,    5,   23,    5,   12,

			    2,    2,    2,    2,   49,   49,   49,   50,   50,   53,
			   53,   12,   12,   95,   50,   12,   12,   50,   50,   12,
			   12,   50,   50,   50,   50,    2,   52,    5,   50,   12,
			    2,   51,   54,   55,   56,   75,    2,   93,   93,    2,
			   72,   72,   73,    5,   45,   59,   59,   76,   12,   59,
			   59,   60,    5,   12,  106,  108,  109,    5,    5,    5,
			    5,   28,   28,   28,   28,   28,   28,   28,   28,   28,
			   28,   28,   28,   28,   28,    1,    1,    1,   21,    5,
			    5,    5,    5,    5,    5,   12,   12,  119,    5,  100,
			    5,    5,  100,   26,   68,   69,    5,    5,   75,  119, yyDummy>>,
			1, 200, 600)
		end

	yytypes1_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    2,    1,    2,    2,   98,   79,   12,   79,    5,   79,
			    5,   79,    5,    5,  119,    2,   98,   12,   12,    5,
			   12,   75,   76,  118,    5,   68,    5,    2,   68,   12,
			    1,   68,    2,    2,   26,   68,   69,   26,   68,   68,
			   26,   26,   26,   26,   23,    5,   29,   30,   31,   68,
			   50,   50,   50,   50,    5,    5,  122,   12,    2,   12,
			   12,    2,   12,   50,   12,    2,   12,   12,    2,   12,
			   12,   12,   12,   50,   50,   12,   50,    5,    5,    5,
			    5,   50,   50,   50,   50,   50,   52,   75,  115,  115,
			    5,   51,   76,   12,    5,   56,    5,    5,    1,   85,

			   45,   73,    2,   70,   75,   12,  112,  112,  114,  114,
			    1,   44,   44,   45,   12,   59,   59,    5,   59,   28,
			   21,  109,  109,    5,   12,    5,   12,    5,   12,    5,
			   12,   12,   26,    5,   12,    5,    5,   26,   26,   31,
			  111,    1,    1,   98,   15,    2,    2,   46,  119,  111,
			   15,    2,   46,    5,   68,    5,    5,    5,  118,    2,
			   63,    1,    5,   21,   21,    5,    2,   68,   12,   68,
			   68,    5,    5,   26,  119,    5,    5,    5,   31,   50,
			   12,   12,   50,   50,   12,   12,   50,   50,   12,   12,
			   50,   50,   12,   12,   50,   50,   50,   50,    5,    1, yyDummy>>,
			1, 200, 800)
		end

	yytypes1_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			   53,    2,    2,    2,   52,    1,    2,   51,    2,    5,
			  124,  124,    1,    2,   70,  112,  114,    5,    5,    2,
			   79,   79,    2,  112,  114,    5,    2,   33,  112,  114,
			    5,   45,    5,   45,    5,    2,    2,    2,    2,    2,
			   67,   94,   94,   94,  116,   12,   12,   12,   12,   68,
			   26,    2,   98,    1,   12,   96,   96,   97,   97,   98,
			    2,   71,    5,  102,   46,   46,    1,    2,  110,   21,
			    2,   98,   71,  102,  110,  119,    2,   68,    2,    2,
			   62,   63,   12,   21,   21,   21,    5,    2,  125,  125,
			  125,    5,   50,   50,   50,   50,   50,   50,   50,   50,

			    1,   50,   50,   21,    5,   70,    5,  124,    5,    1,
			    1,    5,  112,  114,  112,  114,  119,    5,    2,   85,
			   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
			   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
			   15,   15,   15,   94,   94,  116,   94,   67,   94,   94,
			    2,   94,   94,   94,   94,   67,   67,   15,    2,   46,
			    5,    5,   98,   98,   98,   98,   15,  110,    5,  102,
			   46,   21,    5,    5,   18,   17,    4,    2,    2,    2,
			    2,    2,    2,    2,    2,   25,   35,   35,   35,   37,
			   38,   46,   46,   61,   68,   68,   68,   68,   12,   84, yyDummy>>,
			1, 200, 1000)
		end

	yytypes1_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			   91,   92,   92,   92,   92,  128,    2,    1,    2,   46,
			   46,   15,    2,   46,  110,   46,   46,    5,   12,    2,
			   68,   68,   63,   26,   21,   68,   12,    2,    2,   23,
			    5,  119,  123,  124,    1,    1,  112,  114,    2,   34,
			  119,   85,  104,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,   75,   76,   94,
			   94,  115,  115,  116,   94,   21,   45,   66,   67,   94,
			   94,    2,   94,   71,  102,  110,  119,    2,   15,  101,
			  102,  110,   23,    5,   12,    2,    2,    2,    2,   12,

			   95,  119,  119,    5,   26,   68,   68,   68,   46,    5,
			  102,   58,    1,   46,   46,    5,    5,   99,    5,    5,
			   26,   46,    5,    5,    1,    1,   46,    2,   71,  102,
			  110,    2,  110,    2,    2,    2,    5,    5,    5,  124,
			   43,   75,   21,    5,    2,   85,   34,  104,  111,   94,
			  116,    2,   66,   67,   94,    2,   94,  110,   46,   46,
			   21,    5,    5,  102,   46,   12,    2,   12,   17,   12,
			    2,   12,   12,  128,   28,   12,    2,   12,   12,    2,
			   12,   12,   12,   12,   28,    5,    5,   12,    2,    2,
			  127,    1,    2,   46,  119,   46,    5,  128,    2,    2, yyDummy>>,
			1, 200, 1200)
		end

	yytypes1_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			   46,    1,   99,   68,   68,    2,  125,   12,   12,   46,
			   68,   68,    1,  110,   46,   46,   46,   68,   68,    2,
			    7,    9,   48,   13,   15,   16,    2,   48,   85,  104,
			    2,   85,  111,    2,    2,   98,   74,   75,   76,   67,
			    2,   94,    2,  110,    2,    2,   28,   12,   12,   28,
			   28,   12,   12,   28,    5,   28,   12,   12,   28,   28,
			   12,   12,   28,   28,   28,   28,  128,    5,    5,   12,
			   12,    2,    2,   46,    2,   42,  126,  127,   46,    2,
			    2,   46,   65,    1,    5,    2,  119,    5,   46,   46,
			    2,    2,   46,   47,   68,    2,   26,   26,    2,  110,

			    2,    2,   21,   21,   21,   21,   21,  104,  111,   85,
			  104,    2,    2,   98,  110,   15,    2,   46,   74,    2,
			   46,   28,   28,   28,   28,   12,   28,   28,   28,   28,
			    5,   12,   26,   46,    2,   42,   46,  127,   46,    2,
			    2,   46,    2,   64,   65,    5,    5,   12,    2,    2,
			   46,   46,   68,   46,  111,    2,    2,   98,  104,  111,
			  110,   15,    2,   46,    2,   71,  102,  110,    2,   26,
			   12,   26,   19,   19,    5,    9,   39,   40,   41,   42,
			   12,   13,  117,    2,   68,   65,   12,  128,   26,   46,
			  125,    2,  125,   46,    2,    2,    2,   98,  110,   15, yyDummy>>,
			1, 200, 1400)
		end

	yytypes1_template_9 (an_array: ARRAY [INTEGER])
			-- Fill chunk #9 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    2,    2,   46,   46,  111,    2,    2,   98,    2,   71,
			  102,  110,   21,  110,   46,   46,   26,  119,    5,    5,
			   42,   46,   26,    5,    2,    2,    2,  110,   15,    2,
			   46,    2,   71,   46,  102,  110,  110,    2,    2,   98,
			  110,   15,    2,   46,   21,  110,   46,   46,    2,  110,
			    2,    5,   40,   12,    2,   71,  102,  110,   21,  110,
			   46,   46,   46,  110,   15,    2,   46,    2,   71,  102,
			  110,    2,  110,    2,   21,   46,   21,   26,   21,  110,
			   46,   46,    2,  110,    2,    2,    2,   71,  102,  110,
			   21,  110,   46,   46,   21,   46,   21,    2,    2,  110,

			    2,   21,   46,   21,   21,   21,  110,   46,   46,    2,
			  110,    2,    2,   21,   21,   46,   21,    2,    2,  110,
			    2,   21,   46,   21,   21,    2,   21,   21,   46,   21,
			    2,   21,    2,   21,   21,    1,    1,    1, yyDummy>>,
			1, 138, 1600)
		end

	yytypes2_template: SPECIAL [INTEGER]
			-- Template for `yytypes2'
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    3,    4,    5,
			    5,    5,    5,    5,    5,    6,    7,    7,    8,    9,
			   10,   11,   12,   12,   12,   13,   14,   14,   14,   14,
			   14,   15,   15,   15,   15,   15,   15,   15,   15,   15,
			   15,   15,   15,   15,   15,   15,   15,   15,   15,   15,

			   15,   15,   15,   15,   16,   17,   18,   19,   19,   19,
			   19,   19,   19,   19,   19,   19,   20,    6,    6,    2,
			    5,    5,    5,    5,    5,    5,    5,    5,    5,    5,
			   19,   19,    5,    5,    5,    5,   21,   22,   23, yyDummy>>)
		end

	yydefact_template: SPECIAL [INTEGER]
			-- Template for `yydefact'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1737)
			yydefact_template_1 (an_array)
			yydefact_template_2 (an_array)
			yydefact_template_3 (an_array)
			yydefact_template_4 (an_array)
			yydefact_template_5 (an_array)
			yydefact_template_6 (an_array)
			yydefact_template_7 (an_array)
			yydefact_template_8 (an_array)
			yydefact_template_9 (an_array)
			Result := yyfixed_array (an_array)
		end

	yydefact_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			   15,   15,   14,   11,    1,   16,   51,    2,  904,  904,
			   52,   55,    3,   53,   13,   19,   21,    0,   10,   28,
			   30,    0,   58,  155,   53,   53,   53,   54,    0,   24,
			  904,  904,  902,  903,  901,    0,   22,   34,  904,   35,
			  904,    0,    0,    0,  878,  883,  896,  855,  874,  873,
			  872,  877,  876,  875,  871,  870,  869,  868,  867,  866,
			  865,  864,  863,  862,  861,  860,  859,  858,  857,  856,
			  889,  882,  885,  886,  621,   39,   40,  881,  880,    0,
			   38,   31,   36,    0,   32,   41,  888,  887,  890,   43,
			  854,  853,   42,  895,  894,  897,   56,    0,    0,  904,

			    0,    0,    0,    0,   18,   20,    0,   27,   29,  899,
			  892,  898,  891,    0,    0,  499,  512,  498,    0,    0,
			    0,    0,    0,  429,  442,    0,  548,  551,    0,  430,
			    0,    0,  801,   44,    0,    0,   46,   38,   37,    0,
			    0,    0,    0,   57,   62,  156,  904,    0,    0,    0,
			    0,   47,   23,  512,    0,    0,  500,    0,  527,  512,
			    0,    0,  500,    0,  504,  443,  513,    0,  512,    0,
			    0,  500,    0,  512,    0,    0,  500,    0,  512,    0,
			  500,    0,  500,    0,  538,  528,  504,  431,    0,    0,
			    0,    0,    0,  799,    0,   45,   33,   64,   63,   59, yyDummy>>,
			1, 200, 0)
		end

	yydefact_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			   61,   60,    0,  252,    0,  209,  158,  161,   50,   49,
			   48,  451,  512,    0,  500,    0,    0,  546,  536,  440,
			  501,    0,  449,  512,    0,  500,    0,    0,  544,  534,
			  438,    0,  514,    0,    0,  902,  903,  901,    0,    0,
			    0,    0,    0,    0,    0,  515,  516,    0,  429,  464,
			    0,    0,  447,  512,    0,  500,    0,    0,  542,  532,
			  436,    0,  445,  512,    0,  500,    0,    0,  540,  530,
			  434,    0,  444,    0,  539,  529,  433,    0,  432,    0,
			  502,  499,  512,  498,  503,  550,  884,  893,  879,  900,
			  622,    0,    0,    0,    0,  363,    0,    0,  767,  761,

			  747,    0,  746,    0,  762,  794,  695,  836,    0,    0,
			    0,    0,    0,    0,  743,  742,  419,  764,  737,  740,
			  765,  777,  768,  741,    0,    0,    0,  760,  773,  774,
			  758,  736,  739,  709,  710,  733,    0,  695,  744,  766,
			  842,  734,  776,  771,  775,  769,  745,  800,  763,  735,
			  759,  772,    0,    0,    0,    0,    0,   74,  144,    0,
			    0,    0,    0,   71,  136,  103,   84,   84,  255,  904,
			  253,  241,  247,  235,  232,    0,  210,  164,    0,  452,
			    0,  547,  537,  441,    0,    0,  568,  450,    0,  545,
			  535,  439,    0,    0,  566,  512,    0,  500,  512,    0, yyDummy>>,
			1, 200, 200)
		end

	yydefact_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  500,  510,  510,  513,  510,  512,    0,  500,  512,    0,
			  500,  512,  500,  500,  506,  902,  903,  901,  519,  518,
			    0,  453,  505,  511,  448,    0,  543,  533,  437,    0,
			    0,  564,  446,    0,  541,  531,  435,    0,    0,  562,
			    0,  561,    0,  510,  510,  510,  619,  748,  749,  705,
			  704,  703,  332,  706,  902,  903,  901,    0,    0,  752,
			  750,  751,  792,    0,  698,    0,  683,  363,    0,  839,
			  840,    0,  842,  835,  401,  837,  838,    0,  401,    0,
			    0,  754,  807,    0,  770,    0,    0,  418,  420,  659,
			  783,  787,    0,    0,    0,    0,    0,    0,  802,  702,

			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  781,  785,  803,  804,
			  685,  845,  822,    0,   84,   84,   84,   84,  144,    0,
			  136,  144,    0,  136,    0,  504,  145,  104,    0,  144,
			    0,  136,  144,    0,  136,  144,  136,  136,   80,   72,
			  504,  137,   92,    0,   88,   85,   65,   68,    0,  269,
			  413,    0,  201,  239,    0,  245,    0,    0,    0,    0,
			  160,    0,  569,    0,    0,  567,    0,  473,  512,  500,
			  462,  471,  512,  500,  460,    0,    0,    0,  469,  512,
			  500,  458,  467,  512,  500,  456,  466,  455,  454,  510, yyDummy>>,
			1, 200, 400)
		end

	yydefact_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  510,  510,  523,    0,  565,    0,    0,  563,    0,    0,
			    0,    0,    0,    0,    0,    0,  738,    0,    0,  793,
			  696,    0,    0,  361,    0,    0,  820,    0,  400,  374,
			    0,    0,    0,    0,  362,  695,    0,  374,    0,    0,
			    0,    0,  805,    0,    0,    0,    0,  421,    0,    0,
			    0,    0,  732,  730,  731,  729,  712,  713,  714,  716,
			  718,  719,  721,  720,  722,  715,  717,  728,  725,    0,
			  724,    0,  723,  711,  695,  695,    0,    0,  843,    0,
			  791,   67,   70,   66,   69,  112,  144,  136,  101,  110,
			  144,  136,   99,    0,    0,   73,  146,    0,    0,  903,

			    0,    0,    0,    0,    0,    0,    0,  147,  148,    0,
			    0,    0,  136,  125,  108,  144,  136,   97,  106,  144,
			  136,   95,  105,   94,   93,   78,    0,  138,  139,    0,
			   86,    0,  256,  257,  254,    0,  412,  414,   15,  276,
			  271,  273,  270,  202,    0,    0,  240,  249,  248,    0,
			  246,  234,  211,  500,  171,  172,  163,    0,    0,    0,
			    0,  474,  463,  472,  461,  508,  521,  509,  522,  507,
			  520,  470,  459,  468,  457,    0,    0,    0,  524,  517,
			    0,    0,    0,    0,    0,  549,  695,    0,    0,  795,
			  796,  797,  798,  697,    0,    0,  695,  841,  842,  401, yyDummy>>,
			1, 200, 600)
		end

	yydefact_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  400,  402,  377,    0,    0,  367,  371,  366,  364,  369,
			  365,  368,  370,    0,  401,    0,    0,  819,  818,    0,
			  756,    0,    0,  806,    0,  904,    0,  392,  388,  695,
			  422,  660,    0,    0,  782,    0,    0,  786,  727,  726,
			  694,  692,  780,  784,  851,    0,    0,    0,  844,  850,
			  113,  102,  111,  100,   77,   75,   76,  144,    0,  136,
			  144,    0,  136,  145,  144,    0,  136,  144,    0,  136,
			  144,  136,  136,  141,  151,    0,  150,  140,  143,  510,
			    0,  137,  109,   98,  107,   96,   79,    0,    0,    0,
			  510,   87,    0,    0,  259,  258,    0,    0,  417,    0,

			  275,  272,    0,  324,  333,  332,  278,  287,  277,  281,
			  274,    0,    0,  200,  207,  238,  250,  251,  244,  165,
			  175,  173,  174,    0,  559,    0,  557,    0,  555,    0,
			  553,  552,  620,    0,  695,  699,  700,  701,  684,  821,
			  374,  403,  404,    0,  328,  662,  904,  407,  372,  374,
			  328,  662,  407,    0,  755,  230,  808,  809,  810,    0,
			    0,    0,    0,  393,  389,  390,  398,  394,  695,  425,
			  425,  788,  789,  790,    0,  849,  846,  847,  848,  134,
			  144,  136,  123,  132,  144,  136,  121,  130,  144,  136,
			  119,  128,  144,  136,  117,  127,  116,  115,  510,    0, yyDummy>>,
			1, 200, 800)
		end

	yydefact_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  153,    0,   81,   82,   83,    0,   90,   91,   89,  264,
			  260,    0,  415,    8,  324,  288,  282,    0,    0,  325,
			  360,  324,   15,  290,  284,    0,    0,  334,  280,  279,
			  203,  206,  204,  205,  208,  219,  224,  178,  214,  186,
			  220,    0,  215,  225,  187,  560,  558,  556,  554,  753,
			  682,    0,    0,  405,  385,    0,    0,  378,  379,  376,
			    0,  407,  665,  904,  583,  570,    0,  406,  427,  373,
			    0,    0,  407,  904,  427,    0,    0,    0,    0,    0,
			  634,  633,  695,  391,  399,  395,  396,    0,  426,    0,
			    0,  738,  135,  124,  133,  122,  131,  120,  129,  118,

			    0,  142,  152,  154,  149,  182,  262,    0,  261,  416,
			    6,    0,  292,  286,  289,  283,  330,    0,   15,  155,
			  358,  358,  358,  358,  358,  358,  358,  358,  358,  358,
			  358,  358,  358,  358,  358,  358,  358,  358,  358,  358,
			  358,  358,  358,    0,    0,    0,    0,    0,  221,  215,
			  170,  216,  225,  226,    0,  188,  220,  328,  662,  407,
			  384,    0,  381,  380,  383,  382,  329,    0,  663,    0,
			  407,  605,    0,    0,  604,  761,  695,    0,    0,    0,
			  904,    0,  662,  621,  606,  578,    0,  778,  779,    0,
			  603,  419,  581,  602,    0,    0,    0,    0,  707,  596, yyDummy>>,
			1, 200, 1000)
		end

	yydefact_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  597,  588,  589,  591,  590,    0,  406,  408,  904,    0,
			  428,  328,  662,  407,    0,  407,    0,    0,  757,  631,
			    0,    0,  635,  681,  397,  423,  695,  816,  817,  852,
			  183,    0,    0,  263,    7,   15,  291,  285,    0,  293,
			  330,  155,  401,  359,  357,  335,  354,  351,  356,  355,
			  353,  350,  348,  352,  349,  347,  346,  345,  344,  343,
			  342,  341,  340,  339,  338,  337,  336,  227,  228,  218,
			  223,  179,  180,  177,  213,  196,  195,  191,  185,  225,
			    0,  169,  215,  407,  904,  427,  386,  834,    0,    0,
			  664,  427,    0,    0,  512,    0,    0,    0,    0,  475,

			  487,    0,    0,    0,  683,    0,  904,    0,  577,    0,
			  904,    0,    0,  579,  419,    0,    0,    0,    0,    0,
			  685,    0,    0,    0,  409,  410,  576,  830,  407,  904,
			  427,  833,  427,  829,  632,    0,    0,  267,  265,  266,
			    5,  331,  294,    0,   15,  155,   15,  401,  374,  229,
			  181,  192,    0,    0,    0,  168,  225,    0,  407,    0,
			  387,  668,  666,  667,    0,  512,    0,  500,  708,  903,
			    0,  707,    0,  613,  488,  512,    0,  500,  512,    0,
			  500,  512,  500,  500,  476,    0,    0,    0,    0,    0,
			    0,    0,  904,  904,    0,    0,    0,  617,  904,  607, yyDummy>>,
			1, 200, 1200)
		end

	yydefact_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,  659,  593,  592,    0,    0,  695,  695,  587,
			  595,  594,  411,    0,  407,    0,    0,  636,  424,  326,
			  811,  812,  326,  813,  815,  814,  326,  326,  155,  401,
			   15,  155,  374,  407,    0,    0,  194,  197,  198,  190,
			  167,    0,  828,  427,  824,  832,  496,  512,  500,  485,
			  494,  512,  500,  483,    0,  492,  512,  500,  481,  490,
			  512,  500,  479,  489,  478,  477,  611,    0,  695,  658,
			  657,  638,  904,    0,  646,    0,  641,  640,  572,  623,
			  904,    0,    0,    0,    0,  661,    0,    0,  585,  573,
			  609,  608,    0,    0,    0,    0,  694,  692,  827,  427,

			  823,  831,  327,  299,  297,  298,  296,  401,  374,  155,
			  401,  407,    0,    0,    0,  328,  662,  407,  199,  166,
			    0,  497,  486,  495,  484,  695,  493,  482,  491,  480,
			    0,  695,  684,  575,  637,    0,  643,  642,  574,  624,
			  625,    0,    0,  628,  627,    0,    0,  695,  610,  904,
			  425,    0,    0,    0,  374,  407,    0,    0,  401,  374,
			    0,  328,  662,  407,  326,  407,  904,  427,  826,  614,
			  695,  682,    0,    0,    0,  654,  647,  651,  648,  645,
			  655,  653,  656,  626,    0,  629,  695,  615,  618,  580,
			    0,  599,    0,    0,  825,  407,    0,    0,    0,  328, yyDummy>>,
			1, 200, 1400)
		end

	yydefact_template_9 (an_array: ARRAY [INTEGER])
			-- Fill chunk #9 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  904,  662,  407,  407,  374,  407,    0,    0,  326,  407,
			  904,  427,  320,    0,  407,    0,  612,    0,  650,    0,
			  649,  630,  681,    0,  601,  600,  598,    0,  328,  662,
			  407,  326,  407,  571,  904,  427,  427,  407,    0,    0,
			    0,  328,  662,  407,  321,    0,  407,    0,  326,  427,
			  326,    0,  652,  695,  326,  407,  904,  427,  309,    0,
			  407,    0,    0,    0,  328,  662,  407,  326,  407,  904,
			  427,  326,  427,  326,  322,    0,  316,  616,  308,    0,
			  407,    0,  326,  427,  326,  326,  326,  407,  904,  427,
			  311,    0,  407,    0,  323,    0,  317,  326,  326,  427,

			  326,  313,    0,  301,  295,  310,    0,  407,    0,  326,
			  427,  326,  326,  318,  312,    0,  300,  326,  326,  427,
			  326,  315,    0,  303,  319,  326,  305,  314,    0,  302,
			  326,  304,  326,  307,  306,    0,    0,    0, yyDummy>>,
			1, 138, 1600)
		end

	yydefgoto_template: SPECIAL [INTEGER]
			-- Template for `yydefgoto'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 301)
			yydefgoto_template_1 (an_array)
			yydefgoto_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yydefgoto_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yydefgoto'.
		do
			yyarray_subcopy (an_array, <<
			  314,  315,  316, 1185,  520,  793,  834,  242,  243,  244,
			  219,  765,  220,  165,  166,  766,  846,  847,  522,  848,
			  471, 1027, 1239,  317, 1186,  318,  319,  320, 1189,   76,
			  321,  322, 1190, 1576, 1577, 1578, 1475, 1579,   11,   12,
			    4,  911,  912, 1276,  913,  376,  377, 1064, 1209,  947,
			 1393, 1400, 1481, 1473, 1210, 1191, 1314, 1550, 1603, 1192,
			 1065, 1489,  649, 1422,  704,  705,  706,  551,  552, 1101,
			  536,  537, 1102,  555,  556,  891,  549,  886,  363,  710,
			  732,  733,  369,  370,  734,  323,  131,  373,  746,  203,
			  374, 1193, 1080,  960, 1081, 1543, 1482, 1544, 1277, 1040,

			 1156, 1278,  828,  325,  326,  327,  328,  329,  330,  331,
			  332,  333,  334,  335,  836,  903, 1061,  740,  741,  559,
			  560,  742, 1436,  904, 1268,  747,  630,  631,  632,  633,
			 1020,  634,  474, 1021,  141,  142,   23,  143,  337,  123,
			  338, 1199,    5,    6,   18,   14,   19,   20,   81,   15,
			   16,   36,   82,   83,   84,  339,  340, 1200, 1201, 1202,
			 1203, 1204,   85,  341,   87,   88,  737,  738,   13,   28,
			 1022, 1244, 1269, 1153, 1154, 1148, 1149, 1151, 1152,  124,
			  125, 1055, 1056, 1057, 1058,  804, 1059,  488,  489,  342,
			  343,  619,   89,  344,  345, 1289, 1290, 1063,  346,  347, yyDummy>>,
			1, 200, 0)
		end

	yydefgoto_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yydefgoto'.
		do
			yyarray_subcopy (an_array, <<
			   99,  348,  754,  146,  206,  755,  207,  756, 1068,  629,
			  906,  907,  126,  127,  908,  909,   92,  349,   94,   95,
			  888,  889, 1044, 1273, 1503,  350,  351,  823,  352,  250,
			  129,  251, 1301,  693,  694,  367,  695, 1232, 1010, 1233,
			 1088, 1089, 1476, 1477, 1390, 1205, 1735, 1234, 1235, 1110,
			    9,    8,   30,   31, 1066,   38,   40,   97,  534,  726,
			  731,  188,  585,  378,  569, 1145, 1147, 1353, 1352,  744,
			 1146, 1143, 1144,  567,  745,  564,  749,  566,  558, 1107,
			  910,  943,  830,  801, 1207,  898, 1012,  647, 1321, 1312,
			 1535, 1169,  621,  676,  650,  677,  651,  463,  194,  643,

			  478,  679, yyDummy>>,
			1, 102, 200)
		end

	yypact_template: SPECIAL [INTEGER]
			-- Template for `yypact'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1737)
			yypact_template_1 (an_array)
			yypact_template_2 (an_array)
			yypact_template_3 (an_array)
			yypact_template_4 (an_array)
			yypact_template_5 (an_array)
			yypact_template_6 (an_array)
			yypact_template_7 (an_array)
			yypact_template_8 (an_array)
			yypact_template_9 (an_array)
			Result := yyfixed_array (an_array)
		end

	yypact_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			  303,  522, 2338, 2248, -32768, -32768, 1799, -32768, -32768, -32768,
			 -32768, 1666, -32768,  482, -32768, 1481, -32768,  610, -32768, 1162,
			  950, 2564, 1670,  797, 1785, 1785, 1785, -32768, 1786, -32768,
			 -32768, -32768, -32768, -32768, -32768, 1671, -32768, -32768, -32768, -32768,
			 -32768,  186,  144,  318, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, 1093, -32768, -32768, -32768, -32768,   70,
			 1665, -32768, 1663, 2564, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768,  980, 3449, 2274,

			 1779, 1778, 1763,  610, -32768, -32768, 2564, -32768, -32768, -32768,
			 -32768, -32768, -32768, 1676, 1661, -32768,  889, -32768, 1627, 1606,
			 1831,  714, 1005,  872, -32768, 1638, -32768, 1635, 1641, -32768,
			  714, 1639, 1631, -32768, 1738, 2564, -32768, -32768, -32768,  610,
			  610,  778,  980, -32768, 1687, -32768, 2127, 1609,  610,  610,
			  610, -32768, -32768,  889, 1828,  951,  872, 1623, -32768,  889,
			 1816,  946,  872, 1619, 1618, -32768, -32768, 1757,  889, 1767,
			  919,  872, 1614,  889, 1726,  815,  872, 1613,  889,  801,
			  872, 1611,  872,  318, 1483, 1482, 1612, -32768, 1718,  610,
			 7109, 1622,  318, -32768, 6100, -32768, -32768, 1677, 1669, -32768, yyDummy>>,
			1, 200, 0)
		end

	yypact_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 -32768, -32768, 1009, 1673,  754, 1601, -32768, 2095, -32768, -32768,
			 -32768, -32768,  889,  725,  872, 1596,  318, 1483, 1482, -32768,
			 -32768,  610, -32768,  889,  672,  872, 1592,  318, 1483, 1482,
			 -32768,  610, -32768, 1589, 1573,  936,  848,  643, 1498, 1467,
			 1682,  714, 1718, 1085, 1085, -32768, -32768, 1595,  872, 1578,
			 1563, 1560, -32768,  889,  390,  872, 1585,  318, 1483, 1482,
			 -32768,  610, -32768,  889,   73,  872, 1569,  318, 1483, 1482,
			 -32768,  610, -32768,  318, 1483, 1482, -32768,  610, -32768, 1565,
			 -32768, 1558,  252, 1557, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, 1554, 6100, 6100,  451, -32768, 1593, 6100, -32768, 1545,

			 -32768, 6100, -32768, 6100, 1544, 1608,  968,  233, 6100, 6203,
			 1547, 3342, 6100, 1548, -32768, -32768, 1105, -32768,  292,   88,
			 -32768, -32768, -32768, -32768, 6929, 1536, 1532, 1531, -32768, -32768,
			 -32768, 1055, 1038, -32768, -32768, -32768, 5997,  417, -32768, -32768,
			 1253, -32768, -32768, -32768, -32768, -32768, -32768, -32768, 1525, -32768,
			 1513, -32768, 6100, 1009, 1009, 1330, 1320, -32768, 1196, 1309,
			 1279, 1516,  714, 1604, 1167, -32768, 1552, 1552, -32768,  524,
			 -32768,  915,  897, 2061, -32768, 1561, -32768, 1986, 1609, -32768,
			  318, 1483, 1482, -32768,  610, 1508, 1361, -32768,  318, 1483,
			 1482, -32768,  610, 1507, 1361,  889, 1479,  872,  889, 1399, yyDummy>>,
			1, 200, 200)
		end

	yypact_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			  872, -32768, -32768, 1499, -32768,  889, 1392,  872,  889, 1386,
			  872,  889,  872,  872, -32768, 1493, 1490, 1484, -32768, -32768,
			  318, 1487, -32768, -32768, -32768,  318, 1483, 1482, -32768,  610,
			 1475, 1361, -32768,  318, 1483, 1482, -32768,  610, 1465, 1361,
			 1462, 1361, 1473, -32768, -32768, -32768, 1456, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768,  634,  239,  161, 1458, 1460, -32768,
			 -32768, -32768, -32768, 6100, 1457,  714, -32768, 1452,  318, -32768,
			 -32768, 1446, 1253, -32768,   77, 3551, -32768, 6100,   67, 2367,
			 1593, 1564, 1443,  318, -32768, 6458,  318, -32768, -32768, 1048,
			 -32768, -32768, 6100, 6100, 6100, 6100, 6100, 6100, -32768, -32768,

			 6100, 6100, 6100, 6100, 6100, 6100, 6100, 6100, 6100, 6100,
			 6100, 5894, 5791, 6100,  610,  610, -32768, -32768, -32768, -32768,
			 3284, 1439, -32768, 6994, 1552, 1552, 1552, 1552, 1196, 1380,
			 1167, 1196, 1372, 1167, 1644, 1432, -32768, -32768, 1576, 1196,
			 1247, 1167, 1196, 1203, 1167, 1196, 1167, 1167, 1542, -32768,
			 1422, -32768, -32768, 1576, 1468, -32768, -32768, -32768,  610, -32768,
			 1455, 1431, 1424, 2024,  610, 1898,  610,  754, 1421,  714,
			 -32768, 1417, 1361, 1403, 1408, 1361, 1398, 1397,  889,  872,
			 1395, 1394,  889,  872, 1389, 1757, 1757, 1757, 1385,  889,
			  872, 1382, 1378,  889,  872, 1376, 1373, 1371, 1364, -32768, yyDummy>>,
			1, 200, 400)
		end

	yypact_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 -32768, -32768,  364, 1365, 1361, 1368, 1362, 1361, 1359, 1347,
			  610, 1718, 1718, 1718,  610,  318, 6703, 6636, 5688, -32768,
			 -32768, 6100, 1358, -32768, 1356,  610, -32768,  318, 1445,  581,
			  610,  610,  506,  490, -32768,  359,  318,  531,  610,  610,
			 1353,  610, -32768,  610, 1349, 6100, 1348, 5056, 6100,  123,
			 6100, 6100,  753,  753,  753,  753, 1842, 1842,   78,   78,
			   78,  753,  753,  753,  753,   78,   78, 2627, 2397, 6100,
			 2397, 6100, 6915, -32768,  417,  417, 6100, 6100, -32768, 5159,
			 -32768, -32768, -32768, -32768, -32768, -32768, 1196, 1167, -32768, -32768,
			 1196, 1167, -32768,  197, 1644, -32768, -32768, 1199, 1180,  211,

			 1151, 1082, 1161,  714, 1576,  610,  610, -32768, -32768, 1341,
			 1338,  734, 1167, 1329, -32768, 1196, 1167, -32768, -32768, 1196,
			 1167, -32768, -32768, -32768, -32768, -32768,  610, -32768, -32768, 1336,
			 -32768,  610, 1325,  610, -32768,  963, -32768, -32768,  522, 1331,
			 1431,  330, -32768, -32768,  610,  610, -32768,  610, 1292,  610,
			 -32768, -32768, -32768,  872,   49,  714, -32768, 1272,  610, 1268,
			  610, 1321, 1316, 1290, 1285, -32768, -32768, -32768, -32768, -32768,
			 -32768, 1283, 1282, 1269, 1263, 1085, 1085, 1085, -32768, -32768,
			 1260,  610, 1259,  610,  610, -32768,  417, 1264,  610, -32768,
			 -32768, -32768, -32768, -32768, 6864, 5585,  417, -32768, 1253,  768, yyDummy>>,
			1, 200, 600)
		end

	yypact_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 -32768, 5056,  474, 3449,  509, -32768,  684, -32768, -32768, -32768,
			 -32768, -32768, -32768,  318,  768, 3449,  480, -32768, -32768, 5482,
			 -32768,  890,  444, -32768, 3449, 3393, 1256, 1237, 6787,  876,
			 4953, 7042, 6100, 6100, -32768, 6799, 5379, -32768, 2397, 6915,
			 3150, 2926, -32768, -32768, -32768, 1593,  816, 4850, -32768, 7042,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, 1196, 1144, 1167,
			 1196, 1112, 1167, 1255, 1196, 1092, 1167, 1196, 1030, 1167,
			 1196, 1167, 1167, -32768, -32768,  525, -32768, -32768, -32768, -32768,
			 1644, 1251, -32768, -32768, -32768, -32768, -32768, 1366, 1354,  256,
			 -32768, -32768,  201,   59, -32768, -32768, 1250, 1250, -32768, 1352,

			 -32768, -32768,  610, 1088, -32768, 1360, -32768, -32768, -32768, -32768,
			  330,  381,  325, -32768, 1239, -32768, -32768, -32768, -32768, 1102,
			 -32768, -32768, -32768,  610, 1157,  610, 1157,  610, 1157,  610,
			 1157, 1157, -32768, 6100,  417, -32768, -32768, -32768, -32768, -32768,
			  307, 5056, 4953,  610,  462,  317,  460,  357, 1225,  223,
			  462,  317,  357, 1593, 1355, -32768, -32768, -32768, -32768, 6100,
			 1291, 1265,  610, -32768, -32768, 1204, 1193, 2996,  814, 6468,
			 6468, -32768, -32768, -32768, 1174, -32768, -32768, -32768, -32768, 1229,
			 1196, 1167, 1228, 1224, 1196, 1167, 1223, 1220, 1196, 1167,
			 1218, 1211, 1196, 1167, 1206, 1186, 1183, 1176, -32768, 1576, yyDummy>>,
			1, 200, 800)
		end

	yypact_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			  341,  610, -32768, -32768, -32768, 1576, -32768, -32768, -32768, 1172,
			 -32768, 1169, 5056, -32768,  584, -32768, -32768,  330,  318, -32768,
			 -32768,   65,  522, -32768, -32768,  610, 6865, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768,  221, 1276,  856,  139,  914,
			 1178, 1274, 1119, 1086, 1270, 1157, 1157, 1157, 1157, -32768,
			 -32768, 3449,  446, 4953,  491,  610,  610,  610,  610, -32768,
			 3449,  357, 1160,  460, -32768, -32768, 5274, 1240,  264, -32768,
			 3449,  385,  357,  460,  264, 1158,  610, 6238, 6100, 6100,
			 1265, -32768,  417, -32768, -32768, -32768, 1133, 6100, -32768, 1254,
			 1248, 6593, 1141, 1139, 1137, 1129, 1123, 1121, 1120, 1117,

			  610, -32768, -32768, -32768, -32768, 1116, -32768,  318, -32768, 4953,
			 1238,  330, -32768, -32768, -32768, -32768, 1118,  318,  522,  797,
			 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179,
			 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179, 1179,
			 1179, 1179, 1179,  610,  610,  610,  610,  323, -32768, 1119,
			 -32768, -32768, 1086, -32768, 1214, -32768, 1178,  462,  317,  357,
			 -32768,  318, -32768, -32768, -32768, -32768, -32768, 1192, -32768, 3449,
			  357, -32768,  597,  318, -32768,   94,  757, 6100, 6100, 6100,
			  777, 1099,  317, 1093, -32768, 1184, 1138,  292,   88, 1136,
			 -32768, 1105, -32768, -32768, 1069, 1067, 1055, 1038, 3923, -32768, yyDummy>>,
			1, 200, 1000)
		end

	yypact_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 -32768, 2197, -32768, -32768, -32768,  526, -32768, 5056,  939, 1177,
			 -32768,  462,  317,  357, 1166,  357, 1163, 1046, -32768, -32768,
			 1853, 6393, -32768, -32768, -32768, 7042,  707, -32768, -32768, -32768,
			 -32768,   42,  318, -32768, -32768,  522, -32768, -32768,  610,  555,
			 1118,  797,  768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768,  913,  610, -32768,
			 -32768, -32768,  610, -32768, -32768, -32768,  285,  745, -32768, 1086,
			 1156, -32768, 1119,  357,  460,  264, 1016, -32768,  693, 3449,
			 -32768,  264,  938,  290,  889,  740,  616, 1021,  714,  872,

			 -32768, 1019, 1025,  714, 4535, 1703, 2479, 6348, -32768,  318,
			  939,  638, 4747, -32768, 1105, 6100, 6100,  427,  610,  610,
			 4055, 5274, 6100, 6100, 5056, 4953, -32768, -32768,  357,  460,
			  264, -32768,  264, -32768, -32768, 6100, 6100, -32768, -32768, -32768,
			 -32768, -32768, -32768, 6541, 6313,  797,  697,  768,  879, -32768,
			 -32768, -32768,  610,  323, 1114, -32768, 1086, 1109,  357, 1107,
			 -32768, -32768, -32768, -32768, 1103,  889,  995,  872, -32768,  889,
			  680, -32768,  872,  987, -32768,  889,  625,  872,  889,  414,
			  872,  889,  872,  872, -32768,  497, 6754,  985,  610,  610,
			  665,  920,  829,  648,  975, 1096,  318,  977,  981, -32768, yyDummy>>,
			1, 200, 1200)
		end

	yypact_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 1087, 4640, 1048, 7042, 7042, 6100, 1040,  417,  417, -32768,
			 7042, 7042, 4953, 1066,  357, 1060, 1050, 7042, 7042,   29,
			 -32768, -32768,   29, -32768, -32768, -32768,   29,   29,  797,  768,
			  522,  797,  819,  357, 3449,  376, -32768,  913,  610, -32768,
			 -32768, 1023, -32768,  264, -32768, -32768, -32768,  889,  872, -32768,
			 -32768,  889,  872, -32768,  610, -32768,  889,  872, -32768, -32768,
			  889,  872, -32768, -32768, -32768, -32768,  877,  610,  417, -32768,
			 -32768, -32768,  981,  966,  943,  922,  920, -32768, -32768, -32768,
			  939,  912,  570,  833,  785, -32768,  772,  610, -32768, -32768,
			 -32768, -32768,  883,  857, 3379, 6100, 3803, 3683, -32768,  264,

			 -32768, -32768, -32768, -32768, -32768, -32768, -32768,  768,  711,  797,
			  768,  357, 3449,  369,  862,  462,  317,  357, -32768, -32768,
			  849, -32768, -32768, -32768, -32768,  417, -32768, -32768, -32768, -32768,
			  610,  417, 4415, -32768, -32768,  420, -32768, -32768, -32768, -32768,
			 -32768,  835, 6100,  833, -32768,  610,  497,  417, -32768,  191,
			  770,  127, 3379,  824,  685,  357, 3449,  129,  768,  658,
			  780,  462,  317,  357,   29,  357,  460,  264, -32768, -32768,
			  417, 4295,  706,  701,  318, -32768,  600,  612,  420, -32768,
			 -32768, -32768, -32768, -32768, 6348, -32768,  417,  483, -32768, -32768,
			  736, -32768,  726,  718, -32768,  357, 3449,  350,  702,  462, yyDummy>>,
			1, 200, 1400)
		end

	yypact_template_9 (an_array: ARRAY [INTEGER])
			-- Fill chunk #9 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			  460,  317,  357,  357,  595,  357, 3449,  289,   29,  357,
			  460,  264, -32768,  689,  357,  654, -32768,  538, -32768,  420,
			 -32768, -32768, 4175,  610, -32768, -32768, -32768,  641,  462,  317,
			  357,   29,  357, -32768,  460,  264,  264,  357, 3449,  210,
			  631,  462,  317,  357, -32768,  628,  357,  619,   29,  264,
			   29,  283, -32768,  417,   29,  357,  460,  264, -32768,  582,
			  357,  554,  551,  544,  462,  317,  357,   29,  357,  460,
			  264,   29,  264,   29, -32768,  518, -32768, -32768, -32768,  508,
			  357,  438,   29,  264,   29,   29,   29,  357,  460,  264,
			 -32768,  410,  357,  398, -32768,  392, -32768,   29,   29,  264,

			   29, -32768,  372, -32768, -32768, -32768,  365,  357,  332,   29,
			  264,   29,   29, -32768, -32768,  328, -32768,   29,   29,  264,
			   29, -32768,  280, -32768, -32768,   29, -32768, -32768,  156, -32768,
			   29, -32768,   29, -32768, -32768,  148,  117, -32768, yyDummy>>,
			1, 138, 1600)
		end

	yypgoto_template: SPECIAL [INTEGER]
			-- Template for `yypgoto'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 301)
			yypgoto_template_1 (an_array)
			yypgoto_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yypgoto_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yypgoto'.
		do
			yyarray_subcopy (an_array, <<
			 -32768, -32768, -32768, -32768, -281, 1143, -568, -32768, -32768, -32768,
			  254,  -52, -116,  103, -227, -137, -32768, -32768, -441, 1080,
			 -32768, -32768,  686,   -1, -32768, -1009, -1010, -32768, -32768, -1244,
			  -13,  -21, -32768, -32768,  300, -32768, -32768,  344, -32768, -32768,
			    2, -32768, -32768, -320,  122, -32768, -32768, -1296, -468, -757,
			 -1404,  517,  429, -32768, -32768,  730, -32768, -1369, -32768,  571,
			 -849,  436,  507,  547, -32768, -32768, -32768, 1205,  425, -473,
			 1197,  817, -497, -32768, -247,  992, -32768,  996, -492, -32768,
			 -32768, -32768, -32768, -32768, 1150,   69,  699, -32768, -508, -32768,
			 1314, -32768, -32768, -32768,  795, -32768, -32768,  337, -32768,  828,

			 -32768,  516,  928, -1012, -1013, -32768, -32768, -32768, -32768, -1017,
			 -1024, -32768, -253, -283, -170, -804, -923, -32768, -32768, -32768,
			 -32768, 1124,  430, -289, -628, -654, -32768, -32768, -32768, -32768,
			 1559,  961, -32768, -32768, -32768, -32768, -32768, 1719,  -11, 1822,
			 -32768, -32768, -32768, -709, 1073,  999, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768,   27, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -1268,  -17, -189, -32768, -32768, -32768, -32768, 1234,
			  836, 5954, -1050,  940, -1092,  935,  695,  931, -1082,  240,
			 2223, -32768, -32768, -32768, -32768, -600,  260, -32768, -1103, -32768,
			 -595, 1231, -294,   -9,  -19, -32768,  557, -928, 1765, 1509, yyDummy>>,
			1, 200, 0)
		end

	yypgoto_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yypgoto'.
		do
			yyarray_subcopy (an_array, <<
			 -1087,  -42, -32768, -32768, 1464, -32768, -32768,  222, 1209, -467,
			 -768,  926, -32768, 1538, -791,  925, -397,   -5, -171, -32768,
			 -1076, -1077, -32768,  560,  426, -1375, -32768, 1004, -285,  -10,
			 -32768, -32768, -32768, -155, -32768,  556, 1131, -32768,  927,  591,
			 -1279, -942, -32768,  345, -32768, -1230, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768,    5, -32768, -32768, -32768, -32768, -32768,
			 -32768, 1332, -216, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -767, 1022,  614, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,

			 -32768, -32768, yyDummy>>,
			1, 102, 200)
		end

	yytable_template: SPECIAL [INTEGER]
			-- Template for `yytable'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 7240)
			yytable_template_1 (an_array)
			yytable_template_2 (an_array)
			yytable_template_3 (an_array)
			yytable_template_4 (an_array)
			yytable_template_5 (an_array)
			yytable_template_6 (an_array)
			yytable_template_7 (an_array)
			yytable_template_8 (an_array)
			yytable_template_9 (an_array)
			yytable_template_10 (an_array)
			yytable_template_11 (an_array)
			yytable_template_12 (an_array)
			yytable_template_13 (an_array)
			yytable_template_14 (an_array)
			yytable_template_15 (an_array)
			yytable_template_16 (an_array)
			yytable_template_17 (an_array)
			yytable_template_18 (an_array)
			yytable_template_19 (an_array)
			yytable_template_20 (an_array)
			yytable_template_21 (an_array)
			yytable_template_22 (an_array)
			yytable_template_23 (an_array)
			yytable_template_24 (an_array)
			yytable_template_25 (an_array)
			yytable_template_26 (an_array)
			yytable_template_27 (an_array)
			yytable_template_28 (an_array)
			yytable_template_29 (an_array)
			yytable_template_30 (an_array)
			yytable_template_31 (an_array)
			yytable_template_32 (an_array)
			yytable_template_33 (an_array)
			yytable_template_34 (an_array)
			yytable_template_35 (an_array)
			yytable_template_36 (an_array)
			yytable_template_37 (an_array)
			Result := yyfixed_array (an_array)
		end

	yytable_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   78,  287,   91,    7,   86,  451,   35,  187,   77,  403,
			   80,  637,   90,   17,   21,  822,   93,  484,  472,  289,
			   75,  789,  477, 1073,  336,  466,  481, 1072, 1090,  899,
			  246,  626, 1242,  128,  942,   17,   17,  816, 1406,  447,
			  448,  708, 1197,   21,  459,   21,  709,  366,  460, 1196,
			  461,  563,  565, 1195, 1194,  403, 1188, 1187,  750,  952,
			 1280,  709,   78, 1373,   91,  707,   86, 1279, 1272, 1271,
			   77, 1536,  137, 1008,   90, 1423, 1423,  892,   93,  145,
			  728, 1397,   75,  837,  133,   78,  144,   91, 1317,   86,
			   79, 1019,  151,   77, 1270,  137, 1274,   90, 1014, 1421,

			 1421,   93, 1488,  628,  147,   75,  418,  419,  842,  843,
			  138,  185, 1024,  628,   78,  245,   91, 1737,   86, 1029,
			  557,  117,   77,  115,  137, 1551,   90,  833,  197,  198,
			   93,  144,  421,  152,   75, 1023,  284,  208,  209,  210,
			  946, 1591, 1028,  434,  218,   34,   33,   32, 1736,  513,
			  229,  204,   79, -212, 1347, 1466,  247, -708, -708,  259,
			 1582, 1601,  196, 1338,  269, 1502,  336, 1337,  275,  286,
			 1732,  288, 1087,  279, 1053,   79, 1488, -212,  285,  832,
			 1621, 1600,  291, 1593,  917,  920,  586, 1354,  587, 1117,
			  414,  636,  501,  433,  822, 1272, 1271, 1105,  524,  526, yyDummy>>,
			1, 200, 0)
		end

	yytable_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 1356,  627,  382, 1582,   79, -582,  385,  132,  874,  876,
			  386, 1402,  709,  390, 1170, 1006, -690,  393, 1349,  112,
			  394,  946, -686, 1113, 1215,  491, 1115,  611,  612,  613,
			 1284,  873,  247,  247, 1283, -217, -582,  915,  892,  916,
			 1070,  918, 1665,  427, 1582, 1109, 1112,  430,  111, 1114,
			  431,  802,  453,  435, 1310, -217,  211,  438, 1429, -217,
			  439,  110,  222,  440, 1441,  476,  441, 1581,  973,  735,
			 1003,  252, 1592,   34,   33,   32,  262,  681,  682,  683,
			  684,  272, -498,  452, 1329,  457,  458, -498, 1328, 1351,
			  109, 1575,   91,  618, 1730, 1159,  475, 1197, -498, -193,

			  946, 1208,   90,  470, 1196,   34,   33,   32, 1195, 1194,
			 1581, 1188, 1187, 1119, 1213,  379, 1587,  161,  855, -193,
			 1237, 1642,  854, -193, 1051,    3,  387, -193,   34,   33,
			   32, 1308,  940,    2, 1575,  802,  798, -144,  469, 1370,
			 1052, 1507, 1725, 1236, 1510,  122, 1720,  949,  535, 1071,
			  902, 1581,   71,  468,  821,  467,  424,  939,   70, 1326,
			 -512,  946,  456, 1369,  454,  121,  432,  120,  119,  118,
			  571,    1, 1067,  572,  561, 1575,  164,  444,  574, 1718,
			  946,  575, 1629,  775,  776,  777, 1717,  946, 1000,  164,
			  117,  116,  115,  840,  841, 1368,  946,   34,   33,   32, yyDummy>>,
			1, 200, 200)
		end

	yytable_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   45, 1562,   34,   33,   32, -193, 1712,  249, 1516, 1241,
			  602,  788, 1711, 1573, 1572,  603,  230, 1212,  604,  900,
			 -693, -193, 1558,  606, 1709,  260,  607,  287,  249,  490,
			  270, -371, -371, -371,  276, 1358,  278,  887,  313, 1062,
			 1325,  264,  365,  562,  735,  289, 1032,  114,  618,  768,
			  770,  795, 1700,   34,   33,   32,  113,  946,  624, 1275,
			  426, 1395,   34,   33,   32, 1060,  635, 1104,  383,  457,
			  640, 1405, 1087,  644, -582, -582,  646, 1103, 1158,  391,
			 1414,  464,  249,  813,  812, -375,  117, 1460,  115,   71,
			  779,  946,   34,   33,   32,   70,  789, -582,  577,   27,

			  778,  581, 1030,  674,  675,  932, -375,  709,  588,  428,
			  425,  592,  951,  709,  596,  938,   34,   33,   32,  436,
			  946,  450, 1698,   34,   33,   32, -375,  711,   26,   25,
			 1345,   24, 1697,  821,  767,  769,  954,   45, -268,  464,
			 1574,  945,  729, 1478,    3, 1401, -268,  452,  815, -268,
			 1573, 1572,    2,  748, -268,  748,  449, 1412, 1686,  802,
			  767,  769,   34,   33,   32, 1685,  -15,  957, 1684,   34,
			   33,   32,  -15,  295,  247,  247,  247,    3,   34,   33,
			   32, 1344, 1480,  -15, 1540,    2,  -15,  -15, 1566, 1323,
			 1322,  -15, 1565,  365,  365,  286, 1682,  288,  803,  785, yyDummy>>,
			1, 200, 400)
		end

	yytable_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  887,  -15, 1368,  786,  902,  787, 1216,  -15, 1590,  802,
			 1019, 1623, 1638,  810,  452, 1161, 1160,  799, 1025,  806,
			  806,  806,  806,  802,  122,  795,  814,  817,  818,  808,
			  820, 1538,  452, 1673, 1610, 1428,  829, 1431, 1609,  768,
			  770, 1637, 1671,  175, 1298, 1667, 1297, 1296, 1295,  880,
			  998,  580,  254, 1050,  584, 1654,   34,   33,   32, 1651,
			 1480,  591, 1479,  999,  595, 1379,  597,  598, 1650,  117,
			 1294,  115, 1619, 1634, 1005, 1606, 1632, 1472, 1517, 1471,
			 1049,  761,   34,   33,   32,  763,  802, 1343,  117, 1378,
			  115, 1342,  771,  729,  875,  875,  773,  117, 1456,  115,

			 1589, 1656, 1596, 1648, 1605, 1655,  467,  224, 1018, 1111,
			   34,   33,   32,  802, 1669,  452, 1631, 1614, 1668,    3,
			  893, 1509,  452, 1430, 1438, 1618, 1293,    2, 1556, 1025,
			  905, 1595, 1626,  914,  748, 1292,  748, 1688,  748,  802,
			 1625, 1687,  389, 1368,   34,   33,   32,  924, 1435,  926,
			 1624, 1633,  117, 1451,  115, -499, 1563, 1555, 1396, -189,
			 -499, 1646,  372,  371,  247,  247,  247,  170,  404, -498,
			  928, -499,  930,  931,  365, 1348,  112,  934,  713, -189,
			 -498,  110, 1100, -189,  944, 1660,  117, -189,  115, 1376,
			  829,  789,  388,  713, 1608,  381,  950,   34,   33,   32, yyDummy>>,
			1, 200, 600)
		end

	yytable_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 1602, 1223, -582,  948,  628,  288, -582, 1680,  813,  812,
			 1438,  452,  117, 1375,  115, 1087, 1362, 1359, 1361,  968,
			 1692, -582, -582, 1364,  513,  249,  249,  249,   98,  464,
			  961, 1336, 1513,  762,  457,  974, 1512,  764, 1594, 1707,
			 1630, -582, -582, -582,  772,  380, 1542,  802,  774, 1583,
			 1643,  249,  249,  249, 1267, 1267,  887, 1267,  880,  879,
			  508,  507, 1415, 1568, 1416, 1511,  502,  501,  500, -582,
			 -176,  274, -176,   34,   33,   32, 1564, 1303,  452,  464,
			 1432,  893, 1666,  497,  496,  268, 1549,   34,   33,   32,
			 -176,  905,  905, 1546, -176, 1304, 1434, 1548, -176,  905,

			  914,  914,  287,  200,  199, -243, -243,  802, 1557,  525,
			  527, -243, 1045, 1545, 1046, -243, 1047, 1320, 1048, -243,
			  289,  273, -243, -237, -237, 1433, 1539, -243, -184, -237,
			  829,  968, 1054, -237,  365,  267,  464, -237, 1086,  976,
			 -237,  975,  457, 1075,  713, -237, 1425, 1425, -184, 1341,
			 -243, 1082, -184, -582, 1597,  688, -184,  -26,  692, 1607,
			 1474,  -26, 1508, 1392,  -26,  155,  717,  -26, -237,  721,
			  -26,  723,  724,  402, -512, 1520,  921,  922,  -26, 1267,
			 1534,  -26,  -26,  887, -644,  164,  -26, 1366,  711,  258,
			  905,   34,   33,   32,  729, -584,  -26,  -26,  464,  -26, yyDummy>>,
			1, 200, 800)
		end

	yytable_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  965,  829,  -26,  905, 1639, 1530,  905,  919, 1116,  186,
			  117, 1365,  115,  956,  806,  955,  228,  562,   34,   33,
			   32,  217,  213,   34,   33,   32,  164,  140,  139,  104,
			  105, 1553, 1157, 1031, 1033,  562,  122, 1519,  955,  257,
			 1554, 1166,  968, 1559, 1054, 1054, 1054, 1054,  179, 1424,
			 1424, 1211,   34,   33,   32, 1198,  362,  264,  361,  360,
			  359,  401, -499, 1437, 1501, 1218,  227,  117, 1447,  115,
			  286,  216,  288, -499, 1500,  184, 1226,   34,   33,   32,
			 1498,  117,  358,  115, 1495,  897,   39,  896,  465,  875,
			  464, 1604,  648,  117, 1381,  115, 1484, 1231,  968, 1615,

			  905, 1490,  117,  992,  115, 1487, 1468, 1240,  902,  175,
			 1485,  107,  851,  108, 1019, 1454,  853, 1445, 1039,  254,
			  365, 1444,  324, 1442, 1036,  183, 1496, 1497, 1440,  357,
			  487,  868,  452,  452,  452,  452, 1038, 1037,  356,  224,
			 1036,  883, 1450, 1647, 1035,  885, 1386,  355, 1385, 1437,
			 1288, 1286, 1360, 1038,  117,  867,  115,  417,  416,  415,
			   34,   33,   32, 1302,  117,  988,  115, 1661, 1662,  -25,
			 1355,  213, 1238,  -25,  788,  517,  -25, 1333,  170,  -25,
			 1331, 1675,  -25, 1384,  117,  984,  115, 1532,  179, 1681,
			  -25, 1327,  516,  -25,  -25, 1319,  829, 1318,  -25, 1316, yyDummy>>,
			1, 200, 1000)
		end

	yytable_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  865, 1315, 1693, 1180, 1695,  130, 1287,  161,  -25,  -25,
			  467,  -25, 1018, 1017,  -25, 1702,  117,  980,  115, 1309,
			 1035, 1708, 1231,  117,  864,  115,  155,  452, 1281,  861,
			  264, 1715, 1243,  117,  870,  115,  479, 1340,   -4,  713,
			  485, 1230, 1722,  -96, 1569,  713, -107,  -98,  858, -109,
			 1571, 1728,  117,  860,  115, -100, 1453,  452,  100,  101,
			  102,  452, 1228, -111,  324, -102, 1588, -113, 1227, 1224,
			 1288,  117,  857,  115,  254,  117,  719,  115, 1079, 1217,
			  523, 1206, 1371, 1168,  982, -549, 1039,  986, 1150, 1616,
			 -222,  990, 1108, 1106,  994, 1091,  996,  997,   37, 1394,

			 1371,  829,  -93, 1078,  550, 1622,  175, 1407, 1408,  -94,
			 1198, 1391, -105,  829,  968, 1162, 1163, 1164, 1165,  117,
			  715,  115,   78,   78,   91,   91,   86,   86,  543, 1084,
			   77,   77,  -95,  535,   90,   90,  170, -106,   93,   93,
			 1083,  452, 1420, 1420,  -97,  685, -108,  161,  689,  -99,
			 -110,  117,  542,  115, -101, -112,  714,  155,  540,  718,
			 1076, 1069,  722, 1026, 1034,  286, 1013,  288, 1002,  532,
			 1009, 1001, 1677,  963, 1371,  521, -114, 1469, 1470,  529,
			 -126,  117,  539,  115,  962,  933, 1486,  929,  927, -435,
			  968,  617,  117,  531,  115, -446,  925, 1374, 1483,  224, yyDummy>>,
			1, 200, 1200)
		end

	yytable_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  923,  968,  117,  528,  115,  523, 1093,  213, -437, -448,
			 1095, -439, 1300,  264, 1097, 1515, -450,  917, 1099,  254,
			  652,  653,  654,  655,  656,  657,  224,  452,  658,  659,
			  660,  661,  662,  663,  664,  665,  666,  667,  668,  670,
			  672,  673, -441, 1525,  117,  690,  115, -452,  167,  739,
			  894,  562,  117,  686,  115, -103, 1531,  800,  117,  593,
			  115,  890,  287,  878,  117,  589,  115,  877, 1446,  826,
			  824,  117,  582,  115,  819,  784, 1547,  797, 1455,  796,
			  736, 1459,  730,  782, 1463,  167,  780,  783,  -17, -550,
			 -432,  167,  -17, 1561,  175,  -17,  781, -433,  -17, -444,

			  167,  -17, -434,  850, -445,  167,  213,  852, -436,  -17,
			  167, -447,  -17,  -17,   78, -438,  409,  -17,   86, 1570,
			 -449, -440,   77, -451, 1580,  170,  760,  -17,  -17,  759,
			  -17,  758,  882,  -17, 1586, 1371,  884, 1599,  757,  117,
			  408,  115,  752,  179,  167,  743,  617,  406,  727,  794,
			 1521,  117,  578,  115, 1523,  167,  725,   78,  696, 1526,
			  554,   86,  678, 1528, 1617,   77,  642, 1580,  167,  641,
			  117,  405,  115,  825,  625,  623,  831, 1628,  835,  835,
			  620,  616,  615,  609,  614,  167,  608, 1641,  117,  545,
			  115,  805,  807,  809,  811,  167,  605,  838,   78,  839, yyDummy>>,
			1, 200, 1400)
		end

	yytable_template_9 (an_array: ARRAY [INTEGER])
			-- Fill chunk #9 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  161,  610,   86,  122,  835,  835,   77,  849, 1580,  601,
			 -525, -526, 1653, -431,  167,  600,  155,   29,  599, 1664,
			  122, 1449,  399,  703, -465,  702,  701,  700,  576,  573,
			  286, 1458,  205,  175, 1462,  568, 1464, 1465,  396,  548,
			  121, -691,  120,  119,  118,  117,  398,  115,  456,  699,
			  454,  158,  158, -688,  170,  174,  158,  158,  158, -689,
			  515,  117,  395,  115,  514,  456,  455,  454,  486,  482,
			  462,  122, -687, -686,  979,  446,  169,  983,  117,  173,
			  115,  987,  445,  443,  991,  423,  442,  995,  161,  422,
			  538,  362,  158,  361,  360,  359,  553,  437,  158,  117,

			  168,  115, 1522,  155, -442,  698, 1524,  158, 1389,  179,
			  160, 1527,  158,  429,  697, 1529,  117,  358,  115,  420,
			  392,  375,  114,  794,  384,  154,  368,  167,  354, 1388,
			  167,  113,  290,  117,  159,  115,  353,  167,  280,  277,
			  167,  271,  261,  167,  232,  122,  202,  231,  117,  153,
			  115,  221,  195,  264,  117,  411,  115,  193,  967,  192,
			  969,  970,  190, -527,  835,  241,  189,  240,  239,  238,
			  150,  158,  158,  356,  513,  849,  158,  158,  158,  512,
			  511,  510,  355,  509,  122,  149,  148,  167,  136,  135,
			  283,  282,  281,  103,  254,  106,   96, 1092,  117,  263, yyDummy>>,
			1, 200, 1600)
		end

	yytable_template_10 (an_array: ARRAY [INTEGER])
			-- Fill chunk #10 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  115, 1094,   27,   22,  241, 1096,  240,  239,  238, 1098,
			  508,  507,  506,  505,  504,  503,  502,  501,  500,   10,
			 1324, 1537,  941, 1339, 1011,  856,  958, 1016, 1015,  237,
			  236,  235, 1350,  497,  496,  495,  494,  493,  492,  117,
			  253,  115,  570,  224,  134,  519, 1363,  234, 1504,  792,
			 1043, 1282, 1505, 1506, 1042,  213,  233, 1118,  179, 1041,
			  538,  201,  553,  538,  901,  553,  473, 1334, 1518, 1439,
			  967,  538, 1155,  553,  538, 1222,  553,  538,  553,  553,
			 1585,  751, 1311,  895, 1007, 1004,  234, 1077,  117,  223,
			  115, 1427, 1409,  158,  158,  233,  863,  158,  158,  158,

			  117,  212,  115,  117,  178,  115, -242, -242, 1533, 1493,
			  167, 1541, -242,  513,  167, 1313, -242,  881, 1492, 1652,
			 -242,  167, 1620, -242,  513,  167, 1346,  978, -242,  512,
			  511,  510,    0,  509,  158,  156,  162,  158,  937,    0,
			  171,  176,  180,  182,  158,    0,    0,  158,    0,  508,
			  507, -242,  191,    0,    0,  502,  501,  500,    0,    0,
			  508,  507,  506,  505,  504,  503,  502,  501,  500,    0,
			    0,    0,    0,    0,    0,    0,  214,    0,    0,    0,
			    0,  967,  225,  497,  496,  495,  494,  493,  492,  248,
			 1612,  255,    0,    0, -162, -162,  265,    0,    0,    0, yyDummy>>,
			1, 200, 1800)
		end

	yytable_template_11 (an_array: ARRAY [INTEGER])
			-- Fill chunk #11 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -162,    0,    0,    0, -162,    0, 1220, 1221, -162, -162,
			  248, -162,    0,    0,    0, 1225, -162,    0,  538,  553,
			    0,    0,  538,  553,  364,    0,    0,    0,    0,    0,
			    0,  538, -236, -236, 1644,    0,    0,  967, -236, -162,
			    0,    0, -236,    0,  553,    0, -236,  538,  553, -236,
			    0,  538,  553,    0, -236,  397,  400, 1658,    0,    0,
			  407,  410,  412,  413,  248,    0,    0,  158,    0,    0,
			  158,    0,    0,    0, 1674, -233, 1676, -236,  158, -233,
			 1678,  158,    0, -233,    0,    0, -233,    0,    0,    0,
			    0, -233,    0, 1690,    0,    0,    0, 1694,    0, 1696,

			    0,    0,    0, -159, -159, 1305, 1306, 1307, 1701, -159,
			 1703, 1704, 1705, -159, -233,    0,    0, -159,    0,    0,
			 -159,    0,    0, 1713, 1714, -159, 1716,    0,    0,    0,
			    0,    0,    0,    0,    0, 1721,    0, 1723, 1724,    0,
			    0, -231,    0, 1726, 1727, -231, 1729,    0, -159, -231,
			    0, 1731, -231,    0,    0,    0, 1733, -231, 1734,    0,
			    0, 1074,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  364,  364,  530,  533,    0,
			 -231,  541,  544,  546,  547,    0,    0,    0,    0,  538,
			    0,  553,  538,    0,  553,    0,  538,    0,  553,  538, yyDummy>>,
			1, 200, 2000)
		end

	yytable_template_12 (an_array: ARRAY [INTEGER])
			-- Fill chunk #12 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,  553,  538,  553,  553,    0,    0,    0,    0, -586,
			 -586, -586, -586,    0,    0,    0,    0,    0,  579,    0,
			    0,  583, -586,    0,    0,    0, -586,    0,  590,    0,
			    0,  594,    0,    0, -586,  158,  158, -586,  158,  158,
			  158, -586, -586, 1403, 1404,    0,    0,    0,    0,    0,
			 1410, 1411,    0,  967,    0,   -9,    0,    0,    0,   -9,
			    0,    0,   -9, 1417, 1418,   -9,    0,    0,   -9,    0,
			 1167,    0,    0,    0,    0,    0,   -9,    0,    0,   -9,
			   -9, 1214, -157, -157,   -9,    0,    0,  622, -157,    0,
			    0,    0, -157,    0,   -9,   -9, -157,   -9,    0, -157,

			   -9,    0,    0,    0, -157,    0,    0,    0,    0,    0,
			    0,    0,  538,  553,    0,    0,  538,  553,    0,    0,
			  538,  553,    0,    0,  538,  553,    0, -157,    0,  967,
			    0,    0,    0, 1494,    0,    0,  157,  163,    0,    0,
			  967,  172,  177,  181,    0,  -12,    0,    0,    0,  -12,
			    0,  687,  -12,    0,  691,  -12,  364,    0,  -12,    0,
			  712,    0,  716,    0,    0,  720,  -12,    0, 1285,  -12,
			  -12,    0,  639,    0,  -12,  712,    0,  215,    0, 1291,
			    0,    0,    0,  226,  -12,  -12,    0,  -12,    0,    0,
			  -12,  753,  256,  638,    0,    0,  158,  266,    0,  158, yyDummy>>,
			1, 200, 2200)
		end

	yytable_template_13 (an_array: ARRAY [INTEGER])
			-- Fill chunk #13 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,  158,    0,    0,  158,  248,  248,  248,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0, 1330, 1552, 1332,    0,    0,    0,    0,    0,
			    0,    0,    0,  248,  248,  248,    0,    0,  513,    0,
			    0,    0,    0,  512,  511,  510,    0,  509,    0,    0,
			    0,    0,    0,    0,    0,    0,  157,  163,    0,    0,
			    0,  172,  177,  181,    0,    0,    0,    0,  513,    0,
			 1584,    0,    0,  512,  508,  507,  506,  505,  504,  503,
			  502,  501,  500,    0,    0,    0,    0,    0,    0,    0,
			    0, -639, 1357, -639,    0,    0,    0,  497,  496,  495,

			  494,  493,  492,    0,  508,  507,  506,  505,  504,  503,
			  502,  501,  500,    0,    0,    0,  364,    0,    0,  859,
			  862,    0,  866,  869,  871,  872,  712,  497,  496,  495,
			  494,  493,  492,    0,    0,    0,    0, 1413,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  513,    0,    0,    0,    0,  512,  511,  510,    0,  509,
			    0,    0,    0,    0,    0,    0,    0, 1443,    0,    0,
			    0,    0,   74,    0,    0,    0,  753,  753,  157,  163,
			    0,    0,  172,  177,  181,    0,  508,  507,  506,  505,
			  504,  503,  502,  501,  500,    0,    0,    0,    0,    0, yyDummy>>,
			1, 200, 2400)
		end

	yytable_template_14 (an_array: ARRAY [INTEGER])
			-- Fill chunk #14 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  497,
			  496,  495,  494,  493,  492,    0,    0,    0,    0,  215,
			    0,    0,  226, 1499,    0,    0,  167,    0,    0,  256,
			   73,   72,  266,   71,    0,    0,   34,   33,   32,   70,
			    0,    0, 1514,    0,    0,   69,   68,   67,   66,   65,
			   64,   63,   62,   61,   60,   59,   58,   57,   56,   55,
			   54,   53,   52,   51,   50,   49,   48,   47,   46,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  981,   45,   44,  985,   43,    0,    0,  989,    0,    0,
			  993,    0,    0,    0,   42,   41,    0,  167,  513,    0,

			    0,  167,  364,  512,  511,  510,    0,  167,    0,    0,
			  167,    0,    0,  167,    0,    0,    0,    0,    0,    0,
			 1560,    0,    0,    0,    0,    0, 1567,    0,    0,    0,
			    0,    0,    0,    0,  508,  507,  506,  505,  504,  503,
			  502,  501,  500,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  215,    0,    0,  226,    0,  497,  496,  495,
			  494,  493,  492,  256, 1598,    0,  266,    0,    0,    0,
			    0,    0, 1611,    0, 1613,    0,    0,    0,    0,  167,
			    0,    0,    0,  167,    0,    0,    0,    0,  167,    0,
			    0,    0,  167,    0,    0,    0,    0,    0,    0,    0, yyDummy>>,
			1, 200, 2600)
		end

	yytable_template_15 (an_array: ARRAY [INTEGER])
			-- Fill chunk #15 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0, 1627,    0,    0,    0,    0,    0,
			    0, 1635, 1636,    0, 1640,    0,    0,    0, 1645,    0,
			    0,  712,    0, 1649,    0,    0,    0,  712,    0,    0,
			  158,  158,    0,  158,  158,  158,    0,    0,    0, 1657,
			    0, 1659,    0,    0,    0,    0, 1663,    0,    0,    0,
			    0,    0, 1670,    0,    0, 1672,    0,    0,    0,    0,
			    0,    0,    0,    0, 1679,    0,    0,    0,    0, 1683,
			    0,    0,    0,    0,    0, 1689,    0, 1691,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, 1699,
			    0,    0,    0,    0,    0,    0, 1706,    0,    0,    0,

			    0, 1710,    0,    0,  158,    0,    0,    0,  158,    0,
			    0,    0,    0,    0,  158,    0, 1719,  158,    0,    0,
			  157,  163,    0,  172,  177,  181,    0,    0,    0,    0,
			 -677, -677, -677, -677, -677,    0, -677, -677, -677, -677,
			 -677, -677,    0, -677, -677, -677,    0, -677, -677,    0,
			 -677, -677, -677,    0, -677, -677, -677,    0, -677, -677,
			    0,    0,    0, -677,    0, -677, -677, -677,    0,    0,
			 -677, -677, -677,    0,    0,    0, -677,    0, -677,    0,
			    0, -677, -677, -677, -677,    0,    0, -677, -677,    0,
			    0,    0, -677, -677, 1299, -677, -677, -677, -677, -677, yyDummy>>,
			1, 200, 2800)
		end

	yytable_template_16 (an_array: ARRAY [INTEGER])
			-- Fill chunk #16 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -677, -677, -677, -677, -677, -677, -677, -677, -677, -677,
			 -677, -677, -677, -677, -677, -677, -677, -677, -677, -677,
			 -677, -677, -677, -677, -677, -677, -677, -677, -677, -677,
			 -677, -677, -677, -677, -677, -677, -677, -677, -677, -677,
			 -677, -677, -677, -677, -677, -677, -677,    0, -677, -677,
			    0, -677, -677, -677,    0, -677, -677, -677, -677, -677,
			 -677, -677, -677, -677,    0,    0,    0,  513,    0,    0,
			    0,    0,  512,  511,  510,    0,  509,    0,    0,    0,
			    0,  215,    0,    0,  226,    0,    0,    0,  256,    0,
			    0,  266,    0,    0,    0,    0,    0,    0,    0,    0,

			    0,    0,    0,  508,  507,  506,  505,  504,  503,  502,
			  501,  500,    0,    0, 1367, 1372,    0, 1377, 1380, 1382,
			 1383,    0,    0,    0,    0, 1387,  497,  496,  495,  494,
			  493,  492, 1085,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0, -678, -678, -678, -678, -678,    0,
			 -678, -678, -678, -678, -678, -678,    0, -678, -678, -678,
			    0, -678, -678,    0, -678, -678, -678,    0, -678, -678,
			 -678,    0, -678, -678,    0,    0,    0, -678, 1448, -678,
			 -678, -678, 1452,    0, -678, -678, -678,    0, 1457,    0, yyDummy>>,
			1, 200, 3000)
		end

	yytable_template_17 (an_array: ARRAY [INTEGER])
			-- Fill chunk #17 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -678, 1461, -678,    0,    0, -678, -678, -678, -678,    0,
			    0, -678, -678,    0,    0,    0, -678, -678,    0, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -678, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -678, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -678, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -678, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -678, -678,
			 -678,    0, -678, -678,    0, -678, -678, -678,    0, -678,
			 -678, -678, -678, -678, -678, -678, -678, -678, -676, -676,
			 -676, -676, -676,    0, -676, -676, -676, -676, -676, -676,

			    0, -676, -676, -676,    0, -676, -676,    0, -676, -676,
			 -676,    0, -676, -676, -676,    0, -676, -676,    0,    0,
			    0, -676,    0, -676, -676, -676,    0,    0, -676, -676,
			 -676,    0,    0,    0, -676,    0, -676,    0,    0, -676,
			 -676, -676, -676,    0,    0, -676, -676,    0,    0,    0,
			 -676, -676,    0, -676, -676, -676, -676, -676, -676, -676,
			 -676, -676, -676, -676, -676, -676, -676, -676, -676, -676,
			 -676, -676, -676, -676, -676, -676, -676, -676, -676, -676,
			 -676, -676, -676, -676, -676, -676, -676, -676, -676, -676,
			 -676, -676, -676, -676, -676, -676, -676, -676, -676, -676, yyDummy>>,
			1, 200, 3200)
		end

	yytable_template_18 (an_array: ARRAY [INTEGER])
			-- Fill chunk #18 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -676, -676, -676, -676, -676,  959, -676, -676, 1549, -676,
			 -676, -676,    0, -676, -676, -676, -676, -676, -676, -676,
			 -676, -676,    0,   69,   68,   67,   66,   65,   64,   63,
			   62,   61,   60,   59,   58,   57,   56,   55,   54,   53,
			   52,   51,   50,   49,   48,   47,    0,    0,    0,    0,
			  513,    0,    0,    0,    0,  512,  511,  510,    0,  509,
			   44,    0,  483,    0,  513,    0,    0,    0,    0,  512,
			  511,  510,    0,  509,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  508,  507,  506,  505,
			  504,  503,  502,  501,  500,    0,    0,    0,    0,    0,

			  508,  507,  506,  505,  504,  503,  502,  501,  500,  497,
			  496,  495,  494,  493,  492,  157,  163,    0,  172,  177,
			  181,    0,    0,  497,  496,  495,  494,  493,  492,    0,
			   69,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,    0,    0, -332, -332, -332, -332, -332,
			    0, -332, -332, -332, -332, -332, -332,   44, -332, -332,
			 -332,    0, -332, -332,    0, -332, -332, -332,    0, -332,
			 -332, -332,    0, -332, -332,    0,    0,    0, -332,  215,
			 -332, -332, -332,  226,    0, -332, -332, -332,    0,  256, yyDummy>>,
			1, 200, 3400)
		end

	yytable_template_19 (an_array: ARRAY [INTEGER])
			-- Fill chunk #19 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0, -332,  266, -332,    0,    0, -332, -332, -332, -332,
			    0,    0, -332, -332,    0,    0,    0, -332, -332,    0,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -332,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -332,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -332,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -332,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -332,
			 -332, -332,    0, -332, -332,    0, -332, -332, -332,    0,
			 -332, -332, -332, -332, -332, -332, -332, -332, -332, -671,
			    0, -671,    0, -671,    0, -671, -671, -671, -671,    0,

			    0, -671, -671,    0, -671,    0,    0, -671, -671,    0,
			    0,    0, -671,    0,    0,    0, -671,    0,    0,    0,
			 -671,    0, -671, -671,    0,    0,    0, -671, -671,    0,
			    0,    0,    0,    0,    0,    0,    0,    0, -671,    0,
			 -671, -671,    0,    0, -671,    0, -680,    0,    0, -671,
			 -671,    0, -671, -671,    0, -671, -671, -671,    0,    0,
			    0,    0,    0,    0, -671, -671, -671, -671, -671, -671,
			 -671, -671, -671, -671, -671, -671, -671, -671, -671, -671,
			 -671, -671, -671, -671, -671, -671, -671,    0, -671, -671,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, -671, yyDummy>>,
			1, 200, 3600)
		end

	yytable_template_20 (an_array: ARRAY [INTEGER])
			-- Fill chunk #20 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -671, -671,    0, -671,    0, -671,    0,    0,    0, -670,
			 -671, -670, -671, -670,    0, -670, -670, -670, -670, -671,
			 -677, -670, -670,    0, -670,    0,    0, -670, -670,    0,
			    0,    0, -670,    0,    0,    0, -670,    0,    0,    0,
			 -670,    0, -670, -670,    0,    0,    0, -670, -670,    0,
			    0,    0,    0,    0,    0,    0,    0,    0, -670,    0,
			 -670, -670,    0,    0, -670,    0, -679,    0,    0, -670,
			 -670,    0, -670, -670,    0, -670, -670, -670,    0,    0,
			    0,    0,    0,    0, -670, -670, -670, -670, -670, -670,
			 -670, -670, -670, -670, -670, -670, -670, -670, -670, -670,

			 -670, -670, -670, -670, -670, -670, -670,    0, -670, -670,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, -670,
			 -670, -670,    0, -670,    0, -670,    0,    0,    0, -695,
			 -670, -695, -670, -695,    0, -695, -695, -695, -695, -670,
			 -678, -695, -695,    0, -695,    0,    0, -695, -695,    0,
			    0,    0, -695,    0,    0,    0, -695,    0,    0,    0,
			 -695,    0, -695, -695,    0,    0,    0, -695, -695,    0,
			    0,    0,    0,    0,    0,    0,    0,    0, -695,    0,
			 -695, -695,    0,    0, -695,    0,    0,    0,    0, -695,
			 -695,    0, -695, -695,    0, -695, -695, -695,    0,    0, yyDummy>>,
			1, 200, 3800)
		end

	yytable_template_21 (an_array: ARRAY [INTEGER])
			-- Fill chunk #21 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0, -695, -695, -695, -695, -695, -695,
			 -695, -695, -695, -695, -695, -695, -695, -695, -695, -695,
			 -695, -695, -695, -695, -695, -695, -695,    0, -695, -695,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, -695,
			 -695, -695,    0, -695,    0,  464,    0,    0,    0,    0,
			 -695, -695, -695,    0,    0,    0,    0,    0,    0, -695,
			 -695, -669,    0, -669,    0, -669,    0, -669, -669, -669,
			 -669,    0,    0, -669, -669,    0, -669,    0,    0, -669,
			 -669,    0,    0,    0, -669,    0,    0,    0, -669,    0,
			    0,    0, -669,    0, -669, -669,    0,    0,    0, -669,

			 -669,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -669,    0, -669, -669,    0,    0, -669,    0,    0,    0,
			    0, -669, -669,    0, -669, -669,    0, -669, -669, -669,
			    0,    0,    0,    0,    0,    0, -669, -669, -669, -669,
			 -669, -669, -669, -669, -669, -669, -669, -669, -669, -669,
			 -669, -669, -669, -669, -669, -669, -669, -669, -669,    0,
			 -669, -669,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -669, -669, -669,    0, -669,    0, -669,    0,    0,
			    0, -674, -669, -674, -669, -674,    0, -674, -674, -674,
			 -674, -669, -676, -674, -674,    0, -674,    0,    0, -674, yyDummy>>,
			1, 200, 4000)
		end

	yytable_template_22 (an_array: ARRAY [INTEGER])
			-- Fill chunk #22 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -674,    0,    0,    0, -674,    0,    0,    0, -674,    0,
			    0,    0, -674,    0, -674, -674,    0,    0,    0, -674,
			 -674,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -674,    0, -674, -674,    0,    0, -674,    0,    0,    0,
			    0, -674, -674,    0, -674, -674,    0, -674, -674, -674,
			    0,    0,    0,    0,    0,    0, -674, -674, -674, -674,
			 -674, -674, -674, -674, -674, -674, -674, -674, -674, -674,
			 -674, -674, -674, -674, -674, -674, -674, -674, -674,    0,
			 -674, -674,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -674, -674, -674,    0, -674,    0, -674,    0,    0,

			    0, -675, -674, -675, -674, -675,    0, -675, -675, -675,
			 -675, -674,    0, -675, -675,    0, -675,    0,    0, -675,
			 -675,    0,    0,    0, -675,    0,    0,    0, -675,    0,
			    0,    0, -675,    0, -675, -675,    0,    0,    0, -675,
			 -675,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -675,    0, -675, -675,    0,    0, -675,    0,    0,    0,
			    0, -675, -675,    0, -675, -675,    0, -675, -675, -675,
			    0,    0,    0,    0,    0,    0, -675, -675, -675, -675,
			 -675, -675, -675, -675, -675, -675, -675, -675, -675, -675,
			 -675, -675, -675, -675, -675, -675, -675, -675, -675,    0, yyDummy>>,
			1, 200, 4200)
		end

	yytable_template_23 (an_array: ARRAY [INTEGER])
			-- Fill chunk #23 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -675, -675,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -675, -675, -675,    0, -675,    0, -675,    0,    0,
			    0, -673, -675, -673, -675, -673,    0, -673, -673, -673,
			 -673, -675,    0, -673, -673,    0, -673,    0,    0, -673,
			 -673,    0,    0,    0, -673,    0,    0,    0, -673,    0,
			    0,    0, -673,    0, -673, -673,    0,    0,    0, -673,
			 -673,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -673,    0, -673, -673,    0,    0, -673,    0,    0,    0,
			    0, -673, -673,    0, -673, -673,    0, -673, -673, -673,
			    0,    0,    0,    0,    0,    0, -673, -673, -673, -673,

			 -673, -673, -673, -673, -673, -673, -673, -673, -673, -673,
			 -673, -673, -673, -673, -673, -673, -673, -673, -673,    0,
			 -673, -673,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -673, -673, -673,    0, -673,    0, -673,    0,    0,
			    0, -672, -673, -672, -673, -672,    0, -672, -672, -672,
			 -672, -673,    0, -672, -672,    0, -672,    0,    0, -672,
			 -672,    0,    0,    0, -672,    0,    0,    0, -672,    0,
			    0,    0, -672,    0, -672, -672,    0,    0,    0, -672,
			 -672,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -672,    0, -672, -672,    0,    0, -672,    0,    0,    0, yyDummy>>,
			1, 200, 4400)
		end

	yytable_template_24 (an_array: ARRAY [INTEGER])
			-- Fill chunk #24 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0, -672, -672,    0, -672, -672,    0, -672, -672, -672,
			    0,    0,    0,    0,    0,    0, -672, -672, -672, -672,
			 -672, -672, -672, -672, -672, -672, -672, -672, -672, -672,
			 -672, -672, -672, -672, -672, -672, -672, -672, -672,    0,
			 -672, -672,    0,    0,    0,    0,    0,  966,   74,    0,
			    0, -672, -672, -672, 1491, -672,    0, -672,  313,    0,
			    0,  312, -672,    0, -672,    0,    0,    0,    0,    0,
			    0, -672,    0,  311,    0,    0,    0,    0,    0,  310,
			    0, 1398,    0,    0,    0,    0,    0,    0,    0,    0,
			  309,    0,    0,    0,    0,  308,    0,  307,  306,    0,

			    0,  305,    0,    0,    0,    0,   73,   72,    0,   71,
			  304,  303,   34,   33,   32,  302,    0,    0,    0,  301,
			    0,   69,   68,   67,   66,   65,   64,   63,   62,   61,
			   60,   59,   58,   57,   56,   55,   54,   53,   52,   51,
			   50,   49,   48,   47,  300,  299,    0,    0,    0,    0,
			    0,    0,    0,    0,  827,   74,  298,   45,   44,  297,
			  296, 1399,  295,    0,    0,  313,    0,  294,  312,    0,
			  293,  292,    0,    0,    0,    0,    0,  132,    0,    0,
			  311,    0,    0,    0,    0,    0,  310,    0, 1398,    0,
			    0,    0,    0,    0,    0,    0,    0,  309,    0,    0, yyDummy>>,
			1, 200, 4600)
		end

	yytable_template_25 (an_array: ARRAY [INTEGER])
			-- Fill chunk #25 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,  308,    0,  307,  306,    0,    0,  305,    0,
			    0,    0,    0,   73,   72,    0,   71,  304,  303,   34,
			   33,   32,  302,    0,    0,    0,  301,    0,   69,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,  300,  299,    0,    0,    0,    0,    0,   74,    0,
			    0,    0,    0,  298,   45,   44,  297,  296,  313,  295,
			    0,  312,    0,    0,  294,    0,    0,  293,  292,    0,
			    0,    0,    0,  311,  132,    0,    0,    0,    0,  310,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,

			  309,    0,    0,    0,    0,  308,    0,  307,  306,    0,
			    0,  305,    0,    0,    0,    0,   73,   72,    0,   71,
			  304,  303,   34,   33,   32,  302,    0,    0,    0,  301,
			    0,   69,   68,   67,   66,   65,   64,   63,   62,   61,
			   60,   59,   58,   57,   56,   55,   54,   53,   52,   51,
			   50,   49,   48,   47,  300,  299,    0,    0,    0,    0,
			  966,   74,    0,    0,    0,    0,  298,   45,   44,  297,
			  845,  313,  295,  977,  312,    0,    0,  294,    0,    0,
			  293,  292,    0,    0,    0,    0,  311,  132,  844,    0,
			    0,    0,  310,    0,    0,    0,    0,    0,    0,    0, yyDummy>>,
			1, 200, 4800)
		end

	yytable_template_26 (an_array: ARRAY [INTEGER])
			-- Fill chunk #26 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,  309,    0,    0,    0,    0,  308,    0,
			  307,  306,    0,    0,  305,    0,    0,    0,    0,   73,
			   72,    0,   71,  304,  303,   34,   33,   32,  302,    0,
			    0,    0,  301,    0,   69,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,  300,  299,    0,
			    0,    0,    0,  827,   74,    0,    0,    0,    0,  298,
			   45,   44,  297,  296,  313,  295,    0,  312,    0,    0,
			  294,    0,    0,  293,  292,    0,    0,    0,    0,  311,
			  132,    0,    0,    0,    0,  310,    0,    0,    0,    0,

			    0,    0,    0,    0,    0,    0,  309,    0,    0,    0,
			    0,  308,    0,  307,  306,    0,    0,  305,    0,    0,
			    0,    0,   73,   72,    0,   71,  304,  303,   34,   33,
			   32,  302,    0,    0,    0,  301,    0,   69,   68,   67,
			   66,   65,   64,   63,   62,   61,   60,   59,   58,   57,
			   56,   55,   54,   53,   52,   51,   50,   49,   48,   47,
			  300,  299,    0,    0,    0,    0,    0,   74,    0,    0,
			    0,    0,  298,   45,   44,  297,  296,  313,  295,    0,
			  312,    0,    0,  294,    0,    0,  293,  292,    0,    0,
			    0,    0,  311,  132,    0,    0,    0,    0,  310,    0, yyDummy>>,
			1, 200, 5000)
		end

	yytable_template_27 (an_array: ARRAY [INTEGER])
			-- Fill chunk #27 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  309,
			    0,    0,    0,    0,  308,    0,  307,  306,    0,    0,
			  305,    0,    0,    0,    0,   73,   72,    0,   71,  304,
			  303,   34,   33,   32,  302,    0,    0,    0,  301,    0,
			   69,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,  300,  299,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  298,   45,   44,  297,  845,
			 1184,  295, 1183,    0, 1182,    0,  294,    0,    0,  293,
			  292,    0, 1181, 1180,    0, 1179,  132,  844, 1178,    0,

			    0,    0,    0,    0,    0,    0,    0,  311,    0,    0,
			    0,    0,    0,  310,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, 1177,
			    0,  307, 1176,    0,    0,  305,    0,    0,    0,    0,
			   73,   72,    0,   71,  304,    0,   34,   33,   32,    0,
			    0,    0,    0,    0,    0,   69,   68,   67,   66,   65,
			   64,   63,   62,   61,   60,   59,   58,   57,   56,   55,
			   54,   53,   52,   51,   50,   49,   48,   47,    0, 1175,
			 1174,    0,    0,    0,    0,    0,    0,   74,    0,    0,
			  298,   45,   44,    0, 1173,    0,  295,  313,    0,    0, yyDummy>>,
			1, 200, 5200)
		end

	yytable_template_28 (an_array: ARRAY [INTEGER])
			-- Fill chunk #28 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  312,  294,    0, 1172,    0,    0,    0,    0,    0,    0,
			 1171,    0,  311,    0,    0,    0,    0,    0,  310,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  309,
			    0,    0,    0,    0,  308,    0,  307,  306,    0,    0,
			  305,    0,    0,    0,    0,   73,   72,    0,   71,  304,
			  303,   34,   33,   32,  302,    0,    0,    0,  301,    0,
			   69,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,  300,  299,    0,    0,    0,    0,    0,
			   74,    0,    0,    0,    0,  298,   45,   44,  297,  296,

			  313,  295,    0,  312,    0,  972,  294,    0,    0,  293,
			  292,    0,    0,    0,    0,  311,  132,    0,    0,    0,
			    0,  310,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  309,    0,    0,    0,    0,  308,    0,  307,
			  306,    0,    0,  305,    0,    0,    0,    0,   73,   72,
			    0,   71,  304,  303,   34,   33,   32,  302,    0,    0,
			    0,  301,    0,   69,   68,   67,   66,   65,   64,   63,
			   62,   61,   60,   59,   58,   57,   56,   55,   54,   53,
			   52,   51,   50,   49,   48,   47,  300,  299,    0,    0,
			    0,    0,    0,   74,    0,    0,    0,    0,  298,   45, yyDummy>>,
			1, 200, 5400)
		end

	yytable_template_29 (an_array: ARRAY [INTEGER])
			-- Fill chunk #29 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   44,  297,  953,  313,  295,    0,  312,    0,    0,  294,
			  788,    0,  293,  292,    0,    0,    0,    0,  311,  132,
			    0,    0,    0,    0,  310,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  309,    0,    0,    0,    0,
			  308,    0,  307,  306,    0,    0,  305,    0,    0,    0,
			    0,   73,   72,    0,   71,  304,  303,   34,   33,   32,
			  302,    0,    0,    0,  301,    0,   69,   68,   67,   66,
			   65,   64,   63,   62,   61,   60,   59,   58,   57,   56,
			   55,   54,   53,   52,   51,   50,   49,   48,   47,  300,
			  299,    0,    0,    0,    0,    0,   74,    0,    0,    0,

			    0,  298,   45,   44,  297,  296,  313,  295,  936,  312,
			    0,    0,  294,    0,    0,  293,  292,    0,    0,    0,
			    0,  311,  132,    0,    0,    0,    0,  310,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,  309,    0,
			    0,    0,    0,  308,    0,  307,  306,    0,    0,  305,
			  791,    0,    0,    0,   73,   72,    0,   71,  304,  303,
			   34,   33,   32,  302,    0,    0,    0,  301,    0,   69,
			   68,   67,   66,   65,   64,   63,   62,   61,   60,   59,
			   58,   57,   56,   55,   54,   53,   52,   51,   50,   49,
			   48,   47,  300,  299,    0,    0,    0,    0,    0,   74, yyDummy>>,
			1, 200, 5600)
		end

	yytable_template_30 (an_array: ARRAY [INTEGER])
			-- Fill chunk #30 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0,  298,   45,   44,  297,  296,  313,
			  295,    0,  312,    0,    0,  294,    0,    0,  293,  292,
			    0,    0,    0,    0,  311,  132,    0,    0,    0,    0,
			  310,    0,  671,    0,    0,    0,    0,    0,    0,    0,
			    0,  309,    0,    0,    0,    0,  308,    0,  307,  306,
			    0,    0,  305,    0,    0,    0,    0,   73,   72,    0,
			   71,  304,  303,   34,   33,   32,  302,    0,    0,    0,
			  301,    0,   69,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,  300,  299,    0,    0,    0,

			    0,    0,   74,    0,    0,    0,  669,  298,   45,   44,
			  297,  296,  313,  295,    0,  312,    0,    0,  294,    0,
			    0,  293,  292,    0,    0,    0,    0,  311,  132,    0,
			    0,    0,    0,  310,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  309,    0,    0,    0,    0,  308,
			    0,  307,  306,    0,    0,  305,    0,    0,    0,    0,
			   73,   72,    0,   71,  304,  303,   34,   33,   32,  302,
			    0,    0,    0,  301,    0,   69,   68,   67,   66,   65,
			   64,   63,   62,   61,   60,   59,   58,   57,   56,   55,
			   54,   53,   52,   51,   50,   49,   48,   47,  300,  299, yyDummy>>,
			1, 200, 5800)
		end

	yytable_template_31 (an_array: ARRAY [INTEGER])
			-- Fill chunk #31 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0,    0,   74,    0,    0,    0,    0,
			  298,   45,   44,  297,  296,  313,  295,    0,  312,    0,
			    0,  294,    0,    0,  293,  292,    0,    0,    0,    0,
			  311,  132,    0,    0,    0,    0,  310,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,  309,    0,    0,
			    0,    0,  308,    0,  307,  306,    0,    0,  305,    0,
			    0,    0,    0,   73,   72,    0,   71,  304,  303,   34,
			   33,   32,  302,    0,    0,    0,  301,    0,   69,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,

			   47,  300,  299,    0,    0,    0,    0,    0,   74,    0,
			    0,    0,    0,  298,   45,   44,  297,  296,  313,  295,
			    0,  312,    0,  518,  294,    0,    0,  293,  292,    0,
			    0,    0,    0,  311,  132,    0,    0,    0,    0,  310,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  309,    0,    0,    0,    0,  308,    0,  307,  306,    0,
			    0,  305,    0,    0,    0,    0,   73,   72,    0,   71,
			  304,  303,   34,   33,   32,  302,    0,    0,    0,  301,
			    0,   69,   68,   67,   66,   65,   64,   63,   62,   61,
			   60,   59,   58,   57,   56,   55,   54,   53,   52,   51, yyDummy>>,
			1, 200, 6000)
		end

	yytable_template_32 (an_array: ARRAY [INTEGER])
			-- Fill chunk #32 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   50,   49,   48,   47,  300,  299,    0,    0,    0,    0,
			    0,   74,    0,    0,    0,    0,  298,   45,   44,  297,
			  296,  313,  295,    0,  312,    0,    0,  294,    0,    0,
			  293,  292,    0,    0,    0,    0,  311,  132,    0,    0,
			    0,    0,  310,    0,    0,    0,    0,    0,    0,    0,
			    0,    0, 1219,  309,    0,    0,    0,    0,  308,    0,
			  307,  306,    0,    0,  305,    0,    0,    0,    0,   73,
			   72,    0,   71,  304,  303,   34,   33,   32,  302,    0,
			    0,    0,  301,    0,   69,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,

			   53,   52,   51,   50,   49,   48,   47,  300,  299,  513,
			    0,    0,    0,    0,  512,  511,  510,    0,  509,  298,
			   45,   44,  297,  480,    0,  295,    0,    0,    0,    0,
			  294,    0,    0,  293,  292,    3,    0,    0,    0,    0,
			  132,    0,    0,    2,    0,  508,  507,  506,  505,  504,
			  503,  502,  501,  500,    0,    0, 1426,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,  497,  496,
			  495,  494,  493,  492,    0,    0,    0,    0,    0,   73,
			   72,    0,   71,    0,    0,    0,    0,    0,   70, 1392,
			    0,    0,    0,    0,   69,   68,   67,   66,   65,   64, yyDummy>>,
			1, 200, 6200)
		end

	yytable_template_33 (an_array: ARRAY [INTEGER])
			-- Fill chunk #33 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,   46,    0,  513,
			    0,    0,    0,    0,  512,  511,  510,    0,  509,    0,
			   45,   44,    0,   43, 1335,    0,    0,    0,    0,    0,
			    0,    0,    0,   42,   41,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  508,  507,  506,  505,  504,
			  503,  502,  501,  500,  513,    0,    0,    0,    0,  512,
			  511,  510,    0,  509,    0,    0,    0,    0,  497,  496,
			  495,  494,  493,  492,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  645,

			  508,  507,  506,  505,  504,  503,  502,  501,  500,    0,
			    0,    0,    0, 1087,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,  497,  496,  495,  494,  493,  492,  513,
			    0,    0,    0,    0,  512,  511,  510,    0,  509,  513,
			    0,    0,    0,    0,  512,  511,  510,    0,  509,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  508,  507,  506,  505,  504,
			  503,  502,  501,  500,    0,  508,  507,  506,  505,  504,
			  503,  502,  501,  500, 1419,    0,    0,    0,  497,  496,
			  495,  494,  493,  492,    0,    0,    0,    0,  497,  496, yyDummy>>,
			1, 200, 6400)
		end

	yytable_template_34 (an_array: ARRAY [INTEGER])
			-- Fill chunk #34 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  495,  494,  493,  492,    0,    0,    0,   73,   72,    0,
			   71,    0,    0,    0,    0,    0,   70,    0,    0,    0,
			    0,    0,   69,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,   46,    0,    0,    0,    0,
			    0,    0,    0,    0,  305,    0,    0,    0,   45,   44,
			    0,   43,   71,    0,    0,    0,    0,    0,   70,    0,
			    0,   42,   41,    0,   69,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,   46,  790,    0,

			    0,    0,    0,    0,    0,    0,    0,  513,    0,    0,
			   45,   44,  512,  511,  510,    0,  509,    0,    0,    0,
			    0,  788,    0,   42,   41,    0,    0,    0,    0,    0,
			    0, 1229,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,  508,  507,  506,  505,  504,  503,  502,
			  501,  500,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,  499,    0,    0,  305,    0,  497,  496,  495,  494,
			  493,  492,   71,    0,    0,    0,    0,    0,   70,    0,
			    0,    0,    0,    0,   69,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54, yyDummy>>,
			1, 200, 6600)
		end

	yytable_template_35 (an_array: ARRAY [INTEGER])
			-- Fill chunk #35 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   53,   52,   51,   50,   49,   48,   47,   46,    0,    0,
			    0,    0,    0,    0,    0,  305,    0,    0,    0,    0,
			   45,   44,    0,   71,    0,    0,    0,    0,    0,    0,
			    0,  788,    0,   42,   41,   69,   68,   67,   66,   65,
			   64,   63,   62,   61,   60,   59,   58,   57,   56,   55,
			   54,   53,   52,   51,   50,   49,   48,   47,  513,    0,
			    0,    0,    0,  512,  511,  510,    0,  509,    0,    0,
			  513,   45,   44,    0,    0,  512,  511,  510,    0,  509,
			    0,    0, 1467,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  508,  507,  506,  505,  504,  503,

			  502,  501,  500,    0,    0,    0,  508,  507,  506,  505,
			  504,  503,  502,  501,  500,    0,    0,  497,  496,  495,
			  494,  493,  492,  964,  499,  971,    0,    0,    0,  497,
			  496,  495,  494,  493,  492,  513,    0,    0,    0,    0,
			  512,  511,  510,    0,  509,    0, 1142, 1141, 1140, 1139,
			 1138, 1137, 1136, 1135, 1134, 1133, 1132, 1131, 1130, 1129,
			 1128, 1127, 1126, 1125, 1124, 1123, 1122, 1121, 1120,    0,
			    0,  508,  507,  506,  505,  504,  503,  502,  501,  500,
			    0,    0,    0,    0,    0,    0,  513,  935,    0,  499,
			    0,    0,    0,    0,  497,  496,  495,  494,  493,  492, yyDummy>>,
			1, 200, 6800)
		end

	yytable_template_36 (an_array: ARRAY [INTEGER])
			-- Fill chunk #36 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  513,    0,    0,    0,    0,  512,  511,  510,    0,  509,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  508,  507,  506,  505,  504,  503,  502,  501,
			  500,    0,    0,    0,    0,    0,  508,  507,  506,  505,
			  504,  503,  502,  501,  500,  497,  496,  495,  494,  493,
			  492,    0,    0,    0,  499,  498,    0,    0,    0,  497,
			  496,  495,  494,  493,  492,  513,    0,    0,    0,    0,
			  512,  511,  510,    0,  509, 1245, 1246, 1247, 1248, 1249,
			 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259,
			 1260, 1261, 1262, 1263, 1264, 1265, 1266,    0,    0,    0,

			    0,  508,  507,  506,  505,  504,  503,  502,  501,  500,
			    0,    0,    0,  513,    0,    0,    0,  680,  512,  511,
			  510,    0,  509,    0,  497,  496,  495,  494,  493,  492,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  508,
			  507,  506,  505,  504,  503,  502,  501,  500,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  497,  496,  495,  494,  493,  492,   71,    0,
			    0,    0,    0,    0,   70,    0,    0,    0,    0,    0,
			   69,   68,   67,   66,   65,   64,   63,   62,   61,   60, yyDummy>>,
			1, 200, 7000)
		end

	yytable_template_37 (an_array: ARRAY [INTEGER])
			-- Fill chunk #37 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,   46,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,   45,   44,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,   42,
			   41, yyDummy>>,
			1, 41, 7200)
		end

	yycheck_template: SPECIAL [INTEGER]
			-- Template for `yycheck'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 7240)
			yycheck_template_1 (an_array)
			yycheck_template_2 (an_array)
			yycheck_template_3 (an_array)
			yycheck_template_4 (an_array)
			yycheck_template_5 (an_array)
			yycheck_template_6 (an_array)
			yycheck_template_7 (an_array)
			yycheck_template_8 (an_array)
			yycheck_template_9 (an_array)
			yycheck_template_10 (an_array)
			yycheck_template_11 (an_array)
			yycheck_template_12 (an_array)
			yycheck_template_13 (an_array)
			yycheck_template_14 (an_array)
			yycheck_template_15 (an_array)
			yycheck_template_16 (an_array)
			yycheck_template_17 (an_array)
			yycheck_template_18 (an_array)
			yycheck_template_19 (an_array)
			yycheck_template_20 (an_array)
			yycheck_template_21 (an_array)
			yycheck_template_22 (an_array)
			yycheck_template_23 (an_array)
			yycheck_template_24 (an_array)
			yycheck_template_25 (an_array)
			yycheck_template_26 (an_array)
			yycheck_template_27 (an_array)
			yycheck_template_28 (an_array)
			yycheck_template_29 (an_array)
			yycheck_template_30 (an_array)
			yycheck_template_31 (an_array)
			yycheck_template_32 (an_array)
			yycheck_template_33 (an_array)
			yycheck_template_34 (an_array)
			yycheck_template_35 (an_array)
			yycheck_template_36 (an_array)
			yycheck_template_37 (an_array)
			Result := yyfixed_array (an_array)
		end

	yycheck_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   21,  190,   21,    1,   21,  294,   17,  123,   21,  236,
			   21,  478,   21,    8,    9,  643,   21,  311,  307,  190,
			   21,  616,  307,  951,  194,  306,  309,  950,  970,  738,
			  167,  472, 1119,   43,  801,   30,   31,  637, 1317,  292,
			  293,  538, 1066,   38,  297,   40,  538,  202,  301, 1066,
			  303,  371,  372, 1066, 1066,  282, 1066, 1066,  566,  816,
			 1152,  553,   83, 1293,   83,  538,   83, 1149, 1145, 1145,
			   83, 1475,   83,   14,   83, 1343, 1344,  731,   83,   98,
			  553, 1311,   83,  651,   14,  106,   97,  106, 1191,  106,
			   21,   26,  103,  106, 1144,  106, 1146,  106,  902, 1343,

			 1344,  106, 1398,   36,   99,  106,  243,  244,  676,  677,
			   83,  122,  903,   36,  135,  167,  135,    0,  135,  910,
			  367,   72,  135,   74,  135, 1494,  135,    4,  139,  140,
			  135,  142,  248,  106,  135,  903,  188,  148,  149,  150,
			   11,   14,  910,   70,  155,   72,   73,   74,    0,   71,
			  161,  146,   83,   14, 1241, 1385,  167,   63,   64,  170,
			 1535,   32,  135,  121,  175,  136,  336,  125,  179,  190,
			   14,  190,   45,  183,  941,  106, 1472,   38,  189,   56,
			 1584,   52,  192, 1552,  125,  136,  402, 1279,  404,  124,
			  242,  124,  114,  120,  822, 1272, 1272, 1001,  353,  354, yyDummy>>,
			1, 200, 0)
		end

	yycheck_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			 1282,  124,  213, 1578,  135,   14,  216,  137,  705,  706,
			  221, 1314,  704,  224, 1063,   14,  128,  227, 1268,   75,
			  231,   11,  128, 1014, 1073,  137, 1017,  443,  444,  445,
			 1158,  704,  243,  244, 1157,   14,   45,  745,  892,  747,
			   17,  749,   32,  254, 1619, 1012, 1014,  257,  104, 1017,
			  261,   28,  294,  264, 1182,   34,  153,  267, 1345,   38,
			  271,   75,  159,  273, 1356,  307,  277, 1535,  836,  558,
			   14,  168, 1551,   72,   73,   74,  173,  524,  525,  526,
			  527,  178,  121,  294, 1212,  296,  296,  126, 1211,    4,
			  104, 1535,  311,  463,   14, 1052,  307, 1321,  137,   14,

			   11,   37,  311,   70, 1321,   72,   73,   74, 1321, 1321,
			 1578, 1321, 1321, 1022, 1071,  212, 1546,   27,  121,   34,
			 1111,   32,  125,   38,   17,   22,  223,   42,   72,   73,
			   74, 1180,  799,   30, 1578,   28,  625,  126,  105,   49,
			  940, 1428,   14, 1111, 1431,   27,   14,  814,  137,  949,
			   20, 1619,   69,  120,  643,  122,  253,  798,   75, 1208,
			  121,   11,   72,   73,   74,   47,  263,   49,   50,   51,
			  380,   68,   15,  384,  369, 1619,  137,  125,  388,   14,
			   11,  392,   32,  599,  600,  601,   14,   11,  880,  137,
			   72,   73,   74,  674,  675,  105,   11,   72,   73,   74, yyDummy>>,
			1, 200, 200)
		end

	yycheck_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  117,   32,   72,   73,   74,  120,   14,  167,   32, 1118,
			  420,  128,   14,  130,  131,  425,  162,   32,  429,  739,
			  128,  136, 1509,  433,   14,  171,  437,  616,  188,  137,
			  176,   72,   73,   74,  180, 1284,  182,  726,   18,  122,
			 1207,   27,  202,  120,  733,  616,  121,  129,  618,  586,
			  587,  621,   14,   72,   73,   74,  138,   11,  468,  136,
			   70, 1310,   72,   73,   74,    3,  477,  126,  214,  480,
			  480,   44,   45,  483,   14,   15,  486,  136,   32,  225,
			 1329,  122,  242,  124,  125,   11,   72,   73,   74,   69,
			  126,   11,   72,   73,   74,   75, 1091,   37,  395,   17,

			  136,  398,  121,  514,  515,  786,   32,  999,  405,  255,
			  120,  408,   32, 1005,  411,  796,   72,   73,   74,  265,
			   11,   70,   14,   72,   73,   74,   52,  538,   46,   47,
			 1239,   49,   14,  822,  586,  587,  819,  117,   14,  122,
			  120,   32,  553, 1392,   22, 1312,   22,  558,   17,   25,
			  130,  131,   30,  564,   30,  566,  105, 1324,   14,   28,
			  612,  613,   72,   73,   74,   14,   11,  123,   14,   72,
			   73,   74,   17,  122,  585,  586,  587,   22,   72,   73,
			   74,   26,   12,   28,   14,   30,   31,   32, 1516,   63,
			   64,   36, 1515,  353,  354,  616,   14,  616,   17,  610, yyDummy>>,
			1, 200, 400)
		end

	yycheck_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  889,   46,  105,  614,   20,  615, 1074,   52, 1550,   28,
			   26,  128,   17,  123,  625,  124,  125,  627,  903,  630,
			  631,  632,  633,   28,   27,  795,  636,  638,  639,  123,
			  641, 1480,  643,   14, 1562, 1344,  647, 1346, 1561,  776,
			  777,   46,   14,   27,   47,   14,   49,   50,   51,  124,
			  125,  397,   27,  934,  400,   14,   72,   73,   74,  121,
			   12,  407,   14,  879,  410,   49,  412,  413,   14,   72,
			   73,   74,   60, 1601,  890,   17, 1599,   12, 1435,   14,
			  933,  578,   72,   73,   74,  582,   28,  132,   72,   73,
			   74,  136,  589,  704,  705,  706,  593,   72,   73,   74,

			 1549, 1629,   17,   14,   46, 1628,  122,   27,  124,  125,
			   72,   73,   74,   28, 1642,  726,   14, 1566, 1641,   22,
			  731, 1430,  733,   26, 1352,  125,  129,   30,   17, 1014,
			  741,   46,   14,  744,  745,  138,  747, 1665,  749,   28,
			   14, 1664,   70,  105,   72,   73,   74,  758, 1348,  760,
			   14, 1600,   72,   73,   74,  121, 1513,   46,  120,   14,
			  126, 1610,    8,    9,  775,  776,  777,   27,  125,  126,
			  781,  137,  783,  784,  534, 1242,   75,  788,  538,   34,
			  137,   75,  998,   38,  803, 1634,   72,   42,   74,   49,
			  801, 1386,  120,  553,   14,   70,  815,   72,   73,   74, yyDummy>>,
			1, 200, 600)
		end

	yycheck_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			 1557, 1082,   25,  813,   36,  824,   29, 1656,  124,  125,
			 1438,  822,   72,   73,   74,   45,  123, 1285,  125,  830,
			 1669,   44,   45, 1291,   71,  585,  586,  587,   31,  122,
			  825,  124, 1432,  579,  845,  845,   17,  583,   14, 1688,
			 1597,   12,   13,   14,  590,  120,   13,   28,  594,   14,
			 1607,  611,  612,  613, 1143, 1144, 1145, 1146,  124,  125,
			  107,  108, 1330,   14, 1332,   46,  113,  114,  115,   40,
			   14,   70,   16,   72,   73,   74,   14,  120,  889,  122,
			 1347,  892, 1639,  130,  131,   70,   29,   72,   73,   74,
			   34,  902,  903,  121,   38, 1176,   17,   14,   42,  910,

			  911,  912, 1091,  125,  126,    8,    9,   28, 1508,  353,
			  354,   14,  923,  128,  925,   18,  927, 1198,  929,   22,
			 1091,  120,   25,    8,    9,   46,   14,   30,   14,   14,
			  941,  942,  943,   18,  694,  120,  122,   22,  124,  123,
			   25,  125,  953,  953,  704,   30, 1343, 1344,   34, 1238,
			   53,  962,   38,   14, 1554,  530,   42,    7,  533, 1559,
			   40,   11, 1429,   41,   14,   27,  541,   17,   53,  544,
			   20,  546,  547,  125,  126, 1443,  754,  755,   28, 1268,
			   14,   31,   32, 1272,   41,  137,   36,   49,  999,   70,
			 1001,   72,   73,   74, 1005,   14,   46,   47,  122,   49, yyDummy>>,
			1, 200, 800)
		end

	yycheck_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  124, 1012,   52, 1014, 1604,  128, 1017,  753, 1018,  137,
			   72,   73,   74,  123, 1025,  125,   70,  120,   72,   73,
			   74,   70,   27,   72,   73,   74,  137,   47,   48,   30,
			   31, 1499, 1051,  911,  912,  120,   27,   14,  125,  120,
			 1507, 1060, 1053, 1510, 1055, 1056, 1057, 1058,   27, 1343,
			 1344, 1070,   72,   73,   74, 1066,   47,   27,   49,   50,
			   51,  125,  126, 1352,   14, 1076,  120,   72,   73,   74,
			 1091,  120, 1091,  137,   14,   70, 1087,   72,   73,   74,
			   14,   72,   73,   74,   44,  122,  136,  124,  120, 1100,
			  122, 1558,   44,   72,   73,   74,  121, 1107, 1109, 1567,

			 1111,   14,   72,   73,   74,  128,  121, 1117,   20,   27,
			   14,   38,  687,   40,   26,  128,  691,   14,   16,   27,
			  880,   14,  194,   14,   38,  120, 1407, 1408,   14,  120,
			   25,   49, 1143, 1144, 1145, 1146,   34,   35,  129,   27,
			   38,  716, 1369, 1611,   42,  720,  121,  138,  129, 1438,
			 1169, 1161,  136,   34,   72,   73,   74,   72,   73,   74,
			   72,   73,   74, 1173,   72,   73,   74, 1635, 1636,    7,
			   14,   27,   54,   11,  128,  137,   14,   14,   27,   17,
			   14, 1649,   20, 1299,   72,   73,   74, 1468,   27, 1657,
			   28,   14,  137,   31,   32,  128, 1207,  128,   36,   63, yyDummy>>,
			1, 200, 1000)
		end

	yycheck_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   49,   63, 1670,   19, 1672,  112,   14,   27,   46,   47,
			  122,   49,  124,  125,   52, 1683,   72,   73,   74,  120,
			   42, 1689, 1232,   72,   73,   74,   27, 1238,   14,   49,
			   27, 1699,   53,   72,   73,   74,  308, 1235,    0,  999,
			  312,  125, 1710,  126, 1525, 1005,  126,  126,   49,  126,
			 1531, 1719,   72,   73,   74,  126, 1372, 1268,   24,   25,
			   26, 1272,   14,  126,  336,  126, 1547,  126,   14,  136,
			 1289,   72,   73,   74,   27,   72,   73,   74,   13,  121,
			  352,   41, 1293,  123,  859,  128,   16,  862,   14, 1570,
			   14,  866,  123,  121,  869,  121,  871,  872,  136, 1309,

			 1311, 1312,  126,   12,  137, 1586,   27, 1318, 1319,  126,
			 1321, 1306,  126, 1324, 1325, 1055, 1056, 1057, 1058,   72,
			   73,   74, 1343, 1344, 1343, 1344, 1343, 1344,   49,  136,
			 1343, 1344,  126,  137, 1343, 1344,   27,  126, 1343, 1344,
			  136, 1352, 1343, 1344,  126,  528,  126,   27,  531,  126,
			  126,   72,   73,   74,  126,  126,  539,   27,   49,  542,
			    5,  136,  545,    3,  125, 1386,   14, 1386,   14,   49,
			  120,    5, 1653,  136, 1385,  122,  125, 1388, 1389,   49,
			  125,   72,   73,   74,  128,  121, 1396,  128,  128,  126,
			 1401,  463,   72,   73,   74,  126,  128, 1294, 1393,   27, yyDummy>>,
			1, 200, 1200)
		end

	yycheck_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  128, 1412,   72,   73,   74,  477,  981,   27,  126,  126,
			  985,  126, 1172,   27,  989, 1434,  126,  125,  993,   27,
			  492,  493,  494,  495,  496,  497,   27, 1438,  500,  501,
			  502,  503,  504,  505,  506,  507,  508,  509,  510,  511,
			  512,  513,  126, 1454,   72,   73,   74,  126,  116,   18,
			  125,  120,   72,   73,   74,  126, 1467,   12,   72,   73,
			   74,  125, 1651,  125,   72,   73,   74,  126, 1365,  121,
			  121,   72,   73,   74,  121,  128, 1487,  121, 1375,  121,
			   25, 1378,   14,  121, 1381,  153,  121,  128,    7,  128,
			  126,  159,   11, 1512,   27,   14,  128,  126,   17,  126,

			  168,   20,  126,  686,  126,  173,   27,  690,  126,   28,
			  178,  126,   31,   32, 1535,  126,   49,   36, 1535, 1530,
			  126,  126, 1535,  126, 1535,   27,  128,   46,   47,  121,
			   49,  128,  715,   52, 1545, 1546,  719, 1556,  121,   72,
			   73,   74,  121,   27,  212,  121,  618,   49,  126,  621,
			 1447,   72,   73,   74, 1451,  223,   14, 1578,  126, 1456,
			    8, 1578,  123, 1460, 1574, 1578,  123, 1578,  236,    5,
			   72,   73,   74,  645,  128,  123,  648, 1596,  650,  651,
			  123,  121,  124,  121,  128,  253,  121, 1606,   72,   73,
			   74,  630,  631,  632,  633,  263,  121,  669, 1619,  671, yyDummy>>,
			1, 200, 1400)
		end

	yycheck_template_9 (an_array: ARRAY [INTEGER])
			-- Fill chunk #9 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   27,  128, 1619,   27,  676,  677, 1619,  679, 1619,  125,
			  128,  128, 1623,  126,  282,  125,   27,  136,  125, 1638,
			   27, 1367,   49,   47,  125,   49,   50,   51,  121,  121,
			 1651, 1377,   23,   27, 1380,   74, 1382, 1383,   49,   35,
			   47,  128,   49,   50,   51,   72,   73,   74,   72,   73,
			   74,  113,  114,  128,   27,   49,  118,  119,  120,  128,
			  128,   72,   73,   74,  128,   72,   73,   74,  120,  122,
			   62,   27,  128,  128,  857,  121,   49,  860,   72,   73,
			   74,  864,  125,  125,  867,  125,  121,  870,   27,  126,
			  358,   47,  154,   49,   50,   51,  364,  128,  160,   72,

			   73,   74, 1448,   27,  126,  129, 1452,  169,    5,   27,
			   49, 1457,  174,  128,  138, 1461,   72,   73,   74,  124,
			  128,  120,  129,  795,  128,   49,   53,  395,   59,   26,
			  398,  138,  110,   72,   73,   74,   59,  405,  126,  128,
			  408,  128,  128,  411,  126,   27,   59,  128,   72,   73,
			   74,  128,   14,   27,   72,   73,   74,  126,  830,  120,
			  832,  833,  121,  128,  836,   47,  128,   49,   50,   51,
			    7,  233,  234,  129,   71,  847,  238,  239,  240,   76,
			   77,   78,  138,   80,   27,    7,    7,  455,  125,  124,
			   72,   73,   74,    7,   27,  124,  126,  980,   72,   73, yyDummy>>,
			1, 200, 1600)
		end

	yycheck_template_10 (an_array: ARRAY [INTEGER])
			-- Fill chunk #10 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   74,  984,   17,  137,   47,  988,   49,   50,   51,  992,
			  107,  108,  109,  110,  111,  112,  113,  114,  115,   20,
			 1206, 1476,  800, 1232,  897,  694,  822,  902,  902,   72,
			   73,   74, 1272,  130,  131,  132,  133,  134,  135,   72,
			   73,   74,  378,   27,   79,  336, 1289,  129, 1422,  618,
			  919, 1156, 1426, 1427,  919,   27,  138, 1021,   27,  919,
			  528,  142,  530,  531,  740,  533,  307,   14, 1438, 1353,
			  942,  539, 1044,  541,  542, 1080,  544,  545,  546,  547,
			 1543,  567, 1183,  733,  892,  889,  129,  959,   72,   73,
			   74, 1344, 1321,  355,  356,  138,  699,  359,  360,  361,

			   72,   73,   74,   72,   73,   74,    8,    9, 1472, 1402,
			  578, 1482,   14,   71,  582, 1185,   18,  712, 1401, 1619,
			   22,  589, 1578,   25,   71,  593, 1240,  847,   30,   76,
			   77,   78,   -1,   80,  396,  113,  114,  399,  795,   -1,
			  118,  119,  120,  121,  406,   -1,   -1,  409,   -1,  107,
			  108,   53,  130,   -1,   -1,  113,  114,  115,   -1,   -1,
			  107,  108,  109,  110,  111,  112,  113,  114,  115,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  154,   -1,   -1,   -1,
			   -1, 1053,  160,  130,  131,  132,  133,  134,  135,  167,
			 1564,  169,   -1,   -1,    8,    9,  174,   -1,   -1,   -1, yyDummy>>,
			1, 200, 1800)
		end

	yycheck_template_11 (an_array: ARRAY [INTEGER])
			-- Fill chunk #11 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   14,   -1,   -1,   -1,   18,   -1, 1078, 1079,   22,   23,
			  188,   25,   -1,   -1,   -1, 1087,   30,   -1,  686,  687,
			   -1,   -1,  690,  691,  202,   -1,   -1,   -1,   -1,   -1,
			   -1,  699,    8,    9, 1608,   -1,   -1, 1109,   14,   53,
			   -1,   -1,   18,   -1,  712,   -1,   22,  715,  716,   25,
			   -1,  719,  720,   -1,   30,  233,  234, 1631,   -1,   -1,
			  238,  239,  240,  241,  242,   -1,   -1,  529,   -1,   -1,
			  532,   -1,   -1,   -1, 1648,   14, 1650,   53,  540,   18,
			 1654,  543,   -1,   22,   -1,   -1,   25,   -1,   -1,   -1,
			   -1,   30,   -1, 1667,   -1,   -1,   -1, 1671,   -1, 1673,

			   -1,   -1,   -1,    8,    9, 1177, 1178, 1179, 1682,   14,
			 1684, 1685, 1686,   18,   53,   -1,   -1,   22,   -1,   -1,
			   25,   -1,   -1, 1697, 1698,   30, 1700,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1, 1709,   -1, 1711, 1712,   -1,
			   -1,   14,   -1, 1717, 1718,   18, 1720,   -1,   53,   22,
			   -1, 1725,   25,   -1,   -1,   -1, 1730,   30, 1732,   -1,
			   -1,  952,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  353,  354,  355,  356,   -1,
			   53,  359,  360,  361,  362,   -1,   -1,   -1,   -1,  857,
			   -1,  859,  860,   -1,  862,   -1,  864,   -1,  866,  867, yyDummy>>,
			1, 200, 2000)
		end

	yycheck_template_12 (an_array: ARRAY [INTEGER])
			-- Fill chunk #12 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,  869,  870,  871,  872,   -1,   -1,   -1,   -1,   12,
			   13,   14,   15,   -1,   -1,   -1,   -1,   -1,  396,   -1,
			   -1,  399,   25,   -1,   -1,   -1,   29,   -1,  406,   -1,
			   -1,  409,   -1,   -1,   37,  697,  698,   40,  700,  701,
			  702,   44,   45, 1315, 1316,   -1,   -1,   -1,   -1,   -1,
			 1322, 1323,   -1, 1325,   -1,    7,   -1,   -1,   -1,   11,
			   -1,   -1,   14, 1335, 1336,   17,   -1,   -1,   20,   -1,
			 1061,   -1,   -1,   -1,   -1,   -1,   28,   -1,   -1,   31,
			   32, 1072,    8,    9,   36,   -1,   -1,  465,   14,   -1,
			   -1,   -1,   18,   -1,   46,   47,   22,   49,   -1,   25,

			   52,   -1,   -1,   -1,   30,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  980,  981,   -1,   -1,  984,  985,   -1,   -1,
			  988,  989,   -1,   -1,  992,  993,   -1,   53,   -1, 1401,
			   -1,   -1,   -1, 1405,   -1,   -1,  113,  114,   -1,   -1,
			 1412,  118,  119,  120,   -1,    7,   -1,   -1,   -1,   11,
			   -1,  529,   14,   -1,  532,   17,  534,   -1,   20,   -1,
			  538,   -1,  540,   -1,   -1,  543,   28,   -1, 1159,   31,
			   32,   -1,    5,   -1,   36,  553,   -1,  154,   -1, 1170,
			   -1,   -1,   -1,  160,   46,   47,   -1,   49,   -1,   -1,
			   52,  569,  169,   26,   -1,   -1,  858,  174,   -1,  861, yyDummy>>,
			1, 200, 2200)
		end

	yycheck_template_13 (an_array: ARRAY [INTEGER])
			-- Fill chunk #13 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,  865,   -1,   -1,  868,  585,  586,  587,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1, 1213, 1495, 1215,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  611,  612,  613,   -1,   -1,   71,   -1,
			   -1,   -1,   -1,   76,   77,   78,   -1,   80,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  233,  234,   -1,   -1,
			   -1,  238,  239,  240,   -1,   -1,   -1,   -1,   71,   -1,
			 1542,   -1,   -1,   76,  107,  108,  109,  110,  111,  112,
			  113,  114,  115,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   12, 1283,   14,   -1,   -1,   -1,  130,  131,  132,

			  133,  134,  135,   -1,  107,  108,  109,  110,  111,  112,
			  113,  114,  115,   -1,   -1,   -1,  694,   -1,   -1,  697,
			  698,   -1,  700,  701,  702,  703,  704,  130,  131,  132,
			  133,  134,  135,   -1,   -1,   -1,   -1, 1328,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   71,   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1, 1358,   -1,   -1,
			   -1,   -1,    8,   -1,   -1,   -1,  754,  755,  355,  356,
			   -1,   -1,  359,  360,  361,   -1,  107,  108,  109,  110,
			  111,  112,  113,  114,  115,   -1,   -1,   -1,   -1,   -1, yyDummy>>,
			1, 200, 2400)
		end

	yycheck_template_14 (an_array: ARRAY [INTEGER])
			-- Fill chunk #14 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  130,
			  131,  132,  133,  134,  135,   -1,   -1,   -1,   -1,  396,
			   -1,   -1,  399, 1414,   -1,   -1, 1294,   -1,   -1,  406,
			   66,   67,  409,   69,   -1,   -1,   72,   73,   74,   75,
			   -1,   -1, 1433,   -1,   -1,   81,   82,   83,   84,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			  858,  117,  118,  861,  120,   -1,   -1,  865,   -1,   -1,
			  868,   -1,   -1,   -1,  130,  131,   -1, 1365,   71,   -1,

			   -1, 1369,  880,   76,   77,   78,   -1, 1375,   -1,   -1,
			 1378,   -1,   -1, 1381,   -1,   -1,   -1,   -1,   -1,   -1,
			 1511,   -1,   -1,   -1,   -1,   -1, 1517,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  107,  108,  109,  110,  111,  112,
			  113,  114,  115,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  529,   -1,   -1,  532,   -1,  130,  131,  132,
			  133,  134,  135,  540, 1555,   -1,  543,   -1,   -1,   -1,
			   -1,   -1, 1563,   -1, 1565,   -1,   -1,   -1,   -1, 1447,
			   -1,   -1,   -1, 1451,   -1,   -1,   -1,   -1, 1456,   -1,
			   -1,   -1, 1460,   -1,   -1,   -1,   -1,   -1,   -1,   -1, yyDummy>>,
			1, 200, 2600)
		end

	yycheck_template_15 (an_array: ARRAY [INTEGER])
			-- Fill chunk #15 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1, 1595,   -1,   -1,   -1,   -1,   -1,
			   -1, 1602, 1603,   -1, 1605,   -1,   -1,   -1, 1609,   -1,
			   -1,  999,   -1, 1614,   -1,   -1,   -1, 1005,   -1,   -1,
			 1292, 1293,   -1, 1295, 1296, 1297,   -1,   -1,   -1, 1630,
			   -1, 1632,   -1,   -1,   -1,   -1, 1637,   -1,   -1,   -1,
			   -1,   -1, 1643,   -1,   -1, 1646,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1, 1655,   -1,   -1,   -1,   -1, 1660,
			   -1,   -1,   -1,   -1,   -1, 1666,   -1, 1668,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1, 1680,
			   -1,   -1,   -1,   -1,   -1,   -1, 1687,   -1,   -1,   -1,

			   -1, 1692,   -1,   -1, 1366,   -1,   -1,   -1, 1370,   -1,
			   -1,   -1,   -1,   -1, 1376,   -1, 1707, 1379,   -1,   -1,
			  697,  698,   -1,  700,  701,  702,   -1,   -1,   -1,   -1,
			    4,    5,    6,    7,    8,   -1,   10,   11,   12,   13,
			   14,   15,   -1,   17,   18,   19,   -1,   21,   22,   -1,
			   24,   25,   26,   -1,   28,   29,   30,   -1,   32,   33,
			   -1,   -1,   -1,   37,   -1,   39,   40,   41,   -1,   -1,
			   44,   45,   46,   -1,   -1,   -1,   50,   -1,   52,   -1,
			   -1,   55,   56,   57,   58,   -1,   -1,   61,   62,   -1,
			   -1,   -1,   66,   67, 1172,   69,   70,   71,   72,   73, yyDummy>>,
			1, 200, 2800)
		end

	yycheck_template_16 (an_array: ARRAY [INTEGER])
			-- Fill chunk #16 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   74,   75,   76,   77,   78,   79,   80,   81,   82,   83,
			   84,   85,   86,   87,   88,   89,   90,   91,   92,   93,
			   94,   95,   96,   97,   98,   99,  100,  101,  102,  103,
			  104,  105,  106,  107,  108,  109,  110,  111,  112,  113,
			  114,  115,  116,  117,  118,  119,  120,   -1,  122,  123,
			   -1,  125,  126,  127,   -1,  129,  130,  131,  132,  133,
			  134,  135,  136,  137,   -1,   -1,   -1,   71,   -1,   -1,
			   -1,   -1,   76,   77,   78,   -1,   80,   -1,   -1,   -1,
			   -1,  858,   -1,   -1,  861,   -1,   -1,   -1,  865,   -1,
			   -1,  868,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,

			   -1,   -1,   -1,  107,  108,  109,  110,  111,  112,  113,
			  114,  115,   -1,   -1, 1292, 1293,   -1, 1295, 1296, 1297,
			 1298,   -1,   -1,   -1,   -1, 1303,  130,  131,  132,  133,
			  134,  135,  136,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,    4,    5,    6,    7,    8,   -1,
			   10,   11,   12,   13,   14,   15,   -1,   17,   18,   19,
			   -1,   21,   22,   -1,   24,   25,   26,   -1,   28,   29,
			   30,   -1,   32,   33,   -1,   -1,   -1,   37, 1366,   39,
			   40,   41, 1370,   -1,   44,   45,   46,   -1, 1376,   -1, yyDummy>>,
			1, 200, 3000)
		end

	yycheck_template_17 (an_array: ARRAY [INTEGER])
			-- Fill chunk #17 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   50, 1379,   52,   -1,   -1,   55,   56,   57,   58,   -1,
			   -1,   61,   62,   -1,   -1,   -1,   66,   67,   -1,   69,
			   70,   71,   72,   73,   74,   75,   76,   77,   78,   79,
			   80,   81,   82,   83,   84,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,  106,  107,  108,  109,
			  110,  111,  112,  113,  114,  115,  116,  117,  118,  119,
			  120,   -1,  122,  123,   -1,  125,  126,  127,   -1,  129,
			  130,  131,  132,  133,  134,  135,  136,  137,    4,    5,
			    6,    7,    8,   -1,   10,   11,   12,   13,   14,   15,

			   -1,   17,   18,   19,   -1,   21,   22,   -1,   24,   25,
			   26,   -1,   28,   29,   30,   -1,   32,   33,   -1,   -1,
			   -1,   37,   -1,   39,   40,   41,   -1,   -1,   44,   45,
			   46,   -1,   -1,   -1,   50,   -1,   52,   -1,   -1,   55,
			   56,   57,   58,   -1,   -1,   61,   62,   -1,   -1,   -1,
			   66,   67,   -1,   69,   70,   71,   72,   73,   74,   75,
			   76,   77,   78,   79,   80,   81,   82,   83,   84,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,  108,  109,  110,  111,  112,  113,  114,  115, yyDummy>>,
			1, 200, 3200)
		end

	yycheck_template_18 (an_array: ARRAY [INTEGER])
			-- Fill chunk #18 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  116,  117,  118,  119,  120,   12,  122,  123,   29,  125,
			  126,  127,   -1,  129,  130,  131,  132,  133,  134,  135,
			  136,  137,   -1,   81,   82,   83,   84,   85,   86,   87,
			   88,   89,   90,   91,   92,   93,   94,   95,   96,   97,
			   98,   99,  100,  101,  102,  103,   -1,   -1,   -1,   -1,
			   71,   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,
			  118,   -1,  120,   -1,   71,   -1,   -1,   -1,   -1,   76,
			   77,   78,   -1,   80,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  107,  108,  109,  110,
			  111,  112,  113,  114,  115,   -1,   -1,   -1,   -1,   -1,

			  107,  108,  109,  110,  111,  112,  113,  114,  115,  130,
			  131,  132,  133,  134,  135, 1292, 1293,   -1, 1295, 1296,
			 1297,   -1,   -1,  130,  131,  132,  133,  134,  135,   -1,
			   81,   82,   83,   84,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,   -1,   -1,    4,    5,    6,    7,    8,
			   -1,   10,   11,   12,   13,   14,   15,  118,   17,   18,
			   19,   -1,   21,   22,   -1,   24,   25,   26,   -1,   28,
			   29,   30,   -1,   32,   33,   -1,   -1,   -1,   37, 1366,
			   39,   40,   41, 1370,   -1,   44,   45,   46,   -1, 1376, yyDummy>>,
			1, 200, 3400)
		end

	yycheck_template_19 (an_array: ARRAY [INTEGER])
			-- Fill chunk #19 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   50, 1379,   52,   -1,   -1,   55,   56,   57,   58,
			   -1,   -1,   61,   62,   -1,   -1,   -1,   66,   67,   -1,
			   69,   70,   71,   72,   73,   74,   75,   76,   77,   78,
			   79,   80,   81,   82,   83,   84,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,  105,  106,  107,  108,
			  109,  110,  111,  112,  113,  114,  115,  116,  117,  118,
			  119,  120,   -1,  122,  123,   -1,  125,  126,  127,   -1,
			  129,  130,  131,  132,  133,  134,  135,  136,  137,    6,
			   -1,    8,   -1,   10,   -1,   12,   13,   14,   15,   -1,

			   -1,   18,   19,   -1,   21,   -1,   -1,   24,   25,   -1,
			   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,   -1,   -1,
			   37,   -1,   39,   40,   -1,   -1,   -1,   44,   45,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   55,   -1,
			   57,   58,   -1,   -1,   61,   -1,   63,   -1,   -1,   66,
			   67,   -1,   69,   70,   -1,   72,   73,   74,   -1,   -1,
			   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,   -1,  105,  106,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  116, yyDummy>>,
			1, 200, 3600)
		end

	yycheck_template_20 (an_array: ARRAY [INTEGER])
			-- Fill chunk #20 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  117,  118,   -1,  120,   -1,  122,   -1,   -1,   -1,    6,
			  127,    8,  129,   10,   -1,   12,   13,   14,   15,  136,
			  137,   18,   19,   -1,   21,   -1,   -1,   24,   25,   -1,
			   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,   -1,   -1,
			   37,   -1,   39,   40,   -1,   -1,   -1,   44,   45,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   55,   -1,
			   57,   58,   -1,   -1,   61,   -1,   63,   -1,   -1,   66,
			   67,   -1,   69,   70,   -1,   72,   73,   74,   -1,   -1,
			   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,

			   97,   98,   99,  100,  101,  102,  103,   -1,  105,  106,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  116,
			  117,  118,   -1,  120,   -1,  122,   -1,   -1,   -1,    6,
			  127,    8,  129,   10,   -1,   12,   13,   14,   15,  136,
			  137,   18,   19,   -1,   21,   -1,   -1,   24,   25,   -1,
			   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,   -1,   -1,
			   37,   -1,   39,   40,   -1,   -1,   -1,   44,   45,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   55,   -1,
			   57,   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,   66,
			   67,   -1,   69,   70,   -1,   72,   73,   74,   -1,   -1, yyDummy>>,
			1, 200, 3800)
		end

	yycheck_template_21 (an_array: ARRAY [INTEGER])
			-- Fill chunk #21 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,   -1,  105,  106,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  116,
			  117,  118,   -1,  120,   -1,  122,   -1,   -1,   -1,   -1,
			  127,  128,  129,   -1,   -1,   -1,   -1,   -1,   -1,  136,
			  137,    6,   -1,    8,   -1,   10,   -1,   12,   13,   14,
			   15,   -1,   -1,   18,   19,   -1,   21,   -1,   -1,   24,
			   25,   -1,   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,
			   -1,   -1,   37,   -1,   39,   40,   -1,   -1,   -1,   44,

			   45,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,
			   -1,   66,   67,   -1,   69,   70,   -1,   72,   73,   74,
			   -1,   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1,
			  105,  106,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  116,  117,  118,   -1,  120,   -1,  122,   -1,   -1,
			   -1,    6,  127,    8,  129,   10,   -1,   12,   13,   14,
			   15,  136,  137,   18,   19,   -1,   21,   -1,   -1,   24, yyDummy>>,
			1, 200, 4000)
		end

	yycheck_template_22 (an_array: ARRAY [INTEGER])
			-- Fill chunk #22 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   25,   -1,   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,
			   -1,   -1,   37,   -1,   39,   40,   -1,   -1,   -1,   44,
			   45,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,
			   -1,   66,   67,   -1,   69,   70,   -1,   72,   73,   74,
			   -1,   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1,
			  105,  106,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  116,  117,  118,   -1,  120,   -1,  122,   -1,   -1,

			   -1,    6,  127,    8,  129,   10,   -1,   12,   13,   14,
			   15,  136,   -1,   18,   19,   -1,   21,   -1,   -1,   24,
			   25,   -1,   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,
			   -1,   -1,   37,   -1,   39,   40,   -1,   -1,   -1,   44,
			   45,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,
			   -1,   66,   67,   -1,   69,   70,   -1,   72,   73,   74,
			   -1,   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1, yyDummy>>,
			1, 200, 4200)
		end

	yycheck_template_23 (an_array: ARRAY [INTEGER])
			-- Fill chunk #23 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  105,  106,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  116,  117,  118,   -1,  120,   -1,  122,   -1,   -1,
			   -1,    6,  127,    8,  129,   10,   -1,   12,   13,   14,
			   15,  136,   -1,   18,   19,   -1,   21,   -1,   -1,   24,
			   25,   -1,   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,
			   -1,   -1,   37,   -1,   39,   40,   -1,   -1,   -1,   44,
			   45,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,
			   -1,   66,   67,   -1,   69,   70,   -1,   72,   73,   74,
			   -1,   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,

			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1,
			  105,  106,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  116,  117,  118,   -1,  120,   -1,  122,   -1,   -1,
			   -1,    6,  127,    8,  129,   10,   -1,   12,   13,   14,
			   15,  136,   -1,   18,   19,   -1,   21,   -1,   -1,   24,
			   25,   -1,   -1,   -1,   29,   -1,   -1,   -1,   33,   -1,
			   -1,   -1,   37,   -1,   39,   40,   -1,   -1,   -1,   44,
			   45,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1, yyDummy>>,
			1, 200, 4400)
		end

	yycheck_template_24 (an_array: ARRAY [INTEGER])
			-- Fill chunk #24 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   66,   67,   -1,   69,   70,   -1,   72,   73,   74,
			   -1,   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1,
			  105,  106,   -1,   -1,   -1,   -1,   -1,    7,    8,   -1,
			   -1,  116,  117,  118,   14,  120,   -1,  122,   18,   -1,
			   -1,   21,  127,   -1,  129,   -1,   -1,   -1,   -1,   -1,
			   -1,  136,   -1,   33,   -1,   -1,   -1,   -1,   -1,   39,
			   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   50,   -1,   -1,   -1,   -1,   55,   -1,   57,   58,   -1,

			   -1,   61,   -1,   -1,   -1,   -1,   66,   67,   -1,   69,
			   70,   71,   72,   73,   74,   75,   -1,   -1,   -1,   79,
			   -1,   81,   82,   83,   84,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,    7,    8,  116,  117,  118,  119,
			  120,   14,  122,   -1,   -1,   18,   -1,  127,   21,   -1,
			  130,  131,   -1,   -1,   -1,   -1,   -1,  137,   -1,   -1,
			   33,   -1,   -1,   -1,   -1,   -1,   39,   -1,   41,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   50,   -1,   -1, yyDummy>>,
			1, 200, 4600)
		end

	yycheck_template_25 (an_array: ARRAY [INTEGER])
			-- Fill chunk #25 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   55,   -1,   57,   58,   -1,   -1,   61,   -1,
			   -1,   -1,   -1,   66,   67,   -1,   69,   70,   71,   72,
			   73,   74,   75,   -1,   -1,   -1,   79,   -1,   81,   82,
			   83,   84,   85,   86,   87,   88,   89,   90,   91,   92,
			   93,   94,   95,   96,   97,   98,   99,  100,  101,  102,
			  103,  104,  105,   -1,   -1,   -1,   -1,   -1,    8,   -1,
			   -1,   -1,   -1,  116,  117,  118,  119,  120,   18,  122,
			   -1,   21,   -1,   -1,  127,   -1,   -1,  130,  131,   -1,
			   -1,   -1,   -1,   33,  137,   -1,   -1,   -1,   -1,   39,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,

			   50,   -1,   -1,   -1,   -1,   55,   -1,   57,   58,   -1,
			   -1,   61,   -1,   -1,   -1,   -1,   66,   67,   -1,   69,
			   70,   71,   72,   73,   74,   75,   -1,   -1,   -1,   79,
			   -1,   81,   82,   83,   84,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,   -1,   -1,   -1,   -1,
			    7,    8,   -1,   -1,   -1,   -1,  116,  117,  118,  119,
			  120,   18,  122,  123,   21,   -1,   -1,  127,   -1,   -1,
			  130,  131,   -1,   -1,   -1,   -1,   33,  137,  138,   -1,
			   -1,   -1,   39,   -1,   -1,   -1,   -1,   -1,   -1,   -1, yyDummy>>,
			1, 200, 4800)
		end

	yycheck_template_26 (an_array: ARRAY [INTEGER])
			-- Fill chunk #26 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   50,   -1,   -1,   -1,   -1,   55,   -1,
			   57,   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,   66,
			   67,   -1,   69,   70,   71,   72,   73,   74,   75,   -1,
			   -1,   -1,   79,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,   -1,
			   -1,   -1,   -1,    7,    8,   -1,   -1,   -1,   -1,  116,
			  117,  118,  119,  120,   18,  122,   -1,   21,   -1,   -1,
			  127,   -1,   -1,  130,  131,   -1,   -1,   -1,   -1,   33,
			  137,   -1,   -1,   -1,   -1,   39,   -1,   -1,   -1,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   50,   -1,   -1,   -1,
			   -1,   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,
			   -1,   -1,   66,   67,   -1,   69,   70,   71,   72,   73,
			   74,   75,   -1,   -1,   -1,   79,   -1,   81,   82,   83,
			   84,   85,   86,   87,   88,   89,   90,   91,   92,   93,
			   94,   95,   96,   97,   98,   99,  100,  101,  102,  103,
			  104,  105,   -1,   -1,   -1,   -1,   -1,    8,   -1,   -1,
			   -1,   -1,  116,  117,  118,  119,  120,   18,  122,   -1,
			   21,   -1,   -1,  127,   -1,   -1,  130,  131,   -1,   -1,
			   -1,   -1,   33,  137,   -1,   -1,   -1,   -1,   39,   -1, yyDummy>>,
			1, 200, 5000)
		end

	yycheck_template_27 (an_array: ARRAY [INTEGER])
			-- Fill chunk #27 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   50,
			   -1,   -1,   -1,   -1,   55,   -1,   57,   58,   -1,   -1,
			   61,   -1,   -1,   -1,   -1,   66,   67,   -1,   69,   70,
			   71,   72,   73,   74,   75,   -1,   -1,   -1,   79,   -1,
			   81,   82,   83,   84,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  116,  117,  118,  119,  120,
			    6,  122,    8,   -1,   10,   -1,  127,   -1,   -1,  130,
			  131,   -1,   18,   19,   -1,   21,  137,  138,   24,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   33,   -1,   -1,
			   -1,   -1,   -1,   39,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   55,
			   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,
			   66,   67,   -1,   69,   70,   -1,   72,   73,   74,   -1,
			   -1,   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,   -1,  105,
			  106,   -1,   -1,   -1,   -1,   -1,   -1,    8,   -1,   -1,
			  116,  117,  118,   -1,  120,   -1,  122,   18,   -1,   -1, yyDummy>>,
			1, 200, 5200)
		end

	yycheck_template_28 (an_array: ARRAY [INTEGER])
			-- Fill chunk #28 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   21,  127,   -1,  129,   -1,   -1,   -1,   -1,   -1,   -1,
			  136,   -1,   33,   -1,   -1,   -1,   -1,   -1,   39,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   50,
			   -1,   -1,   -1,   -1,   55,   -1,   57,   58,   -1,   -1,
			   61,   -1,   -1,   -1,   -1,   66,   67,   -1,   69,   70,
			   71,   72,   73,   74,   75,   -1,   -1,   -1,   79,   -1,
			   81,   82,   83,   84,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,   -1,   -1,   -1,   -1,   -1,
			    8,   -1,   -1,   -1,   -1,  116,  117,  118,  119,  120,

			   18,  122,   -1,   21,   -1,  126,  127,   -1,   -1,  130,
			  131,   -1,   -1,   -1,   -1,   33,  137,   -1,   -1,   -1,
			   -1,   39,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   50,   -1,   -1,   -1,   -1,   55,   -1,   57,
			   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,   66,   67,
			   -1,   69,   70,   71,   72,   73,   74,   75,   -1,   -1,
			   -1,   79,   -1,   81,   82,   83,   84,   85,   86,   87,
			   88,   89,   90,   91,   92,   93,   94,   95,   96,   97,
			   98,   99,  100,  101,  102,  103,  104,  105,   -1,   -1,
			   -1,   -1,   -1,    8,   -1,   -1,   -1,   -1,  116,  117, yyDummy>>,
			1, 200, 5400)
		end

	yycheck_template_29 (an_array: ARRAY [INTEGER])
			-- Fill chunk #29 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  118,  119,  120,   18,  122,   -1,   21,   -1,   -1,  127,
			  128,   -1,  130,  131,   -1,   -1,   -1,   -1,   33,  137,
			   -1,   -1,   -1,   -1,   39,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   50,   -1,   -1,   -1,   -1,
			   55,   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,
			   -1,   66,   67,   -1,   69,   70,   71,   72,   73,   74,
			   75,   -1,   -1,   -1,   79,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,   -1,   -1,   -1,   -1,   -1,    8,   -1,   -1,   -1,

			   -1,  116,  117,  118,  119,  120,   18,  122,  123,   21,
			   -1,   -1,  127,   -1,   -1,  130,  131,   -1,   -1,   -1,
			   -1,   33,  137,   -1,   -1,   -1,   -1,   39,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   50,   -1,
			   -1,   -1,   -1,   55,   -1,   57,   58,   -1,   -1,   61,
			   62,   -1,   -1,   -1,   66,   67,   -1,   69,   70,   71,
			   72,   73,   74,   75,   -1,   -1,   -1,   79,   -1,   81,
			   82,   83,   84,   85,   86,   87,   88,   89,   90,   91,
			   92,   93,   94,   95,   96,   97,   98,   99,  100,  101,
			  102,  103,  104,  105,   -1,   -1,   -1,   -1,   -1,    8, yyDummy>>,
			1, 200, 5600)
		end

	yycheck_template_30 (an_array: ARRAY [INTEGER])
			-- Fill chunk #30 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,  116,  117,  118,  119,  120,   18,
			  122,   -1,   21,   -1,   -1,  127,   -1,   -1,  130,  131,
			   -1,   -1,   -1,   -1,   33,  137,   -1,   -1,   -1,   -1,
			   39,   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   50,   -1,   -1,   -1,   -1,   55,   -1,   57,   58,
			   -1,   -1,   61,   -1,   -1,   -1,   -1,   66,   67,   -1,
			   69,   70,   71,   72,   73,   74,   75,   -1,   -1,   -1,
			   79,   -1,   81,   82,   83,   84,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,  105,   -1,   -1,   -1,

			   -1,   -1,    8,   -1,   -1,   -1,   12,  116,  117,  118,
			  119,  120,   18,  122,   -1,   21,   -1,   -1,  127,   -1,
			   -1,  130,  131,   -1,   -1,   -1,   -1,   33,  137,   -1,
			   -1,   -1,   -1,   39,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   50,   -1,   -1,   -1,   -1,   55,
			   -1,   57,   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,
			   66,   67,   -1,   69,   70,   71,   72,   73,   74,   75,
			   -1,   -1,   -1,   79,   -1,   81,   82,   83,   84,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105, yyDummy>>,
			1, 200, 5800)
		end

	yycheck_template_31 (an_array: ARRAY [INTEGER])
			-- Fill chunk #31 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,   -1,    8,   -1,   -1,   -1,   -1,
			  116,  117,  118,  119,  120,   18,  122,   -1,   21,   -1,
			   -1,  127,   -1,   -1,  130,  131,   -1,   -1,   -1,   -1,
			   33,  137,   -1,   -1,   -1,   -1,   39,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   50,   -1,   -1,
			   -1,   -1,   55,   -1,   57,   58,   -1,   -1,   61,   -1,
			   -1,   -1,   -1,   66,   67,   -1,   69,   70,   71,   72,
			   73,   74,   75,   -1,   -1,   -1,   79,   -1,   81,   82,
			   83,   84,   85,   86,   87,   88,   89,   90,   91,   92,
			   93,   94,   95,   96,   97,   98,   99,  100,  101,  102,

			  103,  104,  105,   -1,   -1,   -1,   -1,   -1,    8,   -1,
			   -1,   -1,   -1,  116,  117,  118,  119,  120,   18,  122,
			   -1,   21,   -1,  126,  127,   -1,   -1,  130,  131,   -1,
			   -1,   -1,   -1,   33,  137,   -1,   -1,   -1,   -1,   39,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   50,   -1,   -1,   -1,   -1,   55,   -1,   57,   58,   -1,
			   -1,   61,   -1,   -1,   -1,   -1,   66,   67,   -1,   69,
			   70,   71,   72,   73,   74,   75,   -1,   -1,   -1,   79,
			   -1,   81,   82,   83,   84,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99, yyDummy>>,
			1, 200, 6000)
		end

	yycheck_template_32 (an_array: ARRAY [INTEGER])
			-- Fill chunk #32 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  100,  101,  102,  103,  104,  105,   -1,   -1,   -1,   -1,
			   -1,    8,   -1,   -1,   -1,   -1,  116,  117,  118,  119,
			  120,   18,  122,   -1,   21,   -1,   -1,  127,   -1,   -1,
			  130,  131,   -1,   -1,   -1,   -1,   33,  137,   -1,   -1,
			   -1,   -1,   39,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   14,   50,   -1,   -1,   -1,   -1,   55,   -1,
			   57,   58,   -1,   -1,   61,   -1,   -1,   -1,   -1,   66,
			   67,   -1,   69,   70,   71,   72,   73,   74,   75,   -1,
			   -1,   -1,   79,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,

			   97,   98,   99,  100,  101,  102,  103,  104,  105,   71,
			   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,  116,
			  117,  118,  119,  120,   -1,  122,   -1,   -1,   -1,   -1,
			  127,   -1,   -1,  130,  131,   22,   -1,   -1,   -1,   -1,
			  137,   -1,   -1,   30,   -1,  107,  108,  109,  110,  111,
			  112,  113,  114,  115,   -1,   -1,   43,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  130,  131,
			  132,  133,  134,  135,   -1,   -1,   -1,   -1,   -1,   66,
			   67,   -1,   69,   -1,   -1,   -1,   -1,   -1,   75,   41,
			   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,   86, yyDummy>>,
			1, 200, 6200)
		end

	yycheck_template_33 (an_array: ARRAY [INTEGER])
			-- Fill chunk #33 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,   -1,   71,
			   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,   -1,
			  117,  118,   -1,  120,   41,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  130,  131,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  107,  108,  109,  110,  111,
			  112,  113,  114,  115,   71,   -1,   -1,   -1,   -1,   76,
			   77,   78,   -1,   80,   -1,   -1,   -1,   -1,  130,  131,
			  132,  133,  134,  135,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   41,

			  107,  108,  109,  110,  111,  112,  113,  114,  115,   -1,
			   -1,   -1,   -1,   45,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  130,  131,  132,  133,  134,  135,   71,
			   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,   71,
			   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  107,  108,  109,  110,  111,
			  112,  113,  114,  115,   -1,  107,  108,  109,  110,  111,
			  112,  113,  114,  115,   43,   -1,   -1,   -1,  130,  131,
			  132,  133,  134,  135,   -1,   -1,   -1,   -1,  130,  131, yyDummy>>,
			1, 200, 6400)
		end

	yycheck_template_34 (an_array: ARRAY [INTEGER])
			-- Fill chunk #34 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  132,  133,  134,  135,   -1,   -1,   -1,   66,   67,   -1,
			   69,   -1,   -1,   -1,   -1,   -1,   75,   -1,   -1,   -1,
			   -1,   -1,   81,   82,   83,   84,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   61,   -1,   -1,   -1,  117,  118,
			   -1,  120,   69,   -1,   -1,   -1,   -1,   -1,   75,   -1,
			   -1,  130,  131,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,   62,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   71,   -1,   -1,
			  117,  118,   76,   77,   78,   -1,   80,   -1,   -1,   -1,
			   -1,  128,   -1,  130,  131,   -1,   -1,   -1,   -1,   -1,
			   -1,  138,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  107,  108,  109,  110,  111,  112,  113,
			  114,  115,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  125,   -1,   -1,   61,   -1,  130,  131,  132,  133,
			  134,  135,   69,   -1,   -1,   -1,   -1,   -1,   75,   -1,
			   -1,   -1,   -1,   -1,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96, yyDummy>>,
			1, 200, 6600)
		end

	yycheck_template_35 (an_array: ARRAY [INTEGER])
			-- Fill chunk #35 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   97,   98,   99,  100,  101,  102,  103,  104,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   61,   -1,   -1,   -1,   -1,
			  117,  118,   -1,   69,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  128,   -1,  130,  131,   81,   82,   83,   84,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,   71,   -1,
			   -1,   -1,   -1,   76,   77,   78,   -1,   80,   -1,   -1,
			   71,  117,  118,   -1,   -1,   76,   77,   78,   -1,   80,
			   -1,   -1,  128,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  107,  108,  109,  110,  111,  112,

			  113,  114,  115,   -1,   -1,   -1,  107,  108,  109,  110,
			  111,  112,  113,  114,  115,   -1,   -1,  130,  131,  132,
			  133,  134,  135,  136,  125,  126,   -1,   -1,   -1,  130,
			  131,  132,  133,  134,  135,   71,   -1,   -1,   -1,   -1,
			   76,   77,   78,   -1,   80,   -1,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,   -1,
			   -1,  107,  108,  109,  110,  111,  112,  113,  114,  115,
			   -1,   -1,   -1,   -1,   -1,   -1,   71,  123,   -1,  125,
			   -1,   -1,   -1,   -1,  130,  131,  132,  133,  134,  135, yyDummy>>,
			1, 200, 6800)
		end

	yycheck_template_36 (an_array: ARRAY [INTEGER])
			-- Fill chunk #36 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   71,   -1,   -1,   -1,   -1,   76,   77,   78,   -1,   80,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  107,  108,  109,  110,  111,  112,  113,  114,
			  115,   -1,   -1,   -1,   -1,   -1,  107,  108,  109,  110,
			  111,  112,  113,  114,  115,  130,  131,  132,  133,  134,
			  135,   -1,   -1,   -1,  125,  126,   -1,   -1,   -1,  130,
			  131,  132,  133,  134,  135,   71,   -1,   -1,   -1,   -1,
			   76,   77,   78,   -1,   80, 1121, 1122, 1123, 1124, 1125,
			 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135,
			 1136, 1137, 1138, 1139, 1140, 1141, 1142,   -1,   -1,   -1,

			   -1,  107,  108,  109,  110,  111,  112,  113,  114,  115,
			   -1,   -1,   -1,   71,   -1,   -1,   -1,  123,   76,   77,
			   78,   -1,   80,   -1,  130,  131,  132,  133,  134,  135,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  107,
			  108,  109,  110,  111,  112,  113,  114,  115,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  130,  131,  132,  133,  134,  135,   69,   -1,
			   -1,   -1,   -1,   -1,   75,   -1,   -1,   -1,   -1,   -1,
			   81,   82,   83,   84,   85,   86,   87,   88,   89,   90, yyDummy>>,
			1, 200, 7000)
		end

	yycheck_template_37 (an_array: ARRAY [INTEGER])
			-- Fill chunk #37 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  117,  118,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  130,
			  131, yyDummy>>,
			1, 41, 7200)
		end

feature {NONE} -- Semantic value stacks

	yyvs1: SPECIAL [detachable ANY]
			-- Stack for semantic values of type detachable ANY

	yyvsc1: INTEGER
			-- Capacity of semantic value stack `yyvs1'

	yyvsp1: INTEGER
			-- Top of semantic value stack `yyvs1'

	yyspecial_routines1: KL_SPECIAL_ROUTINES [detachable ANY]
			-- Routines that ought to be in SPECIAL [detachable ANY]

	yyvs2: SPECIAL [detachable ET_KEYWORD]
			-- Stack for semantic values of type detachable ET_KEYWORD

	yyvsc2: INTEGER
			-- Capacity of semantic value stack `yyvs2'

	yyvsp2: INTEGER
			-- Top of semantic value stack `yyvs2'

	yyspecial_routines2: KL_SPECIAL_ROUTINES [detachable ET_KEYWORD]
			-- Routines that ought to be in SPECIAL [detachable ET_KEYWORD]

	yyvs3: SPECIAL [detachable ET_AGENT_KEYWORD]
			-- Stack for semantic values of type detachable ET_AGENT_KEYWORD

	yyvsc3: INTEGER
			-- Capacity of semantic value stack `yyvs3'

	yyvsp3: INTEGER
			-- Top of semantic value stack `yyvs3'

	yyspecial_routines3: KL_SPECIAL_ROUTINES [detachable ET_AGENT_KEYWORD]
			-- Routines that ought to be in SPECIAL [detachable ET_AGENT_KEYWORD]

	yyvs4: SPECIAL [detachable ET_PRECURSOR_KEYWORD]
			-- Stack for semantic values of type detachable ET_PRECURSOR_KEYWORD

	yyvsc4: INTEGER
			-- Capacity of semantic value stack `yyvs4'

	yyvsp4: INTEGER
			-- Top of semantic value stack `yyvs4'

	yyspecial_routines4: KL_SPECIAL_ROUTINES [detachable ET_PRECURSOR_KEYWORD]
			-- Routines that ought to be in SPECIAL [detachable ET_PRECURSOR_KEYWORD]

	yyvs5: SPECIAL [detachable ET_SYMBOL]
			-- Stack for semantic values of type detachable ET_SYMBOL

	yyvsc5: INTEGER
			-- Capacity of semantic value stack `yyvs5'

	yyvsp5: INTEGER
			-- Top of semantic value stack `yyvs5'

	yyspecial_routines5: KL_SPECIAL_ROUTINES [detachable ET_SYMBOL]
			-- Routines that ought to be in SPECIAL [detachable ET_SYMBOL]

	yyvs6: SPECIAL [detachable ET_POSITION]
			-- Stack for semantic values of type detachable ET_POSITION

	yyvsc6: INTEGER
			-- Capacity of semantic value stack `yyvs6'

	yyvsp6: INTEGER
			-- Top of semantic value stack `yyvs6'

	yyspecial_routines6: KL_SPECIAL_ROUTINES [detachable ET_POSITION]
			-- Routines that ought to be in SPECIAL [detachable ET_POSITION]

	yyvs7: SPECIAL [detachable ET_BOOLEAN_CONSTANT]
			-- Stack for semantic values of type detachable ET_BOOLEAN_CONSTANT

	yyvsc7: INTEGER
			-- Capacity of semantic value stack `yyvs7'

	yyvsp7: INTEGER
			-- Top of semantic value stack `yyvs7'

	yyspecial_routines7: KL_SPECIAL_ROUTINES [detachable ET_BOOLEAN_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_BOOLEAN_CONSTANT]

	yyvs8: SPECIAL [detachable ET_BREAK]
			-- Stack for semantic values of type detachable ET_BREAK

	yyvsc8: INTEGER
			-- Capacity of semantic value stack `yyvs8'

	yyvsp8: INTEGER
			-- Top of semantic value stack `yyvs8'

	yyspecial_routines8: KL_SPECIAL_ROUTINES [detachable ET_BREAK]
			-- Routines that ought to be in SPECIAL [detachable ET_BREAK]

	yyvs9: SPECIAL [detachable ET_CHARACTER_CONSTANT]
			-- Stack for semantic values of type detachable ET_CHARACTER_CONSTANT

	yyvsc9: INTEGER
			-- Capacity of semantic value stack `yyvs9'

	yyvsp9: INTEGER
			-- Top of semantic value stack `yyvs9'

	yyspecial_routines9: KL_SPECIAL_ROUTINES [detachable ET_CHARACTER_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_CHARACTER_CONSTANT]

	yyvs10: SPECIAL [detachable ET_CURRENT]
			-- Stack for semantic values of type detachable ET_CURRENT

	yyvsc10: INTEGER
			-- Capacity of semantic value stack `yyvs10'

	yyvsp10: INTEGER
			-- Top of semantic value stack `yyvs10'

	yyspecial_routines10: KL_SPECIAL_ROUTINES [detachable ET_CURRENT]
			-- Routines that ought to be in SPECIAL [detachable ET_CURRENT]

	yyvs11: SPECIAL [detachable ET_FREE_OPERATOR]
			-- Stack for semantic values of type detachable ET_FREE_OPERATOR

	yyvsc11: INTEGER
			-- Capacity of semantic value stack `yyvs11'

	yyvsp11: INTEGER
			-- Top of semantic value stack `yyvs11'

	yyspecial_routines11: KL_SPECIAL_ROUTINES [detachable ET_FREE_OPERATOR]
			-- Routines that ought to be in SPECIAL [detachable ET_FREE_OPERATOR]

	yyvs12: SPECIAL [detachable ET_IDENTIFIER]
			-- Stack for semantic values of type detachable ET_IDENTIFIER

	yyvsc12: INTEGER
			-- Capacity of semantic value stack `yyvs12'

	yyvsp12: INTEGER
			-- Top of semantic value stack `yyvs12'

	yyspecial_routines12: KL_SPECIAL_ROUTINES [detachable ET_IDENTIFIER]
			-- Routines that ought to be in SPECIAL [detachable ET_IDENTIFIER]

	yyvs13: SPECIAL [detachable ET_INTEGER_CONSTANT]
			-- Stack for semantic values of type detachable ET_INTEGER_CONSTANT

	yyvsc13: INTEGER
			-- Capacity of semantic value stack `yyvs13'

	yyvsp13: INTEGER
			-- Top of semantic value stack `yyvs13'

	yyspecial_routines13: KL_SPECIAL_ROUTINES [detachable ET_INTEGER_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_INTEGER_CONSTANT]

	yyvs14: SPECIAL [detachable ET_KEYWORD_OPERATOR]
			-- Stack for semantic values of type detachable ET_KEYWORD_OPERATOR

	yyvsc14: INTEGER
			-- Capacity of semantic value stack `yyvs14'

	yyvsp14: INTEGER
			-- Top of semantic value stack `yyvs14'

	yyspecial_routines14: KL_SPECIAL_ROUTINES [detachable ET_KEYWORD_OPERATOR]
			-- Routines that ought to be in SPECIAL [detachable ET_KEYWORD_OPERATOR]

	yyvs15: SPECIAL [detachable ET_MANIFEST_STRING]
			-- Stack for semantic values of type detachable ET_MANIFEST_STRING

	yyvsc15: INTEGER
			-- Capacity of semantic value stack `yyvs15'

	yyvsp15: INTEGER
			-- Top of semantic value stack `yyvs15'

	yyspecial_routines15: KL_SPECIAL_ROUTINES [detachable ET_MANIFEST_STRING]
			-- Routines that ought to be in SPECIAL [detachable ET_MANIFEST_STRING]

	yyvs16: SPECIAL [detachable ET_REAL_CONSTANT]
			-- Stack for semantic values of type detachable ET_REAL_CONSTANT

	yyvsc16: INTEGER
			-- Capacity of semantic value stack `yyvs16'

	yyvsp16: INTEGER
			-- Top of semantic value stack `yyvs16'

	yyspecial_routines16: KL_SPECIAL_ROUTINES [detachable ET_REAL_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_REAL_CONSTANT]

	yyvs17: SPECIAL [detachable ET_RESULT]
			-- Stack for semantic values of type detachable ET_RESULT

	yyvsc17: INTEGER
			-- Capacity of semantic value stack `yyvs17'

	yyvsp17: INTEGER
			-- Top of semantic value stack `yyvs17'

	yyspecial_routines17: KL_SPECIAL_ROUTINES [detachable ET_RESULT]
			-- Routines that ought to be in SPECIAL [detachable ET_RESULT]

	yyvs18: SPECIAL [detachable ET_RETRY_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_RETRY_INSTRUCTION

	yyvsc18: INTEGER
			-- Capacity of semantic value stack `yyvs18'

	yyvsp18: INTEGER
			-- Top of semantic value stack `yyvs18'

	yyspecial_routines18: KL_SPECIAL_ROUTINES [detachable ET_RETRY_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_RETRY_INSTRUCTION]

	yyvs19: SPECIAL [detachable ET_SYMBOL_OPERATOR]
			-- Stack for semantic values of type detachable ET_SYMBOL_OPERATOR

	yyvsc19: INTEGER
			-- Capacity of semantic value stack `yyvs19'

	yyvsp19: INTEGER
			-- Top of semantic value stack `yyvs19'

	yyspecial_routines19: KL_SPECIAL_ROUTINES [detachable ET_SYMBOL_OPERATOR]
			-- Routines that ought to be in SPECIAL [detachable ET_SYMBOL_OPERATOR]

	yyvs20: SPECIAL [detachable ET_VOID]
			-- Stack for semantic values of type detachable ET_VOID

	yyvsc20: INTEGER
			-- Capacity of semantic value stack `yyvs20'

	yyvsp20: INTEGER
			-- Top of semantic value stack `yyvs20'

	yyspecial_routines20: KL_SPECIAL_ROUTINES [detachable ET_VOID]
			-- Routines that ought to be in SPECIAL [detachable ET_VOID]

	yyvs21: SPECIAL [detachable ET_SEMICOLON_SYMBOL]
			-- Stack for semantic values of type detachable ET_SEMICOLON_SYMBOL

	yyvsc21: INTEGER
			-- Capacity of semantic value stack `yyvs21'

	yyvsp21: INTEGER
			-- Top of semantic value stack `yyvs21'

	yyspecial_routines21: KL_SPECIAL_ROUTINES [detachable ET_SEMICOLON_SYMBOL]
			-- Routines that ought to be in SPECIAL [detachable ET_SEMICOLON_SYMBOL]

	yyvs22: SPECIAL [detachable ET_BRACKET_SYMBOL]
			-- Stack for semantic values of type detachable ET_BRACKET_SYMBOL

	yyvsc22: INTEGER
			-- Capacity of semantic value stack `yyvs22'

	yyvsp22: INTEGER
			-- Top of semantic value stack `yyvs22'

	yyspecial_routines22: KL_SPECIAL_ROUTINES [detachable ET_BRACKET_SYMBOL]
			-- Routines that ought to be in SPECIAL [detachable ET_BRACKET_SYMBOL]

	yyvs23: SPECIAL [detachable ET_QUESTION_MARK_SYMBOL]
			-- Stack for semantic values of type detachable ET_QUESTION_MARK_SYMBOL

	yyvsc23: INTEGER
			-- Capacity of semantic value stack `yyvs23'

	yyvsp23: INTEGER
			-- Top of semantic value stack `yyvs23'

	yyspecial_routines23: KL_SPECIAL_ROUTINES [detachable ET_QUESTION_MARK_SYMBOL]
			-- Routines that ought to be in SPECIAL [detachable ET_QUESTION_MARK_SYMBOL]

	yyvs24: SPECIAL [detachable ET_ACROSS_EXPRESSION]
			-- Stack for semantic values of type detachable ET_ACROSS_EXPRESSION

	yyvsc24: INTEGER
			-- Capacity of semantic value stack `yyvs24'

	yyvsp24: INTEGER
			-- Top of semantic value stack `yyvs24'

	yyspecial_routines24: KL_SPECIAL_ROUTINES [detachable ET_ACROSS_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_ACROSS_EXPRESSION]

	yyvs25: SPECIAL [detachable ET_ACROSS_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_ACROSS_INSTRUCTION

	yyvsc25: INTEGER
			-- Capacity of semantic value stack `yyvs25'

	yyvsp25: INTEGER
			-- Top of semantic value stack `yyvs25'

	yyspecial_routines25: KL_SPECIAL_ROUTINES [detachable ET_ACROSS_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_ACROSS_INSTRUCTION]

	yyvs26: SPECIAL [detachable ET_ACTUAL_ARGUMENT_LIST]
			-- Stack for semantic values of type detachable ET_ACTUAL_ARGUMENT_LIST

	yyvsc26: INTEGER
			-- Capacity of semantic value stack `yyvs26'

	yyvsp26: INTEGER
			-- Top of semantic value stack `yyvs26'

	yyspecial_routines26: KL_SPECIAL_ROUTINES [detachable ET_ACTUAL_ARGUMENT_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_ACTUAL_ARGUMENT_LIST]

	yyvs27: SPECIAL [detachable ET_ACTUAL_PARAMETER_ITEM]
			-- Stack for semantic values of type detachable ET_ACTUAL_PARAMETER_ITEM

	yyvsc27: INTEGER
			-- Capacity of semantic value stack `yyvs27'

	yyvsp27: INTEGER
			-- Top of semantic value stack `yyvs27'

	yyspecial_routines27: KL_SPECIAL_ROUTINES [detachable ET_ACTUAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_ACTUAL_PARAMETER_ITEM]

	yyvs28: SPECIAL [detachable ET_ACTUAL_PARAMETER_LIST]
			-- Stack for semantic values of type detachable ET_ACTUAL_PARAMETER_LIST

	yyvsc28: INTEGER
			-- Capacity of semantic value stack `yyvs28'

	yyvsp28: INTEGER
			-- Top of semantic value stack `yyvs28'

	yyspecial_routines28: KL_SPECIAL_ROUTINES [detachable ET_ACTUAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_ACTUAL_PARAMETER_LIST]

	yyvs29: SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND]
			-- Stack for semantic values of type detachable ET_AGENT_ARGUMENT_OPERAND

	yyvsc29: INTEGER
			-- Capacity of semantic value stack `yyvs29'

	yyvsp29: INTEGER
			-- Top of semantic value stack `yyvs29'

	yyspecial_routines29: KL_SPECIAL_ROUTINES [detachable ET_AGENT_ARGUMENT_OPERAND]
			-- Routines that ought to be in SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND]

	yyvs30: SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND_ITEM]
			-- Stack for semantic values of type detachable ET_AGENT_ARGUMENT_OPERAND_ITEM

	yyvsc30: INTEGER
			-- Capacity of semantic value stack `yyvs30'

	yyvsp30: INTEGER
			-- Top of semantic value stack `yyvs30'

	yyspecial_routines30: KL_SPECIAL_ROUTINES [detachable ET_AGENT_ARGUMENT_OPERAND_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND_ITEM]

	yyvs31: SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND_LIST]
			-- Stack for semantic values of type detachable ET_AGENT_ARGUMENT_OPERAND_LIST

	yyvsc31: INTEGER
			-- Capacity of semantic value stack `yyvs31'

	yyvsp31: INTEGER
			-- Top of semantic value stack `yyvs31'

	yyspecial_routines31: KL_SPECIAL_ROUTINES [detachable ET_AGENT_ARGUMENT_OPERAND_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_AGENT_ARGUMENT_OPERAND_LIST]

	yyvs32: SPECIAL [detachable ET_AGENT_TARGET]
			-- Stack for semantic values of type detachable ET_AGENT_TARGET

	yyvsc32: INTEGER
			-- Capacity of semantic value stack `yyvs32'

	yyvsp32: INTEGER
			-- Top of semantic value stack `yyvs32'

	yyspecial_routines32: KL_SPECIAL_ROUTINES [detachable ET_AGENT_TARGET]
			-- Routines that ought to be in SPECIAL [detachable ET_AGENT_TARGET]

	yyvs33: SPECIAL [detachable ET_ALIAS_NAME]
			-- Stack for semantic values of type detachable ET_ALIAS_NAME

	yyvsc33: INTEGER
			-- Capacity of semantic value stack `yyvs33'

	yyvsp33: INTEGER
			-- Top of semantic value stack `yyvs33'

	yyspecial_routines33: KL_SPECIAL_ROUTINES [detachable ET_ALIAS_NAME]
			-- Routines that ought to be in SPECIAL [detachable ET_ALIAS_NAME]

	yyvs34: SPECIAL [detachable ET_ASSIGNER]
			-- Stack for semantic values of type detachable ET_ASSIGNER

	yyvsc34: INTEGER
			-- Capacity of semantic value stack `yyvs34'

	yyvsp34: INTEGER
			-- Top of semantic value stack `yyvs34'

	yyspecial_routines34: KL_SPECIAL_ROUTINES [detachable ET_ASSIGNER]
			-- Routines that ought to be in SPECIAL [detachable ET_ASSIGNER]

	yyvs35: SPECIAL [detachable ET_BRACKET_EXPRESSION]
			-- Stack for semantic values of type detachable ET_BRACKET_EXPRESSION

	yyvsc35: INTEGER
			-- Capacity of semantic value stack `yyvs35'

	yyvsp35: INTEGER
			-- Top of semantic value stack `yyvs35'

	yyspecial_routines35: KL_SPECIAL_ROUTINES [detachable ET_BRACKET_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_BRACKET_EXPRESSION]

	yyvs36: SPECIAL [detachable ET_CALL_AGENT]
			-- Stack for semantic values of type detachable ET_CALL_AGENT

	yyvsc36: INTEGER
			-- Capacity of semantic value stack `yyvs36'

	yyvsp36: INTEGER
			-- Top of semantic value stack `yyvs36'

	yyspecial_routines36: KL_SPECIAL_ROUTINES [detachable ET_CALL_AGENT]
			-- Routines that ought to be in SPECIAL [detachable ET_CALL_AGENT]

	yyvs37: SPECIAL [detachable ET_QUALIFIED_CALL_EXPRESSION]
			-- Stack for semantic values of type detachable ET_QUALIFIED_CALL_EXPRESSION

	yyvsc37: INTEGER
			-- Capacity of semantic value stack `yyvs37'

	yyvsp37: INTEGER
			-- Top of semantic value stack `yyvs37'

	yyspecial_routines37: KL_SPECIAL_ROUTINES [detachable ET_QUALIFIED_CALL_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_QUALIFIED_CALL_EXPRESSION]

	yyvs38: SPECIAL [detachable ET_CHECK_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_CHECK_INSTRUCTION

	yyvsc38: INTEGER
			-- Capacity of semantic value stack `yyvs38'

	yyvsp38: INTEGER
			-- Top of semantic value stack `yyvs38'

	yyspecial_routines38: KL_SPECIAL_ROUTINES [detachable ET_CHECK_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_CHECK_INSTRUCTION]

	yyvs39: SPECIAL [detachable ET_CHOICE]
			-- Stack for semantic values of type detachable ET_CHOICE

	yyvsc39: INTEGER
			-- Capacity of semantic value stack `yyvs39'

	yyvsp39: INTEGER
			-- Top of semantic value stack `yyvs39'

	yyspecial_routines39: KL_SPECIAL_ROUTINES [detachable ET_CHOICE]
			-- Routines that ought to be in SPECIAL [detachable ET_CHOICE]

	yyvs40: SPECIAL [detachable ET_CHOICE_CONSTANT]
			-- Stack for semantic values of type detachable ET_CHOICE_CONSTANT

	yyvsc40: INTEGER
			-- Capacity of semantic value stack `yyvs40'

	yyvsp40: INTEGER
			-- Top of semantic value stack `yyvs40'

	yyspecial_routines40: KL_SPECIAL_ROUTINES [detachable ET_CHOICE_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_CHOICE_CONSTANT]

	yyvs41: SPECIAL [detachable ET_CHOICE_ITEM]
			-- Stack for semantic values of type detachable ET_CHOICE_ITEM

	yyvsc41: INTEGER
			-- Capacity of semantic value stack `yyvs41'

	yyvsp41: INTEGER
			-- Top of semantic value stack `yyvs41'

	yyspecial_routines41: KL_SPECIAL_ROUTINES [detachable ET_CHOICE_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_CHOICE_ITEM]

	yyvs42: SPECIAL [detachable ET_CHOICE_LIST]
			-- Stack for semantic values of type detachable ET_CHOICE_LIST

	yyvsc42: INTEGER
			-- Capacity of semantic value stack `yyvs42'

	yyvsp42: INTEGER
			-- Top of semantic value stack `yyvs42'

	yyspecial_routines42: KL_SPECIAL_ROUTINES [detachable ET_CHOICE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_CHOICE_LIST]

	yyvs43: SPECIAL [detachable ET_CLASS]
			-- Stack for semantic values of type detachable ET_CLASS

	yyvsc43: INTEGER
			-- Capacity of semantic value stack `yyvs43'

	yyvsp43: INTEGER
			-- Top of semantic value stack `yyvs43'

	yyspecial_routines43: KL_SPECIAL_ROUTINES [detachable ET_CLASS]
			-- Routines that ought to be in SPECIAL [detachable ET_CLASS]

	yyvs44: SPECIAL [detachable ET_CLIENT_ITEM]
			-- Stack for semantic values of type detachable ET_CLIENT_ITEM

	yyvsc44: INTEGER
			-- Capacity of semantic value stack `yyvs44'

	yyvsp44: INTEGER
			-- Top of semantic value stack `yyvs44'

	yyspecial_routines44: KL_SPECIAL_ROUTINES [detachable ET_CLIENT_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_CLIENT_ITEM]

	yyvs45: SPECIAL [detachable ET_CLIENTS]
			-- Stack for semantic values of type detachable ET_CLIENTS

	yyvsc45: INTEGER
			-- Capacity of semantic value stack `yyvs45'

	yyvsp45: INTEGER
			-- Top of semantic value stack `yyvs45'

	yyspecial_routines45: KL_SPECIAL_ROUTINES [detachable ET_CLIENTS]
			-- Routines that ought to be in SPECIAL [detachable ET_CLIENTS]

	yyvs46: SPECIAL [detachable ET_COMPOUND]
			-- Stack for semantic values of type detachable ET_COMPOUND

	yyvsc46: INTEGER
			-- Capacity of semantic value stack `yyvs46'

	yyvsp46: INTEGER
			-- Top of semantic value stack `yyvs46'

	yyspecial_routines46: KL_SPECIAL_ROUTINES [detachable ET_COMPOUND]
			-- Routines that ought to be in SPECIAL [detachable ET_COMPOUND]

	yyvs47: SPECIAL [detachable ET_CONDITIONAL]
			-- Stack for semantic values of type detachable ET_CONDITIONAL

	yyvsc47: INTEGER
			-- Capacity of semantic value stack `yyvs47'

	yyvsp47: INTEGER
			-- Top of semantic value stack `yyvs47'

	yyspecial_routines47: KL_SPECIAL_ROUTINES [detachable ET_CONDITIONAL]
			-- Routines that ought to be in SPECIAL [detachable ET_CONDITIONAL]

	yyvs48: SPECIAL [detachable ET_CONSTANT]
			-- Stack for semantic values of type detachable ET_CONSTANT

	yyvsc48: INTEGER
			-- Capacity of semantic value stack `yyvs48'

	yyvsp48: INTEGER
			-- Top of semantic value stack `yyvs48'

	yyspecial_routines48: KL_SPECIAL_ROUTINES [detachable ET_CONSTANT]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTANT]

	yyvs49: SPECIAL [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
			-- Stack for semantic values of type detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM

	yyvsc49: INTEGER
			-- Capacity of semantic value stack `yyvs49'

	yyvsp49: INTEGER
			-- Top of semantic value stack `yyvs49'

	yyspecial_routines49: KL_SPECIAL_ROUTINES [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]

	yyvs50: SPECIAL [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]
			-- Stack for semantic values of type detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST

	yyvsc50: INTEGER
			-- Capacity of semantic value stack `yyvs50'

	yyvsp50: INTEGER
			-- Top of semantic value stack `yyvs50'

	yyspecial_routines50: KL_SPECIAL_ROUTINES [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]

	yyvs51: SPECIAL [detachable ET_CONSTRAINT_CREATOR]
			-- Stack for semantic values of type detachable ET_CONSTRAINT_CREATOR

	yyvsc51: INTEGER
			-- Capacity of semantic value stack `yyvs51'

	yyvsp51: INTEGER
			-- Top of semantic value stack `yyvs51'

	yyspecial_routines51: KL_SPECIAL_ROUTINES [detachable ET_CONSTRAINT_CREATOR]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTRAINT_CREATOR]

	yyvs52: SPECIAL [detachable ET_CONSTRAINT_RENAME_LIST]
			-- Stack for semantic values of type detachable ET_CONSTRAINT_RENAME_LIST

	yyvsc52: INTEGER
			-- Capacity of semantic value stack `yyvs52'

	yyvsp52: INTEGER
			-- Top of semantic value stack `yyvs52'

	yyspecial_routines52: KL_SPECIAL_ROUTINES [detachable ET_CONSTRAINT_RENAME_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTRAINT_RENAME_LIST]

	yyvs53: SPECIAL [detachable ET_CONSTRAINT_TYPE]
			-- Stack for semantic values of type detachable ET_CONSTRAINT_TYPE

	yyvsc53: INTEGER
			-- Capacity of semantic value stack `yyvs53'

	yyvsp53: INTEGER
			-- Top of semantic value stack `yyvs53'

	yyspecial_routines53: KL_SPECIAL_ROUTINES [detachable ET_CONSTRAINT_TYPE]
			-- Routines that ought to be in SPECIAL [detachable ET_CONSTRAINT_TYPE]

	yyvs54: SPECIAL [detachable ET_CONVERT_FEATURE]
			-- Stack for semantic values of type detachable ET_CONVERT_FEATURE

	yyvsc54: INTEGER
			-- Capacity of semantic value stack `yyvs54'

	yyvsp54: INTEGER
			-- Top of semantic value stack `yyvs54'

	yyspecial_routines54: KL_SPECIAL_ROUTINES [detachable ET_CONVERT_FEATURE]
			-- Routines that ought to be in SPECIAL [detachable ET_CONVERT_FEATURE]

	yyvs55: SPECIAL [detachable ET_CONVERT_FEATURE_ITEM]
			-- Stack for semantic values of type detachable ET_CONVERT_FEATURE_ITEM

	yyvsc55: INTEGER
			-- Capacity of semantic value stack `yyvs55'

	yyvsp55: INTEGER
			-- Top of semantic value stack `yyvs55'

	yyspecial_routines55: KL_SPECIAL_ROUTINES [detachable ET_CONVERT_FEATURE_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_CONVERT_FEATURE_ITEM]

	yyvs56: SPECIAL [detachable ET_CONVERT_FEATURE_LIST]
			-- Stack for semantic values of type detachable ET_CONVERT_FEATURE_LIST

	yyvsc56: INTEGER
			-- Capacity of semantic value stack `yyvs56'

	yyvsp56: INTEGER
			-- Top of semantic value stack `yyvs56'

	yyspecial_routines56: KL_SPECIAL_ROUTINES [detachable ET_CONVERT_FEATURE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_CONVERT_FEATURE_LIST]

	yyvs57: SPECIAL [detachable ET_CREATE_EXPRESSION]
			-- Stack for semantic values of type detachable ET_CREATE_EXPRESSION

	yyvsc57: INTEGER
			-- Capacity of semantic value stack `yyvs57'

	yyvsp57: INTEGER
			-- Top of semantic value stack `yyvs57'

	yyspecial_routines57: KL_SPECIAL_ROUTINES [detachable ET_CREATE_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_CREATE_EXPRESSION]

	yyvs58: SPECIAL [detachable ET_CREATION_REGION]
			-- Stack for semantic values of type detachable ET_CREATION_REGION

	yyvsc58: INTEGER
			-- Capacity of semantic value stack `yyvs58'

	yyvsp58: INTEGER
			-- Top of semantic value stack `yyvs58'

	yyspecial_routines58: KL_SPECIAL_ROUTINES [detachable ET_CREATION_REGION]
			-- Routines that ought to be in SPECIAL [detachable ET_CREATION_REGION]

	yyvs59: SPECIAL [detachable ET_CREATOR]
			-- Stack for semantic values of type detachable ET_CREATOR

	yyvsc59: INTEGER
			-- Capacity of semantic value stack `yyvs59'

	yyvsp59: INTEGER
			-- Top of semantic value stack `yyvs59'

	yyspecial_routines59: KL_SPECIAL_ROUTINES [detachable ET_CREATOR]
			-- Routines that ought to be in SPECIAL [detachable ET_CREATOR]

	yyvs60: SPECIAL [detachable ET_CREATOR_LIST]
			-- Stack for semantic values of type detachable ET_CREATOR_LIST

	yyvsc60: INTEGER
			-- Capacity of semantic value stack `yyvs60'

	yyvsp60: INTEGER
			-- Top of semantic value stack `yyvs60'

	yyspecial_routines60: KL_SPECIAL_ROUTINES [detachable ET_CREATOR_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_CREATOR_LIST]

	yyvs61: SPECIAL [detachable ET_DEBUG_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_DEBUG_INSTRUCTION

	yyvsc61: INTEGER
			-- Capacity of semantic value stack `yyvs61'

	yyvsp61: INTEGER
			-- Top of semantic value stack `yyvs61'

	yyspecial_routines61: KL_SPECIAL_ROUTINES [detachable ET_DEBUG_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_DEBUG_INSTRUCTION]

	yyvs62: SPECIAL [detachable ET_ELSEIF_EXPRESSION]
			-- Stack for semantic values of type detachable ET_ELSEIF_EXPRESSION

	yyvsc62: INTEGER
			-- Capacity of semantic value stack `yyvs62'

	yyvsp62: INTEGER
			-- Top of semantic value stack `yyvs62'

	yyspecial_routines62: KL_SPECIAL_ROUTINES [detachable ET_ELSEIF_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_ELSEIF_EXPRESSION]

	yyvs63: SPECIAL [detachable ET_ELSEIF_EXPRESSION_LIST]
			-- Stack for semantic values of type detachable ET_ELSEIF_EXPRESSION_LIST

	yyvsc63: INTEGER
			-- Capacity of semantic value stack `yyvs63'

	yyvsp63: INTEGER
			-- Top of semantic value stack `yyvs63'

	yyspecial_routines63: KL_SPECIAL_ROUTINES [detachable ET_ELSEIF_EXPRESSION_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_ELSEIF_EXPRESSION_LIST]

	yyvs64: SPECIAL [detachable ET_ELSEIF_PART]
			-- Stack for semantic values of type detachable ET_ELSEIF_PART

	yyvsc64: INTEGER
			-- Capacity of semantic value stack `yyvs64'

	yyvsp64: INTEGER
			-- Top of semantic value stack `yyvs64'

	yyspecial_routines64: KL_SPECIAL_ROUTINES [detachable ET_ELSEIF_PART]
			-- Routines that ought to be in SPECIAL [detachable ET_ELSEIF_PART]

	yyvs65: SPECIAL [detachable ET_ELSEIF_PART_LIST]
			-- Stack for semantic values of type detachable ET_ELSEIF_PART_LIST

	yyvsc65: INTEGER
			-- Capacity of semantic value stack `yyvs65'

	yyvsp65: INTEGER
			-- Top of semantic value stack `yyvs65'

	yyspecial_routines65: KL_SPECIAL_ROUTINES [detachable ET_ELSEIF_PART_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_ELSEIF_PART_LIST]

	yyvs66: SPECIAL [detachable ET_EXPORT]
			-- Stack for semantic values of type detachable ET_EXPORT

	yyvsc66: INTEGER
			-- Capacity of semantic value stack `yyvs66'

	yyvsp66: INTEGER
			-- Top of semantic value stack `yyvs66'

	yyspecial_routines66: KL_SPECIAL_ROUTINES [detachable ET_EXPORT]
			-- Routines that ought to be in SPECIAL [detachable ET_EXPORT]

	yyvs67: SPECIAL [detachable ET_EXPORT_LIST]
			-- Stack for semantic values of type detachable ET_EXPORT_LIST

	yyvsc67: INTEGER
			-- Capacity of semantic value stack `yyvs67'

	yyvsp67: INTEGER
			-- Top of semantic value stack `yyvs67'

	yyspecial_routines67: KL_SPECIAL_ROUTINES [detachable ET_EXPORT_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_EXPORT_LIST]

	yyvs68: SPECIAL [detachable ET_EXPRESSION]
			-- Stack for semantic values of type detachable ET_EXPRESSION

	yyvsc68: INTEGER
			-- Capacity of semantic value stack `yyvs68'

	yyvsp68: INTEGER
			-- Top of semantic value stack `yyvs68'

	yyspecial_routines68: KL_SPECIAL_ROUTINES [detachable ET_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_EXPRESSION]

	yyvs69: SPECIAL [detachable ET_EXPRESSION_ITEM]
			-- Stack for semantic values of type detachable ET_EXPRESSION_ITEM

	yyvsc69: INTEGER
			-- Capacity of semantic value stack `yyvs69'

	yyvsp69: INTEGER
			-- Top of semantic value stack `yyvs69'

	yyspecial_routines69: KL_SPECIAL_ROUTINES [detachable ET_EXPRESSION_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_EXPRESSION_ITEM]

	yyvs70: SPECIAL [detachable ET_EXTENDED_FEATURE_NAME]
			-- Stack for semantic values of type detachable ET_EXTENDED_FEATURE_NAME

	yyvsc70: INTEGER
			-- Capacity of semantic value stack `yyvs70'

	yyvsp70: INTEGER
			-- Top of semantic value stack `yyvs70'

	yyspecial_routines70: KL_SPECIAL_ROUTINES [detachable ET_EXTENDED_FEATURE_NAME]
			-- Routines that ought to be in SPECIAL [detachable ET_EXTENDED_FEATURE_NAME]

	yyvs71: SPECIAL [detachable ET_EXTERNAL_ALIAS]
			-- Stack for semantic values of type detachable ET_EXTERNAL_ALIAS

	yyvsc71: INTEGER
			-- Capacity of semantic value stack `yyvs71'

	yyvsp71: INTEGER
			-- Top of semantic value stack `yyvs71'

	yyspecial_routines71: KL_SPECIAL_ROUTINES [detachable ET_EXTERNAL_ALIAS]
			-- Routines that ought to be in SPECIAL [detachable ET_EXTERNAL_ALIAS]

	yyvs72: SPECIAL [detachable ET_FEATURE_CLAUSE]
			-- Stack for semantic values of type detachable ET_FEATURE_CLAUSE

	yyvsc72: INTEGER
			-- Capacity of semantic value stack `yyvs72'

	yyvsp72: INTEGER
			-- Top of semantic value stack `yyvs72'

	yyspecial_routines72: KL_SPECIAL_ROUTINES [detachable ET_FEATURE_CLAUSE]
			-- Routines that ought to be in SPECIAL [detachable ET_FEATURE_CLAUSE]

	yyvs73: SPECIAL [detachable ET_FEATURE_CLAUSE_LIST]
			-- Stack for semantic values of type detachable ET_FEATURE_CLAUSE_LIST

	yyvsc73: INTEGER
			-- Capacity of semantic value stack `yyvs73'

	yyvsp73: INTEGER
			-- Top of semantic value stack `yyvs73'

	yyspecial_routines73: KL_SPECIAL_ROUTINES [detachable ET_FEATURE_CLAUSE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_FEATURE_CLAUSE_LIST]

	yyvs74: SPECIAL [detachable ET_FEATURE_EXPORT]
			-- Stack for semantic values of type detachable ET_FEATURE_EXPORT

	yyvsc74: INTEGER
			-- Capacity of semantic value stack `yyvs74'

	yyvsp74: INTEGER
			-- Top of semantic value stack `yyvs74'

	yyspecial_routines74: KL_SPECIAL_ROUTINES [detachable ET_FEATURE_EXPORT]
			-- Routines that ought to be in SPECIAL [detachable ET_FEATURE_EXPORT]

	yyvs75: SPECIAL [detachable ET_FEATURE_NAME]
			-- Stack for semantic values of type detachable ET_FEATURE_NAME

	yyvsc75: INTEGER
			-- Capacity of semantic value stack `yyvs75'

	yyvsp75: INTEGER
			-- Top of semantic value stack `yyvs75'

	yyspecial_routines75: KL_SPECIAL_ROUTINES [detachable ET_FEATURE_NAME]
			-- Routines that ought to be in SPECIAL [detachable ET_FEATURE_NAME]

	yyvs76: SPECIAL [detachable ET_FEATURE_NAME_ITEM]
			-- Stack for semantic values of type detachable ET_FEATURE_NAME_ITEM

	yyvsc76: INTEGER
			-- Capacity of semantic value stack `yyvs76'

	yyvsp76: INTEGER
			-- Top of semantic value stack `yyvs76'

	yyspecial_routines76: KL_SPECIAL_ROUTINES [detachable ET_FEATURE_NAME_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_FEATURE_NAME_ITEM]

	yyvs77: SPECIAL [detachable ET_FORMAL_ARGUMENT]
			-- Stack for semantic values of type detachable ET_FORMAL_ARGUMENT

	yyvsc77: INTEGER
			-- Capacity of semantic value stack `yyvs77'

	yyvsp77: INTEGER
			-- Top of semantic value stack `yyvs77'

	yyspecial_routines77: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_ARGUMENT]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_ARGUMENT]

	yyvs78: SPECIAL [detachable ET_FORMAL_ARGUMENT_ITEM]
			-- Stack for semantic values of type detachable ET_FORMAL_ARGUMENT_ITEM

	yyvsc78: INTEGER
			-- Capacity of semantic value stack `yyvs78'

	yyvsp78: INTEGER
			-- Top of semantic value stack `yyvs78'

	yyspecial_routines78: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_ARGUMENT_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_ARGUMENT_ITEM]

	yyvs79: SPECIAL [detachable ET_FORMAL_ARGUMENT_LIST]
			-- Stack for semantic values of type detachable ET_FORMAL_ARGUMENT_LIST

	yyvsc79: INTEGER
			-- Capacity of semantic value stack `yyvs79'

	yyvsp79: INTEGER
			-- Top of semantic value stack `yyvs79'

	yyspecial_routines79: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_ARGUMENT_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_ARGUMENT_LIST]

	yyvs80: SPECIAL [detachable ET_FORMAL_PARAMETER]
			-- Stack for semantic values of type detachable ET_FORMAL_PARAMETER

	yyvsc80: INTEGER
			-- Capacity of semantic value stack `yyvs80'

	yyvsp80: INTEGER
			-- Top of semantic value stack `yyvs80'

	yyspecial_routines80: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_PARAMETER]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_PARAMETER]

	yyvs81: SPECIAL [detachable ET_FORMAL_PARAMETER_ITEM]
			-- Stack for semantic values of type detachable ET_FORMAL_PARAMETER_ITEM

	yyvsc81: INTEGER
			-- Capacity of semantic value stack `yyvs81'

	yyvsp81: INTEGER
			-- Top of semantic value stack `yyvs81'

	yyspecial_routines81: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_PARAMETER_ITEM]

	yyvs82: SPECIAL [detachable ET_FORMAL_PARAMETER_LIST]
			-- Stack for semantic values of type detachable ET_FORMAL_PARAMETER_LIST

	yyvsc82: INTEGER
			-- Capacity of semantic value stack `yyvs82'

	yyvsp82: INTEGER
			-- Top of semantic value stack `yyvs82'

	yyspecial_routines82: KL_SPECIAL_ROUTINES [detachable ET_FORMAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_FORMAL_PARAMETER_LIST]

	yyvs83: SPECIAL [detachable ET_IF_EXPRESSION]
			-- Stack for semantic values of type detachable ET_IF_EXPRESSION

	yyvsc83: INTEGER
			-- Capacity of semantic value stack `yyvs83'

	yyvsp83: INTEGER
			-- Top of semantic value stack `yyvs83'

	yyspecial_routines83: KL_SPECIAL_ROUTINES [detachable ET_IF_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_IF_EXPRESSION]

	yyvs84: SPECIAL [detachable ET_IF_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_IF_INSTRUCTION

	yyvsc84: INTEGER
			-- Capacity of semantic value stack `yyvs84'

	yyvsp84: INTEGER
			-- Top of semantic value stack `yyvs84'

	yyspecial_routines84: KL_SPECIAL_ROUTINES [detachable ET_IF_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_IF_INSTRUCTION]

	yyvs85: SPECIAL [detachable ET_INDEXING_LIST]
			-- Stack for semantic values of type detachable ET_INDEXING_LIST

	yyvsc85: INTEGER
			-- Capacity of semantic value stack `yyvs85'

	yyvsp85: INTEGER
			-- Top of semantic value stack `yyvs85'

	yyspecial_routines85: KL_SPECIAL_ROUTINES [detachable ET_INDEXING_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_INDEXING_LIST]

	yyvs86: SPECIAL [detachable ET_INDEXING_ITEM]
			-- Stack for semantic values of type detachable ET_INDEXING_ITEM

	yyvsc86: INTEGER
			-- Capacity of semantic value stack `yyvs86'

	yyvsp86: INTEGER
			-- Top of semantic value stack `yyvs86'

	yyspecial_routines86: KL_SPECIAL_ROUTINES [detachable ET_INDEXING_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_INDEXING_ITEM]

	yyvs87: SPECIAL [detachable ET_INDEXING_TERM]
			-- Stack for semantic values of type detachable ET_INDEXING_TERM

	yyvsc87: INTEGER
			-- Capacity of semantic value stack `yyvs87'

	yyvsp87: INTEGER
			-- Top of semantic value stack `yyvs87'

	yyspecial_routines87: KL_SPECIAL_ROUTINES [detachable ET_INDEXING_TERM]
			-- Routines that ought to be in SPECIAL [detachable ET_INDEXING_TERM]

	yyvs88: SPECIAL [detachable ET_INDEXING_TERM_ITEM]
			-- Stack for semantic values of type detachable ET_INDEXING_TERM_ITEM

	yyvsc88: INTEGER
			-- Capacity of semantic value stack `yyvs88'

	yyvsp88: INTEGER
			-- Top of semantic value stack `yyvs88'

	yyspecial_routines88: KL_SPECIAL_ROUTINES [detachable ET_INDEXING_TERM_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_INDEXING_TERM_ITEM]

	yyvs89: SPECIAL [detachable ET_INDEXING_TERM_LIST]
			-- Stack for semantic values of type detachable ET_INDEXING_TERM_LIST

	yyvsc89: INTEGER
			-- Capacity of semantic value stack `yyvs89'

	yyvsp89: INTEGER
			-- Top of semantic value stack `yyvs89'

	yyspecial_routines89: KL_SPECIAL_ROUTINES [detachable ET_INDEXING_TERM_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_INDEXING_TERM_LIST]

	yyvs90: SPECIAL [detachable ET_INLINE_AGENT]
			-- Stack for semantic values of type detachable ET_INLINE_AGENT

	yyvsc90: INTEGER
			-- Capacity of semantic value stack `yyvs90'

	yyvsp90: INTEGER
			-- Top of semantic value stack `yyvs90'

	yyspecial_routines90: KL_SPECIAL_ROUTINES [detachable ET_INLINE_AGENT]
			-- Routines that ought to be in SPECIAL [detachable ET_INLINE_AGENT]

	yyvs91: SPECIAL [detachable ET_INSPECT_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_INSPECT_INSTRUCTION

	yyvsc91: INTEGER
			-- Capacity of semantic value stack `yyvs91'

	yyvsp91: INTEGER
			-- Top of semantic value stack `yyvs91'

	yyspecial_routines91: KL_SPECIAL_ROUTINES [detachable ET_INSPECT_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_INSPECT_INSTRUCTION]

	yyvs92: SPECIAL [detachable ET_INSTRUCTION]
			-- Stack for semantic values of type detachable ET_INSTRUCTION

	yyvsc92: INTEGER
			-- Capacity of semantic value stack `yyvs92'

	yyvsp92: INTEGER
			-- Top of semantic value stack `yyvs92'

	yyspecial_routines92: KL_SPECIAL_ROUTINES [detachable ET_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [detachable ET_INSTRUCTION]

	yyvs93: SPECIAL [detachable ET_INVARIANTS]
			-- Stack for semantic values of type detachable ET_INVARIANTS

	yyvsc93: INTEGER
			-- Capacity of semantic value stack `yyvs93'

	yyvsp93: INTEGER
			-- Top of semantic value stack `yyvs93'

	yyspecial_routines93: KL_SPECIAL_ROUTINES [detachable ET_INVARIANTS]
			-- Routines that ought to be in SPECIAL [detachable ET_INVARIANTS]

	yyvs94: SPECIAL [detachable ET_KEYWORD_FEATURE_NAME_LIST]
			-- Stack for semantic values of type detachable ET_KEYWORD_FEATURE_NAME_LIST

	yyvsc94: INTEGER
			-- Capacity of semantic value stack `yyvs94'

	yyvsp94: INTEGER
			-- Top of semantic value stack `yyvs94'

	yyspecial_routines94: KL_SPECIAL_ROUTINES [detachable ET_KEYWORD_FEATURE_NAME_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_KEYWORD_FEATURE_NAME_LIST]

	yyvs95: SPECIAL [detachable ET_LIKE_TYPE]
			-- Stack for semantic values of type detachable ET_LIKE_TYPE

	yyvsc95: INTEGER
			-- Capacity of semantic value stack `yyvs95'

	yyvsp95: INTEGER
			-- Top of semantic value stack `yyvs95'

	yyspecial_routines95: KL_SPECIAL_ROUTINES [detachable ET_LIKE_TYPE]
			-- Routines that ought to be in SPECIAL [detachable ET_LIKE_TYPE]

	yyvs96: SPECIAL [detachable ET_LOCAL_VARIABLE]
			-- Stack for semantic values of type detachable ET_LOCAL_VARIABLE

	yyvsc96: INTEGER
			-- Capacity of semantic value stack `yyvs96'

	yyvsp96: INTEGER
			-- Top of semantic value stack `yyvs96'

	yyspecial_routines96: KL_SPECIAL_ROUTINES [detachable ET_LOCAL_VARIABLE]
			-- Routines that ought to be in SPECIAL [detachable ET_LOCAL_VARIABLE]

	yyvs97: SPECIAL [detachable ET_LOCAL_VARIABLE_ITEM]
			-- Stack for semantic values of type detachable ET_LOCAL_VARIABLE_ITEM

	yyvsc97: INTEGER
			-- Capacity of semantic value stack `yyvs97'

	yyvsp97: INTEGER
			-- Top of semantic value stack `yyvs97'

	yyspecial_routines97: KL_SPECIAL_ROUTINES [detachable ET_LOCAL_VARIABLE_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_LOCAL_VARIABLE_ITEM]

	yyvs98: SPECIAL [detachable ET_LOCAL_VARIABLE_LIST]
			-- Stack for semantic values of type detachable ET_LOCAL_VARIABLE_LIST

	yyvsc98: INTEGER
			-- Capacity of semantic value stack `yyvs98'

	yyvsp98: INTEGER
			-- Top of semantic value stack `yyvs98'

	yyspecial_routines98: KL_SPECIAL_ROUTINES [detachable ET_LOCAL_VARIABLE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_LOCAL_VARIABLE_LIST]

	yyvs99: SPECIAL [detachable ET_LOOP_INVARIANTS]
			-- Stack for semantic values of type detachable ET_LOOP_INVARIANTS

	yyvsc99: INTEGER
			-- Capacity of semantic value stack `yyvs99'

	yyvsp99: INTEGER
			-- Top of semantic value stack `yyvs99'

	yyspecial_routines99: KL_SPECIAL_ROUTINES [detachable ET_LOOP_INVARIANTS]
			-- Routines that ought to be in SPECIAL [detachable ET_LOOP_INVARIANTS]

	yyvs100: SPECIAL [detachable ET_MANIFEST_ARRAY]
			-- Stack for semantic values of type detachable ET_MANIFEST_ARRAY

	yyvsc100: INTEGER
			-- Capacity of semantic value stack `yyvs100'

	yyvsp100: INTEGER
			-- Top of semantic value stack `yyvs100'

	yyspecial_routines100: KL_SPECIAL_ROUTINES [detachable ET_MANIFEST_ARRAY]
			-- Routines that ought to be in SPECIAL [detachable ET_MANIFEST_ARRAY]

	yyvs101: SPECIAL [detachable ET_MANIFEST_STRING_ITEM]
			-- Stack for semantic values of type detachable ET_MANIFEST_STRING_ITEM

	yyvsc101: INTEGER
			-- Capacity of semantic value stack `yyvs101'

	yyvsp101: INTEGER
			-- Top of semantic value stack `yyvs101'

	yyspecial_routines101: KL_SPECIAL_ROUTINES [detachable ET_MANIFEST_STRING_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_MANIFEST_STRING_ITEM]

	yyvs102: SPECIAL [detachable ET_MANIFEST_STRING_LIST]
			-- Stack for semantic values of type detachable ET_MANIFEST_STRING_LIST

	yyvsc102: INTEGER
			-- Capacity of semantic value stack `yyvs102'

	yyvsp102: INTEGER
			-- Top of semantic value stack `yyvs102'

	yyspecial_routines102: KL_SPECIAL_ROUTINES [detachable ET_MANIFEST_STRING_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_MANIFEST_STRING_LIST]

	yyvs103: SPECIAL [detachable ET_MANIFEST_TUPLE]
			-- Stack for semantic values of type detachable ET_MANIFEST_TUPLE

	yyvsc103: INTEGER
			-- Capacity of semantic value stack `yyvs103'

	yyvsp103: INTEGER
			-- Top of semantic value stack `yyvs103'

	yyspecial_routines103: KL_SPECIAL_ROUTINES [detachable ET_MANIFEST_TUPLE]
			-- Routines that ought to be in SPECIAL [detachable ET_MANIFEST_TUPLE]

	yyvs104: SPECIAL [detachable ET_OBSOLETE]
			-- Stack for semantic values of type detachable ET_OBSOLETE

	yyvsc104: INTEGER
			-- Capacity of semantic value stack `yyvs104'

	yyvsp104: INTEGER
			-- Top of semantic value stack `yyvs104'

	yyspecial_routines104: KL_SPECIAL_ROUTINES [detachable ET_OBSOLETE]
			-- Routines that ought to be in SPECIAL [detachable ET_OBSOLETE]

	yyvs105: SPECIAL [detachable ET_PARENTHESIZED_EXPRESSION]
			-- Stack for semantic values of type detachable ET_PARENTHESIZED_EXPRESSION

	yyvsc105: INTEGER
			-- Capacity of semantic value stack `yyvs105'

	yyvsp105: INTEGER
			-- Top of semantic value stack `yyvs105'

	yyspecial_routines105: KL_SPECIAL_ROUTINES [detachable ET_PARENTHESIZED_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_PARENTHESIZED_EXPRESSION]

	yyvs106: SPECIAL [detachable ET_PARENT]
			-- Stack for semantic values of type detachable ET_PARENT

	yyvsc106: INTEGER
			-- Capacity of semantic value stack `yyvs106'

	yyvsp106: INTEGER
			-- Top of semantic value stack `yyvs106'

	yyspecial_routines106: KL_SPECIAL_ROUTINES [detachable ET_PARENT]
			-- Routines that ought to be in SPECIAL [detachable ET_PARENT]

	yyvs107: SPECIAL [detachable ET_PARENT_CLAUSE_LIST]
			-- Stack for semantic values of type detachable ET_PARENT_CLAUSE_LIST

	yyvsc107: INTEGER
			-- Capacity of semantic value stack `yyvs107'

	yyvsp107: INTEGER
			-- Top of semantic value stack `yyvs107'

	yyspecial_routines107: KL_SPECIAL_ROUTINES [detachable ET_PARENT_CLAUSE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_PARENT_CLAUSE_LIST]

	yyvs108: SPECIAL [detachable ET_PARENT_ITEM]
			-- Stack for semantic values of type detachable ET_PARENT_ITEM

	yyvsc108: INTEGER
			-- Capacity of semantic value stack `yyvs108'

	yyvsp108: INTEGER
			-- Top of semantic value stack `yyvs108'

	yyspecial_routines108: KL_SPECIAL_ROUTINES [detachable ET_PARENT_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_PARENT_ITEM]

	yyvs109: SPECIAL [detachable ET_PARENT_LIST]
			-- Stack for semantic values of type detachable ET_PARENT_LIST

	yyvsc109: INTEGER
			-- Capacity of semantic value stack `yyvs109'

	yyvsp109: INTEGER
			-- Top of semantic value stack `yyvs109'

	yyspecial_routines109: KL_SPECIAL_ROUTINES [detachable ET_PARENT_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_PARENT_LIST]

	yyvs110: SPECIAL [detachable ET_POSTCONDITIONS]
			-- Stack for semantic values of type detachable ET_POSTCONDITIONS

	yyvsc110: INTEGER
			-- Capacity of semantic value stack `yyvs110'

	yyvsp110: INTEGER
			-- Top of semantic value stack `yyvs110'

	yyspecial_routines110: KL_SPECIAL_ROUTINES [detachable ET_POSTCONDITIONS]
			-- Routines that ought to be in SPECIAL [detachable ET_POSTCONDITIONS]

	yyvs111: SPECIAL [detachable ET_PRECONDITIONS]
			-- Stack for semantic values of type detachable ET_PRECONDITIONS

	yyvsc111: INTEGER
			-- Capacity of semantic value stack `yyvs111'

	yyvsp111: INTEGER
			-- Top of semantic value stack `yyvs111'

	yyspecial_routines111: KL_SPECIAL_ROUTINES [detachable ET_PRECONDITIONS]
			-- Routines that ought to be in SPECIAL [detachable ET_PRECONDITIONS]

	yyvs112: SPECIAL [detachable ET_PROCEDURE]
			-- Stack for semantic values of type detachable ET_PROCEDURE

	yyvsc112: INTEGER
			-- Capacity of semantic value stack `yyvs112'

	yyvsp112: INTEGER
			-- Top of semantic value stack `yyvs112'

	yyspecial_routines112: KL_SPECIAL_ROUTINES [detachable ET_PROCEDURE]
			-- Routines that ought to be in SPECIAL [detachable ET_PROCEDURE]

	yyvs113: SPECIAL [detachable ET_QUALIFIED_LIKE_IDENTIFIER]
			-- Stack for semantic values of type detachable ET_QUALIFIED_LIKE_IDENTIFIER

	yyvsc113: INTEGER
			-- Capacity of semantic value stack `yyvs113'

	yyvsp113: INTEGER
			-- Top of semantic value stack `yyvs113'

	yyspecial_routines113: KL_SPECIAL_ROUTINES [detachable ET_QUALIFIED_LIKE_IDENTIFIER]
			-- Routines that ought to be in SPECIAL [detachable ET_QUALIFIED_LIKE_IDENTIFIER]

	yyvs114: SPECIAL [detachable ET_QUERY]
			-- Stack for semantic values of type detachable ET_QUERY

	yyvsc114: INTEGER
			-- Capacity of semantic value stack `yyvs114'

	yyvsp114: INTEGER
			-- Top of semantic value stack `yyvs114'

	yyspecial_routines114: KL_SPECIAL_ROUTINES [detachable ET_QUERY]
			-- Routines that ought to be in SPECIAL [detachable ET_QUERY]

	yyvs115: SPECIAL [detachable ET_RENAME_ITEM]
			-- Stack for semantic values of type detachable ET_RENAME_ITEM

	yyvsc115: INTEGER
			-- Capacity of semantic value stack `yyvs115'

	yyvsp115: INTEGER
			-- Top of semantic value stack `yyvs115'

	yyspecial_routines115: KL_SPECIAL_ROUTINES [detachable ET_RENAME_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_RENAME_ITEM]

	yyvs116: SPECIAL [detachable ET_RENAME_LIST]
			-- Stack for semantic values of type detachable ET_RENAME_LIST

	yyvsc116: INTEGER
			-- Capacity of semantic value stack `yyvs116'

	yyvsp116: INTEGER
			-- Top of semantic value stack `yyvs116'

	yyspecial_routines116: KL_SPECIAL_ROUTINES [detachable ET_RENAME_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_RENAME_LIST]

	yyvs117: SPECIAL [detachable ET_STATIC_CALL_EXPRESSION]
			-- Stack for semantic values of type detachable ET_STATIC_CALL_EXPRESSION

	yyvsc117: INTEGER
			-- Capacity of semantic value stack `yyvs117'

	yyvsp117: INTEGER
			-- Top of semantic value stack `yyvs117'

	yyspecial_routines117: KL_SPECIAL_ROUTINES [detachable ET_STATIC_CALL_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_STATIC_CALL_EXPRESSION]

	yyvs118: SPECIAL [detachable ET_STRIP_EXPRESSION]
			-- Stack for semantic values of type detachable ET_STRIP_EXPRESSION

	yyvsc118: INTEGER
			-- Capacity of semantic value stack `yyvs118'

	yyvsp118: INTEGER
			-- Top of semantic value stack `yyvs118'

	yyspecial_routines118: KL_SPECIAL_ROUTINES [detachable ET_STRIP_EXPRESSION]
			-- Routines that ought to be in SPECIAL [detachable ET_STRIP_EXPRESSION]

	yyvs119: SPECIAL [detachable ET_TYPE]
			-- Stack for semantic values of type detachable ET_TYPE

	yyvsc119: INTEGER
			-- Capacity of semantic value stack `yyvs119'

	yyvsp119: INTEGER
			-- Top of semantic value stack `yyvs119'

	yyspecial_routines119: KL_SPECIAL_ROUTINES [detachable ET_TYPE]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE]

	yyvs120: SPECIAL [detachable ET_TYPE_CONSTRAINT]
			-- Stack for semantic values of type detachable ET_TYPE_CONSTRAINT

	yyvsc120: INTEGER
			-- Capacity of semantic value stack `yyvs120'

	yyvsp120: INTEGER
			-- Top of semantic value stack `yyvs120'

	yyspecial_routines120: KL_SPECIAL_ROUTINES [detachable ET_TYPE_CONSTRAINT]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE_CONSTRAINT]

	yyvs121: SPECIAL [detachable ET_TYPE_CONSTRAINT_ITEM]
			-- Stack for semantic values of type detachable ET_TYPE_CONSTRAINT_ITEM

	yyvsc121: INTEGER
			-- Capacity of semantic value stack `yyvs121'

	yyvsp121: INTEGER
			-- Top of semantic value stack `yyvs121'

	yyspecial_routines121: KL_SPECIAL_ROUTINES [detachable ET_TYPE_CONSTRAINT_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE_CONSTRAINT_ITEM]

	yyvs122: SPECIAL [detachable ET_TYPE_CONSTRAINT_LIST]
			-- Stack for semantic values of type detachable ET_TYPE_CONSTRAINT_LIST

	yyvsc122: INTEGER
			-- Capacity of semantic value stack `yyvs122'

	yyvsp122: INTEGER
			-- Top of semantic value stack `yyvs122'

	yyspecial_routines122: KL_SPECIAL_ROUTINES [detachable ET_TYPE_CONSTRAINT_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE_CONSTRAINT_LIST]

	yyvs123: SPECIAL [detachable ET_TYPE_ITEM]
			-- Stack for semantic values of type detachable ET_TYPE_ITEM

	yyvsc123: INTEGER
			-- Capacity of semantic value stack `yyvs123'

	yyvsp123: INTEGER
			-- Top of semantic value stack `yyvs123'

	yyspecial_routines123: KL_SPECIAL_ROUTINES [detachable ET_TYPE_ITEM]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE_ITEM]

	yyvs124: SPECIAL [detachable ET_TYPE_LIST]
			-- Stack for semantic values of type detachable ET_TYPE_LIST

	yyvsc124: INTEGER
			-- Capacity of semantic value stack `yyvs124'

	yyvsp124: INTEGER
			-- Top of semantic value stack `yyvs124'

	yyspecial_routines124: KL_SPECIAL_ROUTINES [detachable ET_TYPE_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_TYPE_LIST]

	yyvs125: SPECIAL [detachable ET_VARIANT]
			-- Stack for semantic values of type detachable ET_VARIANT

	yyvsc125: INTEGER
			-- Capacity of semantic value stack `yyvs125'

	yyvsp125: INTEGER
			-- Top of semantic value stack `yyvs125'

	yyspecial_routines125: KL_SPECIAL_ROUTINES [detachable ET_VARIANT]
			-- Routines that ought to be in SPECIAL [detachable ET_VARIANT]

	yyvs126: SPECIAL [detachable ET_WHEN_PART]
			-- Stack for semantic values of type detachable ET_WHEN_PART

	yyvsc126: INTEGER
			-- Capacity of semantic value stack `yyvs126'

	yyvsp126: INTEGER
			-- Top of semantic value stack `yyvs126'

	yyspecial_routines126: KL_SPECIAL_ROUTINES [detachable ET_WHEN_PART]
			-- Routines that ought to be in SPECIAL [detachable ET_WHEN_PART]

	yyvs127: SPECIAL [detachable ET_WHEN_PART_LIST]
			-- Stack for semantic values of type detachable ET_WHEN_PART_LIST

	yyvsc127: INTEGER
			-- Capacity of semantic value stack `yyvs127'

	yyvsp127: INTEGER
			-- Top of semantic value stack `yyvs127'

	yyspecial_routines127: KL_SPECIAL_ROUTINES [detachable ET_WHEN_PART_LIST]
			-- Routines that ought to be in SPECIAL [detachable ET_WHEN_PART_LIST]

	yyvs128: SPECIAL [detachable ET_WRITABLE]
			-- Stack for semantic values of type detachable ET_WRITABLE

	yyvsc128: INTEGER
			-- Capacity of semantic value stack `yyvs128'

	yyvsp128: INTEGER
			-- Top of semantic value stack `yyvs128'

	yyspecial_routines128: KL_SPECIAL_ROUTINES [detachable ET_WRITABLE]
			-- Routines that ought to be in SPECIAL [detachable ET_WRITABLE]

feature {NONE} -- Constants

	yyFinal: INTEGER = 1737
			-- Termination state id

	yyFlag: INTEGER = -32768
			-- Most negative INTEGER

	yyNtbase: INTEGER = 139
			-- Number of tokens

	yyLast: INTEGER = 7240
			-- Upper bound of `yytable' and `yycheck'

	yyMax_token: INTEGER = 371
			-- Maximum token id
			-- (upper bound of `yytranslate'.)

	yyNsyms: INTEGER = 441
			-- Number of symbols
			-- (terminal and nonterminal)

feature -- User-defined features



feature -- Access

	system_processor: ET_SYSTEM_PROCESSOR
			-- System processor currently used

end
