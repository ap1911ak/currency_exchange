import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ExchangeRate.dart';
import 'currencySymbol.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 154, 21),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ExchangeRate? _dataFromAPI;
  var from = "THB";
  var to = "JPY";
  var value = 1.0;
  double? convertedValue;

  final TextEditingController valueController = TextEditingController(
    text: "1",
  );

  Future<ExchangeRate> getExchangeRate(String from, String to) async {
    print("getExchangeRate");

    var apiKey = "077cf9a4cc9f0bb8d89a2bde";
    var url = "https://v6.exchangerate-api.com/v6/$apiKey/pair/$from/$to";
    var response = await http.get(Uri.parse(url));

    _dataFromAPI = exchangeRateFromJson(response.body);
    return _dataFromAPI!;
    // print(_dataFromAPI!.baseCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Currency Exchange",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: getExchangeRate(from, to),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var result = snapshot.data;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // From currency dropdown
                DropdownButton<String>(
                  value: from,
                  items: currency.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text("${getFlagEmojiForCurrency(value)} $value"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      from = newValue!;
                    });
                  },
                ),
                // To currency dropdown
                DropdownButton<String>(
                  value: to,
                  items: currency.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text("${getFlagEmojiForCurrency(value)} $value"),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      to = newValue!;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextField(
                  controller: valueController,
                   keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Amount",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value = double.tryParse(valueController.text) ?? 1.0;
                      convertedValue = value * result.conversionRate;
                    });
                  },
                  child: Text("Convert"),
                ),
                SizedBox(height: 20),
                if (convertedValue != null)
                  Text(
                    "$value $from = ${convertedValue!.toStringAsFixed(2)} $to",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              ],
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
    // body: FutureBuilder(
    //   future: getExchangeRate(),
    //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //       if(snapshot.connectionState == ConnectionState.done){
    //         var result = snapshot.data;

    //         var conversionRates = result.conversionRate;

    //         var to = result.targetCode;
    //         return ListView(
    //           children: [
    //             ListTile(
    //               title: Text("Base Currency: ${result.baseCode}"),
    //             ),
    //              ListTile(
    //               title: Text("Exchange Rate to $to: ${conversionRates.toString()}"),
    //             ),
    //           ],
    //         );
    //       }
    //       return LinearProgressIndicator();

    //   },)
    ;
  }
}
