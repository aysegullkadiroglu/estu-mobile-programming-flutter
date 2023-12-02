import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_7/httphelper.dart';
import 'package:flutter_app_7/pizza.dart';
import 'pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    List<Pizza> pizzas = await helper.getPizzaList();
    return pizzas;
  }

  @override
  void initState() {
    callPizzas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('JSON')),
      body: Container(
        child: FutureBuilder(
            future: callPizzas(),
            builder: (BuildContext context,
                AsyncSnapshot<List<Pizza>> pizzas) {
              return ListView.builder(
                /*
                itemCount: pizzas.data?.length ?? 0, // added null check here
                itemBuilder: (BuildContext context, int position) {
                  final pizza = pizzas.data?[position]; // added null check here

                  if (pizza == null) {
                    return SizedBox.shrink();
                  }

                  return ListTile(
                    title: Text(pizza.pizzaName ?? 'Unknown'),
                    subtitle: Text('${pizza.description} - € ${pizza.price}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PizzaDetail(pizza: pizza, isNew: false),
                        ),
                      );
                    },
                  );
                },
              */
                itemCount: (pizzas.data == null) ? 0 : pizzas.data?.length,
                itemBuilder: (BuildContext context, int position) {
                  final pizza = pizzas.data?[position];
                  return Dismissible(
                    onDismissed: (item) {
                      HttpHelper helper = HttpHelper();
                      final pizzaId = pizzas.data![position].id!;
                      pizzas.data?.removeWhere((element) => element.id == pizzaId);
                      helper.deletePizza(pizzaId);
                    },
                    key: Key(position.toString()),
                    child: ListTile(
                      title: Text(pizza?.pizzaName ?? 'Unknown'),
                      subtitle: Text('${pizza?.description} - € ${pizza?.price}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PizzaDetail(pizza: pizza, isNew: false,))
                        );
                      },
                    ),
                  );
                },
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  //PizzaDetail(pizza: Pizza(), isNew: false)),
            PizzaDetail()),
          );
        },
      ),
    );
  }
}
