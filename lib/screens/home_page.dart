import 'package:flutter/material.dart';
// import 'package:flutter_dashboard_eshop/screens/card_list.dart';
import 'package:flutter_dashboard_eshop/screens/contries_list.dart';
import "package:flutter_dashboard_eshop/screens/menu.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "ESHOP",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   backgroundColor: Colors.white,
        //   actions: [
        //     Container(
        //       padding: const EdgeInsets.symmetric(
        //           horizontal: 50.0), // Marge interne globale
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Container(
        //             margin: const EdgeInsets.only(
        //                 right: 50.0), // Marge externe droite
        //             padding: const EdgeInsets.symmetric(
        //                 horizontal: 10.0,
        //                 vertical: 5.0), // Marge interne pour espacement
        //             decoration: BoxDecoration(
        //               color: const Color.fromARGB(255, 240, 235, 235),
        //               borderRadius:
        //                   BorderRadius.circular(20), // Rayon des bords
        //             ),
        //             child: const Row(
        //               children: [
        //                 Icon(Icons.filter_alt_off_outlined),
        //                 SizedBox(width: 10),
        //                 Text(
        //                   "Filters",
        //                   style: TextStyle(
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           const SizedBox(
        //             width: 200,
        //           ),
        //           Container(
        //             margin: const EdgeInsets.only(
        //                 right:
        //                     50.0), // Marge externe droite pour le champ de recherche
        //             width: 500,
        //             child: TextField(
        //               decoration: InputDecoration(
        //                 hintText: "Search",
        //                 border: OutlineInputBorder(
        //                     borderRadius: BorderRadius.circular(20)),
        //                 prefixIcon: const Icon(Icons.search),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             margin: const EdgeInsets.only(
        //                 right:
        //                     30.0), // Marge externe droite pour l'icône de notification
        //             child: const Icon(Icons.notifications),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        drawer: Menu(),
        body: CountriesList());
  }
}
