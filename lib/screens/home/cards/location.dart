import 'package:fama/screens/home/widgets/location_input.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: LocationInput(),
      ),
    );
  }
}
