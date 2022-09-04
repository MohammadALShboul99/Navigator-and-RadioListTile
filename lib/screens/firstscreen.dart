import 'package:application/main.dart';
import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String mytestgroupValue = "";
  String mytestgroupValue2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello from first"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text("Lexis"),
              leading: Image(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.gar4-sAbRidEk1K1EulOEQHaD4?w=345&h=180&c=7&r=0&o=5&pid=1.7"),
              ),
              trailing: Icon(Icons.car_crash),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Mohammad();
                    },
                  ));
                });
              },
              child: const Text("go to main"),
            ),
          ],
        ),
      ),
    );
  }
}
