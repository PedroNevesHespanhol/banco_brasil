import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(BankApp());

class BankApp extends StatelessWidget {

  const BankApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {

  const Dashboard({ super.key });

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 56, 168, 1.0),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://asbraf.com/wp-content/uploads/2020/04/bb3.png'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ListaContatos()),
                );
              },
              child: Container(
                height: 140,
                width: 120,
                padding: EdgeInsets.all(8.0),
                color: Color.fromRGBO(0, 56, 168, 1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Contatos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListaContatos extends StatelessWidget {

  const ListaContatos({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 56, 168, 1.0),
        title: Text(
          'Contatos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Alexandre',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 56, 168, 1.0),
        child: Icon(
          Icons.add,
          color: Colors.white, 
          size: 35.0,
        ),
      ),
    );
  }
}