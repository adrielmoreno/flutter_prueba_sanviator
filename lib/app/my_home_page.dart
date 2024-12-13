import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Prueba padding'),
            ),

            // Container
            Container(
              margin: const EdgeInsets.only(left: 24.0),
              padding: const EdgeInsets.all(8),
              child: const Text('Prueba Container'),
            ),

            // Card
            GestureDetector(
              onTap: () {},
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Prueba Card',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            //Sizedbox
            const SizedBox(
              width: 80,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Pueba1'),
                    Icon(Icons.add_a_photo),
                    Text('Pueba1'),
                  ],
                ),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.blueAccent, fontSize: 24.0),
            ),
            Text(
              'Prueba de overflow',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
