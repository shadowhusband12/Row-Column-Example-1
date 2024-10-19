import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item For Sale',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item For Sale"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 240,
          height: 300,
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                child: Image.network(
                  "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Umbrella for sale",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("200 bought this"),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("4.5"),
                        Icon(
                          Icons.star,
                          size: 14,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text("Add To Cart"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text("Buy Now"),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
