import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Currency Exchange",style: TextStyle(fontWeight: FontWeight.bold )),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 54, 31, 0)),
                    height: 200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("THB",style: TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),
                              Text("THB",style: TextStyle(fontSize: 40,color:Colors.white),textAlign: TextAlign.center,),
                              Text("THB",style: TextStyle(fontSize: 40,color:Colors.white),textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 70, 10, 70),
                            child: Column(
                              children: [
                                Text("To",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("THB",style: TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),
                              Text("THB",style: TextStyle(fontSize: 40,color:Colors.white),textAlign: TextAlign.center,),
                              Text("THB",style: TextStyle(fontSize: 40,color:Colors.white),textAlign: TextAlign.center,)
                            ],
                          ),
                        )
                        
                      ],
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(color: const Color.fromARGB(255, 54, 31, 0)),
                  //   height: 150,
                  // )
                ],
              ),
            ),
          ),
        )
      );
  }
}