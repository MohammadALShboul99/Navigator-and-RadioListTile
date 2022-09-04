import 'package:application/screens/firstscreen.dart';
import 'package:application/screens/secondscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Mohammad(),
  ));
}

class Mohammad extends StatelessWidget {
  const Mohammad({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // NetworkImage pic1 = NetworkImage(
  //     "https://th.bing.com/th/id/OIP.Xycgvm9NBrbKrM8VLWeLZwHaFj?w=231&h=180&c=7&r=0&o=5&pid=1.7");
  // NetworkImage pic2 = NetworkImage(
  //     "https://th.bing.com/th/id/OIP.F99VIM3ayosg5OL4H9acTgHaEO?w=306&h=180&c=7&r=0&o=5&pid=1.7");
  // NetworkImage pic3 = NetworkImage(
  //     "https://th.bing.com/th/id/OIP.ppraKM-yGYKaXGo9T3FYfwHaD5?w=224&h=181&c=7&r=0&o=5&pid=1.7");

  // String Mytext = "add to cart";
  // Color mydefaulColor = Colors.white;
  // String Mytext2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          MaterialButton(
            color: Colors.pink,
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MyFirstScreen();
                  },
                ));
              });
            },
            child: const Text(
              "Go to The FirstScreen",
              style: TextStyle(fontSize: 29),
            ),
          ),
          MaterialButton(
            color: Colors.lightGreen,
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MySecondScreen();
                  },
                ));
              });
            },
            child: const Text(
              "Go to The second Screen",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ]),
      ),
    );
  }
}
