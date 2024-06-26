import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'my_second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text(
          "Chile",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
      appBar: AppBar(title: const Text("Thanapong Chanyachai",style: TextStyle(fontSize: 40, color: Colors.blue),),),
      body: Center(
        child: Column(
          children: [
            const Text("Home Page", style: TextStyle(fontSize: 40, color: Colors.red),),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MySecondPage()
                    ));
              }, child: const Text("Next Page ->>"),),
          ],
        )
      ),
    );
  }
}
