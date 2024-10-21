import 'dart:convert';

import "package:flutter/material.dart";
import "package:flutter_dashboard_eshop/models/contry.dart";
import 'package:http/http.dart' as http;

class CountriesList extends StatefulWidget {
  const CountriesList({super.key});

  @override
  _CountriesListState createState() => _CountriesListState();
}

class _CountriesListState extends State<CountriesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: FutureBuilder<List<Country>>(
        future: fetchCountries(), // Le Future que nous attendons
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
                strokeWidth: 10.0,
                strokeCap: StrokeCap.square,
              ),
            ); // Affiche un indicateur de chargement
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'), // Affiche l'erreur
            );
          } else {
            final countries = snapshot.data!; // Les données récupérées
            return SingleChildScrollView(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Flag')),
                  DataColumn(label: Text('Country')),
                  DataColumn(label: Text('Capital')),
                ],
                rows: countries.map((country) {
                  return DataRow(
                    cells: [
                      DataCell(Image.network(country.flagPng, width: 50)),
                      DataCell(Text(country.commonName)),
                      DataCell(Text(country.capital.join(', '))),
                    ],
                  );
                }).toList(),
              ),
            );
          }
        },
      ),
    );
  }
  Future<List<Country>> fetchCountries() async {
    await Future.delayed(const Duration(seconds: 4));

    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Country.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load countries');
    }
  }
}
