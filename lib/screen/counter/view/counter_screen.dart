import 'package:advanced_start/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class counterScreen extends StatefulWidget {
  const counterScreen({Key? key}) : super(key: key);

  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Consumer<CounterProvider>(
                builder :(context,value,child)=>Text(
                  "${value.i}",
                  style: TextStyle(fontSize:25),
                ),
              ),
            ),
            FloatingActionButton(onPressed: (){
              Provider.of<CounterProvider>(context,listen: false).increment();
            },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 15),
            FloatingActionButton(onPressed: (){
              Provider.of<CounterProvider>(context,listen: false).decrement();
            },
              child: Icon(Icons.minimize_outlined),
            ),
            SizedBox(height: 15),
            FloatingActionButton(onPressed: (){
              Provider.of<CounterProvider>(context,listen: false).mutli2();
            },
              child: Text("*2")
            ),
            SizedBox(height: 15),
            FloatingActionButton(onPressed: (){
              Provider.of<CounterProvider>(context,listen: false).mutli3();
            },
              child: Text("*3"),
            ),
            SizedBox(height: 15),
            FloatingActionButton(onPressed: (){
              Provider.of<CounterProvider>(context,listen: false).multi5();
            },
              child: Text("*5"),
            ),
            SizedBox(height: 15),
        ),
      ),
    );
  }
}
