import 'package:application/main.dart';
import 'package:application/screens/firstscreen.dart';
import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  String groubby = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello from second"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            ListTile(
              title: Text("GTR"),
              leading: Image(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.-YSMsW1J-HhyqTJedIF8EAHaEr?w=276&h=180&c=7&r=0&o=5&pid=1.7"),
              ),
              trailing: Icon(Icons.car_crash),
            ),
            RadioListTile(
              title: Text("Love This car"),
              value: "car",
              groupValue: groubby,
              onChanged: (val) {
                setState(() {
                  groubby = val.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("I Don't Love This car"),
              value: "cars",
              groupValue: groubby,
              onChanged: (val) {
                setState(() {
                  groubby = val.toString();
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const MyFirstScreen();
                    },
                  ));
                });
              },
              child: const Text("go to First Screen"),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Mohammad();
                    },
                  ));
                });
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
