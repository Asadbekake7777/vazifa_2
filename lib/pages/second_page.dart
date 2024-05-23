// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ComputationScreen extends StatefulWidget {
  const ComputationScreen({super.key});

  @override
  _ComputationScreenState createState() => _ComputationScreenState();
}

class _ComputationScreenState extends State<ComputationScreen> {
  late Future<int> result;

  @override
  void initState() {
    super.initState();
    result = compute(heavyComputation, 10000000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Heavy Computation',
        ),
      ),
      body: Center(
        child: FutureBuilder<int>(
          future: result,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text(
                'Error: ${snapshot.error}',
              );
            } else if (snapshot.hasData) {
              return Text(
                'Result: ${snapshot.data}',
              );
            } else {
              return const Text(
                'No result',
              );
            }
          },
        ),
      ),
    );
  }
}

int heavyComputation(int limit) {
  int sum = 0;
  for (int i = 0; i < limit; i++) {
    sum += i;
  }
  return sum;
}
