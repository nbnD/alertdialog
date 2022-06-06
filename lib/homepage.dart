import 'package:alertdialog/alertItem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

 class _HomePageState extends State<HomePage> {
  String text = "Hello Dialog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Stateful Alert Dialog")),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text),
              ElevatedButton(
                  onPressed: () => showMyDialog(), child:const Text("Show Dialog"))
            ],
          ),
        ));
  }

  void showMyDialog(){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
           
            content:
                StatefulBuilder(// You need this, notice the parameters below:
                    builder: (BuildContext context, StateSetter setState) {
              return const  AlertItem();
            }));
      },
    ).then((value) {
      if (value != null) {
      setState(() {
        text=value;
      });
      }
    });
  }
  
}
