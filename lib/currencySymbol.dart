// Map ที่เก็บตัวย่อของประเทศ (ISO 3166-1 alpha-2) และ Emoji ธงชาติ
const List<String> currency=[
  "USD",
  "AED",
  "AFN",
  "ALL",
  "AMD",
  "ANG",
  "AOA",
  "ARS",
  "AUD",
  "AWG",
  "AZN",
  "BAM",
  "BBD",
  "BDT",
  "BGN",
  "BHD",
  "BIF",
  "BMD",
  "BND",
  "BOB",
  "BRL",
  "BSD",
  "BTN",
  "BWP",
  "BYN",
  "BZD",
  "CAD",
  "CDF",
  "CHF",
  "CLP",
  "CNY",
  "COP",
  "CRC",
  "CUP",
  "CVE",
  "CZK",
  "DJF",
  "DKK",
  "DOP",
  "DZD",
  "EGP",
  "ERN",
  "ETB",
  "EUR",
  "FJD",
  "FKP",
  "FOK",
  "GBP",
  "GEL",
  "GGP",
  "GHS",
  "GIP",
  "GMD",
  "GNF",
  "GTQ",
  "GYD",
  "HKD",
  "HNL",
  "HRK",
  "HTG",
  "HUF",
  "IDR",
  "ILS",
  "IMP",
  "INR",
  "IQD",
  "IRR",
  "ISK",
  "JEP",
  "JMD",
  "JOD",
  "JPY",
  "KES",
  "KGS",
  "KHR",
  "KID",
  "KMF",
  "KRW",
  "KWD",
  "KYD",
  "KZT",
  "LAK",
  "LBP",
  "LKR",
  "LRD",
  "LSL",
  "LYD",
  "MAD",
  "MDL",
  "MGA",
  "MKD",
  "MMK",
  "MNT",
  "MOP",
  "MRU",
  "MUR",
  "MVR",
  "MWK",
  "MXN",
  "MYR",
  "MZN",
  "NAD",
  "NGN",
  "NIO",
  "NOK",
  "NPR",
  "NZD",
  "OMR",
  "PAB",
  "PEN",
  "PGK",
  "PHP",
  "PKR",
  "PLN",
  "PYG",
  "QAR",
  "RON",
  "RSD",
  "RUB",
  "RWF",
  "SAR",
  "SBD",
  "SCR",
  "SDG",
  "SEK",
  "SGD",
  "SHP",
  "SLE",
  "SLL",
  "SOS",
  "SRD",
  "SSP",
  "STN",
  "SYP",
  "SZL",
  "THB",
  "TJS",
  "TMT",
  "TND",
  "TOP",
  "TRY",
  "TTD",
  "TVD",
  "TWD",
  "TZS",
  "UAH",
  "UGX",
  "UYU",
  "UZS",
  "VES",
  "VND",
  "VUV",
  "WST",
  "XAF",
  "XCD",
  "XCG",
  "XDR",
  "XOF",
  "XPF",
  "YER",
  "ZAR",
  "ZMW",
  "ZWL"
];
const Map<String, String> currencyToFlag = {
  "USD": "🇺🇸", // United States Dollar
  "AED": "🇦🇪", // United Arab Emirates Dirham
  "AFN": "🇦🇫", // Afghan Afghani
  "ALL": "🇦🇱", // Albanian Lek
  "AMD": "🇦🇲", // Armenian Dram
  "ANG": "🇸🇽", // Netherlands Antillean Guilder (Sint Maarten/Curaçao)
  "AOA": "🇦🇴", // Angolan Kwanza
  "ARS": "🇦🇷", // Argentine Peso
  "AUD": "🇦🇺", // Australian Dollar
  "AWG": "🇦🇼", // Aruban Florin
  "AZN": "🇦🇿", // Azerbaijani Manat
  "BAM": "🇧🇦", // Bosnia and Herzegovina Convertible Mark
  "BBD": "🇧🇧", // Barbadian Dollar
  "BDT": "🇧🇩", // Bangladeshi Taka
  "BGN": "🇧🇬", // Bulgarian Lev
  "BHD": "🇧🇭", // Bahraini Dinar
  "BIF": "🇧🇮", // Burundian Franc
  "BMD": "🇧🇲", // Bermudian Dollar
  "BND": "🇧🇳", // Brunei Dollar
  "BOB": "🇧🇴", // Bolivian Boliviano
  "BRL": "🇧🇷", // Brazilian Real
  "BSD": "🇧🇸", // Bahamian Dollar
  "BTN": "�🇹", // Bhutanese Ngultrum
  "BWP": "🇧🇼", // Botswana Pula
  "BYN": "🇧🇾", // Belarusian Ruble
  "BZD": "🇧🇿", // Belize Dollar
  "CAD": "🇨🇦", // Canadian Dollar
  "CDF": "🇨🇩", // Congolese Franc (Democratic Republic of the Congo)
  "CHF": "🇨🇭", // Swiss Franc
  "CLP": "🇨🇱", // Chilean Peso
  "CNY": "🇨🇳", // Chinese Yuan
  "COP": "🇨🇴", // Colombian Peso
  "CRC": "🇨🇷", // Costa Rican Colón
  "CUP": "🇨🇺", // Cuban Peso
  "CVE": "🇨🇻", // Cape Verdean Escudo
  "CZK": "🇨🇿", // Czech Koruna
  "DJF": "🇩🇯", // Djiboutian Franc
  "DKK": "🇩🇰", // Danish Krone
  "DOP": "🇩🇴", // Dominican Peso
  "DZD": "🇩🇿", // Algerian Dinar
  "EGP": "🇪🇬", // Egyptian Pound
  "ERN": "🇪🇷", // Eritrean Nakfa
  "ETB": "🇪🇹", // Ethiopian Birr
  "EUR": "🇪🇺", // Euro (European Union)
  "FJD": "🇫🇯", // Fijian Dollar
  "FKP": "🇫🇰", // Falkland Islands Pound
  "FOK": "🇫🇴", // Faroese Króna
  "GBP": "🇬🇧", // Pound Sterling (United Kingdom)
  "GEL": "🇬🇪", // Georgian Lari
  "GGP": "🇬🇬", // Guernsey Pound
  "GHS": "🇬🇭", // Ghanaian Cedi
  "GIP": "🇬🇮", // Gibraltar Pound
  "GMD": "🇬🇲", // Gambian Dalasi
  "GNF": "🇬🇳", // Guinean Franc
  "GTQ": "🇬🇹", // Guatemalan Quetzal
  "GYD": "🇬🇾", // Guyanese Dollar
  "HKD": "🇭🇰", // Hong Kong Dollar
  "HNL": "🇭🇳", // Honduran Lempira
  "HRK": "🇭🇷", // Croatian Kuna
  "HTG": "🇭🇹", // Haitian Gourde
  "HUF": "🇭🇺", // Hungarian Forint
  "IDR": "🇮🇩", // Indonesian Rupiah
  "ILS": "🇮🇱", // Israeli New Shekel
  "IMP": "🇮🇲", // Isle of Man Pound
  "INR": "🇮🇳", // Indian Rupee
  "IQD": "🇮🇶", // Iraqi Dinar
  "IRR": "🇮🇷", // Iranian Rial
  "ISK": "🇮🇸", // Icelandic Króna
  "JEP": "🇯🇪", // Jersey Pound
  "JMD": "🇯🇲", // Jamaican Dollar
  "JOD": "🇯🇴", // Jordanian Dinar
  "JPY": "🇯🇵", // Japanese Yen
  "KES": "🇰🇪", // Kenyan Shilling
  "KGS": "🇰🇬", // Kyrgyzstani Som
  "KHR": "🇰🇭", // Cambodian Riel
  "KID": "🇰🇮", // Kiribati Dollar
  "KMF": "🇰🇲", // Comorian Franc
  "KRW": "🇰🇷", // South Korean Won
  "KWD": "🇰🇼", // Kuwaiti Dinar
  "KYD": "🇰🇾", // Cayman Islands Dollar
  "KZT": "🇰🇿", // Kazakhstani Tenge
  "LAK": "🇱🇦", // Lao Kip
  "LBP": "🇱🇧", // Lebanese Pound
  "LKR": "🇱🇰", // Sri Lankan Rupee
  "LRD": "🇱🇷", // Liberian Dollar
  "LSL": "🇱🇸", // Lesotho Loti
  "LYD": "🇱🇾", // Libyan Dinar
  "MAD": "🇲🇦", // Moroccan Dirham
  "MDL": "🇲🇩", // Moldovan Leu
  "MGA": "🇲🇬", // Malagasy Ariary
  "MKD": "🇲🇰", // Macedonian Denar
  "MMK": "🇲🇲", // Myanmar Kyat
  "MNT": "🇲🇳", // Mongolian Tögrög
  "MOP": "🇲🇴", // Macanese Pataca
  "MRU": "🇲🇷", // Mauritanian Ouguiya
  "MUR": "🇲🇺", // Mauritian Rupee
  "MVR": "🇲🇻", // Maldivian Rufiyaa
  "MWK": "🇲🇼", // Malawian Kwacha
  "MXN": "🇲🇽", // Mexican Peso
  "MYR": "🇲🇾", // Malaysian Ringgit
  "MZN": "🇲🇿", // Mozambican Metical
  "NAD": "🇳🇦", // Namibian Dollar
  "NGN": "🇳🇬", // Nigerian Naira
  "NIO": "🇳🇮", // Nicaraguan Córdoba
  "NOK": "🇳🇴", // Norwegian Krone
  "NPR": "🇳🇵", // Nepalese Rupee
  "NZD": "🇳🇿", // New Zealand Dollar
  "OMR": "🇴🇲", // Omani Rial
  "PAB": "🇵🇦", // Panamanian Balboa
  "PEN": "🇵🇪", // Peruvian Sol
  "PGK": "🇵🇬", // Papua New Guinean Kina
  "PHP": "🇵🇭", // Philippine Peso
  "PKR": "🇵🇰", // Pakistani Rupee
  "PLN": "🇵🇱", // Polish Złoty
  "PYG": "🇵🇾", // Paraguayan Guaraní
  "QAR": "🇶🇦", // Qatari Riyal
  "RON": "🇷🇴", // Romanian Leu
  "RSD": "🇷🇸", // Serbian Dinar
  "RUB": "🇷🇺", // Russian Ruble
  "RWF": "🇷🇼", // Rwandan Franc
  "SAR": "🇸🇦", // Saudi Riyal
  "SBD": "🇸🇧", // Solomon Islands Dollar
  "SCR": "🇸🇨", // Seychellois Rupee
  "SDG": "🇸🇩", // Sudanese Pound
  "SEK": "🇸🇪", // Swedish Krona
  "SGD": "🇸🇬", // Singapore Dollar
  "SHP": "🇸🇭", // Saint Helena Pound
  "SLE": "🇸🇱", // Sierra Leonean Leone (new)
  "SLL": "🇸🇱", // Sierra Leonean Leone (old) - ใช้ธงเดียวกัน
  "SOS": "🇸🇴", // Somali Shilling
  "SRD": "🇸🇷", // Surinamese Dollar
  "SSP": "🇸🇸", // South Sudanese Pound
  "STN": "🇸🇹", // São Tomé and Príncipe Dobra
  "SYP": "🇸🇾", // Syrian Pound
  "SZL": "🇸🇿", // Swazi Lilangeni
  "THB": "🇹🇭", // Thai Baht
  "TJS": "🇹🇯", // Tajikistani Somoni
  "TMT": "🇹🇲", // Turkmenistan Manat
  "TND": "🇹🇳", // Tunisian Dinar
  "TOP": "🇹🇴", // Tongan Paʻanga
  "TRY": "🇹🇷", // Turkish Lira
  "TTD": "🇹🇹", // Trinidad and Tobago Dollar
  "TVD": "🇹🇻", // Tuvaluan Dollar
  "TWD": "🇹🇼", // New Taiwan Dollar
  "TZS": "🇹🇿", // Tanzanian Shilling
  "UAH": "🇺🇦", // Ukrainian Hryvnia
  "UGX": "🇺🇬", // Ugandan Shilling
  "UYU": "🇺🇾", // Uruguayan Peso
  "UZS": "🇺🇿", // Uzbekistani Soʻm
  "VES": "🇻🇪", // Venezuelan Bolívar Soberano
  "VND": "🇻🇳", // Vietnamese Đồng
  "VUV": "🇻🇺", // Vanuatu Vatu
  "WST": "🇼🇸", // Samoan Tala
  "XAF": "🇨🇲", // Central African CFA Franc (Cameroon - ตัวแทน)
  "XCD": "🇦🇬", // East Caribbean Dollar (Antigua and Barbuda - ตัวแทน)
  "XDR": "🌐", // Special Drawing Rights (IMF) - ใช้สัญลักษณ์โลก
  "XOF": "🇧🇯", // West African CFA Franc (Benin - ตัวแทน)
  "XPF": "🇵🇫", // CFP Franc (French Polynesia - ตัวแทน)
  "YER": "🇾🇪", // Yemeni Rial
  "ZAR": "🇿🇦", // South African Rand
  "ZMW": "🇿🇲", // Zambian Kwacha
  "ZWL": "🇿🇼", // Zimbabwean Dollar
};