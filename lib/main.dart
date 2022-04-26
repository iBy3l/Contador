import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Color(0xffF61A69),
        title: Text(
          'Contador',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'LOTADO' : 'PODE ENTRAR!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            count.toString(),
            style: TextStyle(
              color: isFull ? Colors.red : Color(0xff0D0D0B),
              fontSize: 130,
              fontWeight: FontWeight.w700,
              letterSpacing: -20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty
                      ? Color(0xffF61A69).withOpacity(0.2)
                      : Color(0xffF61A69),
                  fixedSize: const Size(90, 90),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 40, color: Color(0xffE8E8E8)),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: isFull ? null : increment,
                style: TextButton.styleFrom(
                  backgroundColor: isFull
                      ? Color(0xffF61A69).withOpacity(0.2)
                      : Color(0xffF61A69),
                  fixedSize: const Size(90, 90),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffE8E8E8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
