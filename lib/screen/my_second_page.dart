import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

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
            const Text("Second Page", style: TextStyle(fontSize: 40, color: Colors.purple),),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage()
                    ));
              }, child: const Text("Home Page"),),
          ],
        )
      ),
    );
  }
}