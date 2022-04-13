#tag Class
Protected Class TimeZoneMenu
Inherits DesktopPopupMenu
	#tag Event
		Sub Opening()
		  Dim TimeZones() As String = kTimeZones.Split(EndOfLine.CR)
		  For Each s As String In TimeZones
		    me.AddRow(s)
		    If s = InitialValue Then
		      me.SelectedRowIndex = me.LastAddedRowIndex
		    End If
		  Next s
		  
		  RaiseEvent Openning
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function TimeZone() As TimeZone
		  Return New TimeZone(me.SelectedRowValue)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Openning()
	#tag EndHook


	#tag Property, Flags = &h0
		InitialValue As String
	#tag EndProperty


	#tag Constant, Name = kTimeZones, Type = String, Dynamic = False, Default = \"Africa/Abidjan\rAfrica/Accra\rAfrica/Addis_Ababa\rAfrica/Algiers\rAfrica/Asmara\rAfrica/Asmera\rAfrica/Bamako\rAfrica/Bangui\rAfrica/Banjul\rAfrica/Bissau\rAfrica/Blantyre\rAfrica/Brazzaville\rAfrica/Bujumbura\rAfrica/Cairo\rAfrica/Casablanca\rAfrica/Ceuta\rAfrica/Conakry\rAfrica/Dakar\rAfrica/Dar_es_Salaam\rAfrica/Djibouti\rAfrica/Douala\rAfrica/El_Aaiun\rAfrica/Freetown\rAfrica/Gaborone\rAfrica/Harare\rAfrica/Johannesburg\rAfrica/Juba\rAfrica/Kampala\rAfrica/Khartoum\rAfrica/Kigali\rAfrica/Kinshasa\rAfrica/Lagos\rAfrica/Libreville\rAfrica/Lome\rAfrica/Luanda\rAfrica/Lubumbashi\rAfrica/Lusaka\rAfrica/Malabo\rAfrica/Maputo\rAfrica/Maseru\rAfrica/Mbabane\rAfrica/Mogadishu\rAfrica/Monrovia\rAfrica/Nairobi\rAfrica/Ndjamena\rAfrica/Niamey\rAfrica/Nouakchott\rAfrica/Ouagadougou\rAfrica/Porto-Novo\rAfrica/Sao_Tome\rAfrica/Timbuktu\rAfrica/Tripoli\rAfrica/Tunis\rAfrica/Windhoek\rAmerica/Adak\rAmerica/Anchorage\rAmerica/Anguilla\rAmerica/Antigua\rAmerica/Araguaina\rAmerica/Argentina/Buenos_Aires\rAmerica/Argentina/Catamarca\rAmerica/Argentina/ComodRivadavia\rAmerica/Argentina/Cordoba\rAmerica/Argentina/Jujuy\rAmerica/Argentina/La_Rioja\rAmerica/Argentina/Mendoza\rAmerica/Argentina/Rio_Gallegos\rAmerica/Argentina/Salta\rAmerica/Argentina/San_Juan\rAmerica/Argentina/San_Luis\rAmerica/Argentina/Tucuman\rAmerica/Argentina/Ushuaia\rAmerica/Aruba\rAmerica/Asuncion\rAmerica/Atikokan\rAmerica/Atka\rAmerica/Bahia\rAmerica/Bahia_Banderas\rAmerica/Barbados\rAmerica/Belem\rAmerica/Belize\rAmerica/Blanc-Sablon\rAmerica/Boa_Vista\rAmerica/Bogota\rAmerica/Boise\rAmerica/Buenos_Aires\rAmerica/Cambridge_Bay\rAmerica/Campo_Grande\rAmerica/Cancun\rAmerica/Caracas\rAmerica/Catamarca\rAmerica/Cayenne\rAmerica/Cayman\rAmerica/Chicago\rAmerica/Chihuahua\rAmerica/Coral_Harbour\rAmerica/Cordoba\rAmerica/Costa_Rica\rAmerica/Creston\rAmerica/Cuiaba\rAmerica/Curacao\rAmerica/Danmarkshavn\rAmerica/Dawson\rAmerica/Dawson_Creek\rAmerica/Denver\rAmerica/Detroit\rAmerica/Dominica\rAmerica/Edmonton\rAmerica/Eirunepe\rAmerica/El_Salvador\rAmerica/Ensenada\rAmerica/Fort_Nelson\rAmerica/Fort_Wayne\rAmerica/Fortaleza\rAmerica/Glace_Bay\rAmerica/Godthab\rAmerica/Goose_Bay\rAmerica/Grand_Turk\rAmerica/Grenada\rAmerica/Guadeloupe\rAmerica/Guatemala\rAmerica/Guayaquil\rAmerica/Guyana\rAmerica/Halifax\rAmerica/Havana\rAmerica/Hermosillo\rAmerica/Indiana/Indianapolis\rAmerica/Indiana/Knox\rAmerica/Indiana/Marengo\rAmerica/Indiana/Petersburg\rAmerica/Indiana/Tell_City\rAmerica/Indiana/Vevay\rAmerica/Indiana/Vincennes\rAmerica/Indiana/Winamac\rAmerica/Indianapolis\rAmerica/Inuvik\rAmerica/Iqaluit\rAmerica/Jamaica\rAmerica/Jujuy\rAmerica/Juneau\rAmerica/Kentucky/Louisville\rAmerica/Kentucky/Monticello\rAmerica/Knox_IN\rAmerica/Kralendijk\rAmerica/La_Paz\rAmerica/Lima\rAmerica/Los_Angeles\rAmerica/Louisville\rAmerica/Lower_Princes\rAmerica/Maceio\rAmerica/Managua\rAmerica/Manaus\rAmerica/Marigot\rAmerica/Martinique\rAmerica/Matamoros\rAmerica/Mazatlan\rAmerica/Mendoza\rAmerica/Menominee\rAmerica/Merida\rAmerica/Metlakatla\rAmerica/Mexico_City\rAmerica/Miquelon\rAmerica/Moncton\rAmerica/Monterrey\rAmerica/Montevideo\rAmerica/Montreal\rAmerica/Montserrat\rAmerica/Nassau\rAmerica/New_York\rAmerica/Nipigon\rAmerica/Nome\rAmerica/Noronha\rAmerica/North_Dakota/Beulah\rAmerica/North_Dakota/Center\rAmerica/North_Dakota/New_Salem\rAmerica/Nuuk\rAmerica/Ojinaga\rAmerica/Panama\rAmerica/Pangnirtung\rAmerica/Paramaribo\rAmerica/Phoenix\rAmerica/Port_of_Spain\rAmerica/Port-au-Prince\rAmerica/Porto_Acre\rAmerica/Porto_Velho\rAmerica/Puerto_Rico\rAmerica/Punta_Arenas\rAmerica/Rainy_River\rAmerica/Rankin_Inlet\rAmerica/Recife\rAmerica/Regina\rAmerica/Resolute\rAmerica/Rio_Branco\rAmerica/Rosario\rAmerica/Santa_Isabel\rAmerica/Santarem\rAmerica/Santiago\rAmerica/Santo_Domingo\rAmerica/Sao_Paulo\rAmerica/Scoresbysund\rAmerica/Shiprock\rAmerica/Sitka\rAmerica/St_Barthelemy\rAmerica/St_Johns\rAmerica/St_Kitts\rAmerica/St_Lucia\rAmerica/St_Thomas\rAmerica/St_Vincent\rAmerica/Swift_Current\rAmerica/Tegucigalpa\rAmerica/Thule\rAmerica/Thunder_Bay\rAmerica/Tijuana\rAmerica/Toronto\rAmerica/Tortola\rAmerica/Vancouver\rAmerica/Virgin\rAmerica/Whitehorse\rAmerica/Winnipeg\rAmerica/Yakutat\rAmerica/Yellowknife\rAntarctica/Casey\rAntarctica/Davis\rAntarctica/DumontDUrville\rAntarctica/Macquarie\rAntarctica/Mawson\rAntarctica/McMurdo\rAntarctica/Palmer\rAntarctica/Rothera\rAntarctica/South_Pole\rAntarctica/Syowa\rAntarctica/Troll\rAntarctica/Vostok\rArctic/Longyearbyen\rAsia/Aden\rAsia/Almaty\rAsia/Amman\rAsia/Anadyr\rAsia/Aqtau\rAsia/Aqtobe\rAsia/Ashgabat\rAsia/Ashkhabad\rAsia/Atyrau\rAsia/Baghdad\rAsia/Bahrain\rAsia/Baku\rAsia/Bangkok\rAsia/Barnaul\rAsia/Beirut\rAsia/Bishkek\rAsia/Brunei\rAsia/Calcutta\rAsia/Chita\rAsia/Choibalsan\rAsia/Chongqing\rAsia/Chungking\rAsia/Colombo\rAsia/Dacca\rAsia/Damascus\rAsia/Dhaka\rAsia/Dili\rAsia/Dubai\rAsia/Dushanbe\rAsia/Famagusta\rAsia/Gaza\rAsia/Harbin\rAsia/Hebron\rAsia/Ho_Chi_Minh\rAsia/Hong_Kong\rAsia/Hovd\rAsia/Irkutsk\rAsia/Istanbul\rAsia/Jakarta\rAsia/Jayapura\rAsia/Jerusalem\rAsia/Kabul\rAsia/Kamchatka\rAsia/Karachi\rAsia/Kashgar\rAsia/Kathmandu\rAsia/Katmandu\rAsia/Khandyga\rAsia/Kolkata\rAsia/Krasnoyarsk\rAsia/Kuala_Lumpur\rAsia/Kuching\rAsia/Kuwait\rAsia/Macao\rAsia/Macau\rAsia/Magadan\rAsia/Makassar\rAsia/Manila\rAsia/Muscat\rAsia/Nicosia\rAsia/Novokuznetsk\rAsia/Novosibirsk\rAsia/Omsk\rAsia/Oral\rAsia/Phnom_Penh\rAsia/Pontianak\rAsia/Pyongyang\rAsia/Qatar\rAsia/Qostanay\rAsia/Qyzylorda\rAsia/Rangoon\rAsia/Riyadh\rAsia/Saigon\rAsia/Sakhalin\rAsia/Samarkand\rAsia/Seoul\rAsia/Shanghai\rAsia/Singapore\rAsia/Srednekolymsk\rAsia/Taipei\rAsia/Tashkent\rAsia/Tbilisi\rAsia/Tehran\rAsia/Tel_Aviv\rAsia/Thimbu\rAsia/Thimphu\rAsia/Tokyo\rAsia/Tomsk\rAsia/Ujung_Pandang\rAsia/Ulaanbaatar\rAsia/Ulan_Bator\rAsia/Urumqi\rAsia/Ust-Nera\rAsia/Vientiane\rAsia/Vladivostok\rAsia/Yakutsk\rAsia/Yangon\rAsia/Yekaterinburg\rAsia/Yerevan\rAtlantic/Azores\rAtlantic/Bermuda\rAtlantic/Canary\rAtlantic/Cape_Verde\rAtlantic/Faeroe\rAtlantic/Faroe\rAtlantic/Jan_Mayen\rAtlantic/Madeira\rAtlantic/Reykjavik\rAtlantic/South_Georgia\rAtlantic/St_Helena\rAtlantic/Stanley\rAustralia/ACT\rAustralia/Adelaide\rAustralia/Brisbane\rAustralia/Broken_Hill\rAustralia/Canberra\rAustralia/Currie\rAustralia/Darwin\rAustralia/Eucla\rAustralia/Hobart\rAustralia/LHI\rAustralia/Lindeman\rAustralia/Lord_Howe\rAustralia/Melbourne\rAustralia/North\rAustralia/NSW\rAustralia/Perth\rAustralia/Queensland\rAustralia/South\rAustralia/Sydney\rAustralia/Tasmania\rAustralia/Victoria\rAustralia/West\rAustralia/Yancowinna\rBrazil/Acre\rBrazil/DeNoronha\rBrazil/East\rBrazil/West\rCanada/Atlantic\rCanada/Central\rCanada/Eastern\rCanada/Mountain\rCanada/Newfoundland\rCanada/Pacific\rCanada/Saskatchewan\rCanada/Yukon\rCET\rChile/Continental\rChile/EasterIsland\rCST6CDT\rCuba\rEET\rEgypt\rEire\rEST\rEST5EDT\rEtc/GMT\rEtc/GMT+0\rEtc/GMT+1\rEtc/GMT+10\rEtc/GMT+11\rEtc/GMT+12\rEtc/GMT+2\rEtc/GMT+3\rEtc/GMT+4\rEtc/GMT+5\rEtc/GMT+6\rEtc/GMT+7\rEtc/GMT+8\rEtc/GMT+9\rEtc/GMT0\rEtc/GMT-0\rEtc/GMT-1\rEtc/GMT-10\rEtc/GMT-11\rEtc/GMT-12\rEtc/GMT-13\rEtc/GMT-14\rEtc/GMT-2\rEtc/GMT-3\rEtc/GMT-4\rEtc/GMT-5\rEtc/GMT-6\rEtc/GMT-7\rEtc/GMT-8\rEtc/GMT-9\rEtc/Greenwich\rEtc/UCT\rEtc/Universal\rEtc/UTC\rEtc/Zulu\rEurope/Amsterdam\rEurope/Andorra\rEurope/Astrakhan\rEurope/Athens\rEurope/Belfast\rEurope/Belgrade\rEurope/Berlin\rEurope/Bratislava\rEurope/Brussels\rEurope/Bucharest\rEurope/Budapest\rEurope/Busingen\rEurope/Chisinau\rEurope/Copenhagen\rEurope/Dublin\rEurope/Gibraltar\rEurope/Guernsey\rEurope/Helsinki\rEurope/Isle_of_Man\rEurope/Istanbul\rEurope/Jersey\rEurope/Kaliningrad\rEurope/Kiev\rEurope/Kirov\rEurope/Lisbon\rEurope/Ljubljana\rEurope/London\rEurope/Luxembourg\rEurope/Madrid\rEurope/Malta\rEurope/Mariehamn\rEurope/Minsk\rEurope/Monaco\rEurope/Moscow\rEurope/Nicosia\rEurope/Oslo\rEurope/Paris\rEurope/Podgorica\rEurope/Prague\rEurope/Riga\rEurope/Rome\rEurope/Samara\rEurope/San_Marino\rEurope/Sarajevo\rEurope/Saratov\rEurope/Simferopol\rEurope/Skopje\rEurope/Sofia\rEurope/Stockholm\rEurope/Tallinn\rEurope/Tirane\rEurope/Tiraspol\rEurope/Ulyanovsk\rEurope/Uzhgorod\rEurope/Vaduz\rEurope/Vatican\rEurope/Vienna\rEurope/Vilnius\rEurope/Volgograd\rEurope/Warsaw\rEurope/Zagreb\rEurope/Zaporozhye\rEurope/Zurich\rFactory\rGB\rGB-Eire\rGMT\rGMT+0\rGMT0\rGMT-0\rGreenwich\rHongkong\rHST\rIceland\rIndian/Antananarivo\rIndian/Chagos\rIndian/Christmas\rIndian/Cocos\rIndian/Comoro\rIndian/Kerguelen\rIndian/Mahe\rIndian/Maldives\rIndian/Mauritius\rIndian/Mayotte\rIndian/Reunion\rIran\rIsrael\rJamaica\rJapan\rKwajalein\rLibya\rMET\rMexico/BajaNorte\rMexico/BajaSur\rMexico/General\rMST\rMST7MDT\rNavajo\rNZ\rNZ-CHAT\rPacific/Apia\rPacific/Auckland\rPacific/Bougainville\rPacific/Chatham\rPacific/Chuuk\rPacific/Easter\rPacific/Efate\rPacific/Enderbury\rPacific/Fakaofo\rPacific/Fiji\rPacific/Funafuti\rPacific/Galapagos\rPacific/Gambier\rPacific/Guadalcanal\rPacific/Guam\rPacific/Honolulu\rPacific/Johnston\rPacific/Kanton\rPacific/Kiritimati\rPacific/Kosrae\rPacific/Kwajalein\rPacific/Majuro\rPacific/Marquesas\rPacific/Midway\rPacific/Nauru\rPacific/Niue\rPacific/Norfolk\rPacific/Noumea\rPacific/Pago_Pago\rPacific/Palau\rPacific/Pitcairn\rPacific/Pohnpei\rPacific/Ponape\rPacific/Port_Moresby\rPacific/Rarotonga\rPacific/Saipan\rPacific/Samoa\rPacific/Tahiti\rPacific/Tarawa\rPacific/Tongatapu\rPacific/Truk\rPacific/Wake\rPacific/Wallis\rPacific/Yap\rPoland\rPortugal\rPRC\rPST8PDT\rROC\rROK\rSingapore\rTurkey\rUCT\rUniversal\rUS/Alaska\rUS/Aleutian\rUS/Arizona\rUS/Central\rUS/Eastern\rUS/East-Indiana\rUS/Hawaii\rUS/Indiana-Starke\rUS/Michigan\rUS/Mountain\rUS/Pacific\rUS/Samoa\rUTC\rWET\rW-SU\rZulu\r", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="250"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedRowIndex"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
