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
String getFlagEmojiForCurrency(String currencyCode) {
  switch (currencyCode) {
    case "USD": return "🇺🇸"; // United States Dollar
    case "AED": return "🇦🇪"; // United Arab Emirates Dirham
    case "AFN": return "🇦🇫"; // Afghan Afghani
    case "ALL": return "🇦🇱"; // Albanian Lek
    case "AMD": return "🇦🇲"; // Armenian Dram
    case "ANG": return "🇸🇽"; // Netherlands Antillean Guilder (Sint Maarten/Curaçao)
    case "AOA": return "🇦🇴"; // Angolan Kwanza
    case "ARS": return "🇦🇷"; // Argentine Peso
    case "AUD": return "🇦🇺"; // Australian Dollar
    case "AWG": return "🇦🇼"; // Aruban Florin
    case "AZN": return "🇦🇿"; // Azerbaijani Manat
    case "BAM": return "🇧🇦"; // Bosnia and Herzegovina Convertible Mark
    case "BBD": return "�🇧"; // Barbadian Dollar
    case "BDT": return "🇧🇩"; // Bangladeshi Taka
    case "BGN": return "🇧🇬"; // Bulgarian Lev
    case "BHD": return "🇧🇭"; // Bahraini Dinar
    case "BIF": return "🇧🇮"; // Burundian Franc
    case "BMD": return "🇧🇲"; // Bermudian Dollar
    case "BND": return "🇧🇳"; // Brunei Dollar
    case "BOB": return "🇧🇴"; // Bolivian Boliviano
    case "BRL": return "🇧🇷"; // Brazilian Real
    case "BSD": return "🇧🇸"; // Bahamian Dollar
    case "BTN": return "🇧🇹"; // Bhutanese Ngultrum
    case "BWP": return "🇧🇼"; // Botswana Pula
    case "BYN": return "🇧🇾"; // Belarusian Ruble
    case "BZD": return "🇧🇿"; // Belize Dollar
    case "CAD": return "🇨🇦"; // Canadian Dollar
    case "CDF": return "🇨🇩"; // Congolese Franc (Democratic Republic of the Congo)
    case "CHF": return "🇨🇭"; // Swiss Franc
    case "CLP": return "🇨🇱"; // Chilean Peso
    case "CNY": return "🇨🇳"; // Chinese Yuan
    case "COP": return "🇨🇴"; // Colombian Peso
    case "CRC": return "🇨🇷"; // Costa Rican Colón
    case "CUP": return "🇨🇺"; // Cuban Peso
    case "CVE": return "🇨🇻"; // Cape Verdean Escudo
    case "CZK": return "🇨🇿"; // Czech Koruna
    case "DJF": return "🇩🇯"; // Djiboutian Franc
    case "DKK": return "🇩🇰"; // Danish Krone
    case "DOP": return "🇩🇴"; // Dominican Peso
    case "DZD": return "🇩🇿"; // Algerian Dinar
    case "EGP": return "🇪🇬"; // Egyptian Pound
    case "ERN": return "🇪🇷"; // Eritrean Nakfa
    case "ETB": return "🇪🇹"; // Ethiopian Birr
    case "EUR": return "🇪🇺"; // Euro (European Union)
    case "FJD": return "🇫🇯"; // Fijian Dollar
    case "FKP": return "🇫🇰"; // Falkland Islands Pound
    case "FOK": return "🇫🇴"; // Faroese Króna
    case "GBP": return "🇬🇧"; // Pound Sterling (United Kingdom)
    case "GEL": return "🇬🇪"; // Georgian Lari
    case "GGP": return "🇬🇬"; // Guernsey Pound
    case "GHS": return "🇬🇭"; // Ghanaian Cedi
    case "GIP": return "🇬🇮"; // Gibraltar Pound
    case "GMD": return "🇬🇲"; // Gambian Dalasi
    case "GNF": return "🇬🇳"; // Guinean Franc
    case "GTQ": return "🇬🇹"; // Guatemalan Quetzal
    case "GYD": return "🇬🇾"; // Guyanese Dollar
    case "HKD": return "🇭🇰"; // Hong Kong Dollar
    case "HNL": return "🇭🇳"; // Honduran Lempira
    case "HRK": return "🇭🇷"; // Croatian Kuna
    case "HTG": return "🇭🇹"; // Haitian Gourde
    case "HUF": return "🇭🇺"; // Hungarian Forint
    case "IDR": return "🇮🇩"; // Indonesian Rupiah
    case "ILS": return "🇮🇱"; // Israeli New Shekel
    case "IMP": return "🇮🇲"; // Isle of Man Pound
    case "INR": return "🇮🇳"; // Indian Rupee
    case "IQD": return "🇮🇶"; // Iraqi Dinar
    case "IRR": return "🇮🇷"; // Iranian Rial
    case "ISK": return "🇮🇸"; // Icelandic Króna
    case "JEP": return "🇯🇪"; // Jersey Pound
    case "JMD": return "🇯🇲"; // Jamaican Dollar
    case "JOD": return "🇯🇴"; // Jordanian Dinar
    case "JPY": return "🇯🇵"; // Japanese Yen
    case "KES": return "🇰🇪"; // Kenyan Shilling
    case "KGS": return "🇰🇬"; // Kyrgyzstani Som
    case "KHR": return "🇰🇭"; // Cambodian Riel
    case "KID": return "🇰🇮"; // Kiribati Dollar
    case "KMF": return "🇰🇲"; // Comorian Franc
    case "KRW": return "🇰🇷"; // South Korean Won
    case "KWD": return "🇰🇼"; // Kuwaiti Dinar
    case "KYD": return "🇰🇾"; // Cayman Islands Dollar
    case "KZT": return "🇰🇿"; // Kazakhstani Tenge
    case "LAK": return "🇱🇦"; // Lao Kip
    case "LBP": return "🇱🇧"; // Lebanese Pound
    case "LKR": return "🇱🇰"; // Sri Lankan Rupee
    case "LRD": return "🇱🇷"; // Liberian Dollar
    case "LSL": return "🇱🇸"; // Lesotho Loti
    case "LYD": return "🇱🇾"; // Libyan Dinar
    case "MAD": return "🇲🇦"; // Moroccan Dirham
    case "MDL": return "🇲🇩"; // Moldovan Leu
    case "MGA": return "🇲🇬"; // Malagasy Ariary
    case "MKD": return "🇲🇰"; // Macedonian Denar
    case "MMK": return "🇲🇲"; // Myanmar Kyat
    case "MNT": return "🇲🇳"; // Mongolian Tögrög
    case "MOP": return "🇲🇴"; // Macanese Pataca
    case "MRU": return "🇲🇷"; // Mauritanian Ouguiya
    case "MUR": return "🇲🇺"; // Mauritian Rupee
    case "MVR": return "🇲🇻"; // Maldivian Rufiyaa
    case "MWK": return "🇲🇼"; // Malawian Kwacha
    case "MXN": return "🇲🇽"; // Mexican Peso
    case "MYR": return "🇲🇾"; // Malaysian Ringgit
    case "MZN": return "🇲🇿"; // Mozambican Metical
    case "NAD": return "🇳🇦"; // Namibian Dollar
    case "NGN": return "🇳🇬"; // Nigerian Naira
    case "NIO": return "🇳🇮"; // Nicaraguan Córdoba
    case "NOK": return "🇳🇴"; // Norwegian Krone
    case "NPR": return "🇳🇵"; // Nepalese Rupee
    case "NZD": return "🇳🇿"; // New Zealand Dollar
    case "OMR": return "🇴🇲"; // Omani Rial
    case "PAB": return "🇵🇦"; // Panamanian Balboa
    case "PEN": return "🇵🇪"; // Peruvian Sol
    case "PGK": return "🇵🇬"; // Papua New Guinean Kina
    case "PHP": return "🇵🇭"; // Philippine Peso
    case "PKR": return "🇵🇰"; // Pakistani Rupee
    case "PLN": return "🇵🇱"; // Polish Złoty
    case "PYG": return "🇵🇾"; // Paraguayan Guaraní
    case "QAR": return "🇶🇦"; // Qatari Riyal
    case "RON": return "🇷🇴"; // Romanian Leu
    case "RSD": return "🇷🇸"; // Serbian Dinar
    case "RUB": return "🇷🇺"; // Russian Ruble
    case "RWF": return "🇷🇼"; // Rwandan Franc
    case "SAR": return "🇸🇦"; // Saudi Riyal
    case "SBD": return "🇸🇧"; // Solomon Islands Dollar
    case "SCR": return "🇸🇨"; // Seychellois Rupee
    case "SDG": return "🇸🇩"; // Sudanese Pound
    case "SEK": return "🇸🇪"; // Swedish Krona
    case "SGD": return "🇸🇬"; // Singapore Dollar
    case "SHP": return "🇸🇭"; // Saint Helena Pound
    case "SLE": return "🇸🇱"; // Sierra Leonean Leone (new)
    case "SLL": return "🇸🇱"; // Sierra Leonean Leone (old) - Uses same flag
    case "SOS": return "🇸🇴"; // Somali Shilling
    case "SRD": return "🇸🇷"; // Surinamese Dollar
    case "SSP": return "🇸🇸"; // South Sudanese Pound
    case "STN": return "🇸🇹"; // São Tomé and Príncipe Dobra
    case "SYP": return "🇸🇾"; // Syrian Pound
    case "SZL": return "🇸🇿"; // Swazi Lilangeni
    case "THB": return "🇹🇭"; // Thai Baht
    case "TJS": return "🇹🇯"; // Tajikistani Somoni
    case "TMT": return "🇹🇲"; // Turkmenistan Manat
    case "TND": return "🇹🇳"; // Tunisian Dinar
    case "TOP": return "🇹🇴"; // Tongan Paʻanga
    case "TRY": return "🇹🇷"; // Turkish Lira
    case "TTD": return "🇹🇹"; // Trinidad and Tobago Dollar
    case "TVD": return "🇹🇻"; // Tuvaluan Dollar
    case "TWD": return "🇹🇼"; // New Taiwan Dollar
    case "TZS": return "🇹🇿"; // Tanzanian Shilling
    case "UAH": return "🇺🇦"; // Ukrainian Hryvnia
    case "UGX": return "🇺🇬"; // Ugandan Shilling
    case "UYU": return "🇺🇾"; // Uruguayan Peso
    case "UZS": return "🇺🇿"; // Uzbekistani Soʻm
    case "VES": return "🇻🇪"; // Venezuelan Bolívar Soberano
    case "VND": return "🇻🇳"; // Vietnamese Đồng
    case "VUV": return "🇻🇺"; // Vanuatu Vatu
    case "WST": return "🇼🇸"; // Samoan Tala
    case "XAF": return "🇨🇲"; // Central African CFA Franc (Cameroon - Representative)
    case "XCD": return "🇦🇬"; // East Caribbean Dollar (Antigua and Barbuda - Representative)
    case "XDR": return "🌐"; // Special Drawing Rights (IMF) - Uses globe symbol
    case "XOF": return "🇧🇯"; // West African CFA Franc (Benin - Representative)
    case "XPF": return "🇵🇫"; // CFP Franc (French Polynesia - Representative)
    case "YER": return "🇾🇪"; // Yemeni Rial
    case "ZAR": return "🇿🇦"; // South African Rand
    case "ZMW": return "🇿🇲"; // Zambian Kwacha
    case "ZWL": return "🇿🇼"; // Zimbabwean Dollar
    default:
      return '❓'; // Return a question mark emoji for unknown currencies
  }
}