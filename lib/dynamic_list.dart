import 'dart:developer';

import 'package:faker/faker.dart' as fk;
import 'package:flutter/material.dart';

class DynamicList extends StatelessWidget {
  const DynamicList({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = fk.Faker();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de list'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => log('message:::$index'),
            contentPadding: const EdgeInsets.only(left: 8),
            leading: const Icon(
              Icons.attach_money_outlined,
              color: Colors.purple,
            ),
            title: Text(faker.person.name()),
            subtitle: Text(
                'Monto: ${faker.randomGenerator.decimal(min: 50, scale: 500).toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
