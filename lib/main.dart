import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ExchangeRate.dart';
void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHomePage(),
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 154, 21)),)
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
  @override
  void initState(){
    super.initState();
    getExchangeRate();
  }
Future <ExchangeRate> getExchangeRate() async{
  print("getExchangeRate");
  var from="USD";
  var to="THB";
  
  var apiKey = "077cf9a4cc9f0bb8d89a2bde";
  var url ="https://v6.exchangerate-api.com/v6/$apiKey/latest/$from";
  var response =await http.get(Uri.parse(url));
  
    _dataFromAPI = exchangeRateFromJson(response.body);
  return _dataFromAPI!;
  // print(_dataFromAPI!.baseCode);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Currency Exchange",style: TextStyle(fontWeight: FontWeight.bold )),
        ),
        body: FutureBuilder(
          future: getExchangeRate(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                var result = snapshot.data;
                
                var conversionRates = result.conversionRates;
                var to = "USD";
                return ListView(
                  children: [
                    ListTile(
                      title: Text("Base Currency: ${result.baseCode}"),
                    ),
                     ListTile(
                      title: Text("Exchange Rate to $to: ${conversionRates[to]}"),
                    ),
                  ],
                );
              }
              return LinearProgressIndicator();

          },)
      );
  }
}