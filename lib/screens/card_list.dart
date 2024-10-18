import "package:flutter/material.dart";

// Création de la liste des objets
class DashboardItem {
  final String title;
  final int number;
  final Color color;

  DashboardItem({
    required this.title,
    required this.number,
    required this.color,
  });
}

List<DashboardItem> dashboardItems = [
  DashboardItem(title: "New Clients", number: 42, color: Colors.green),
  DashboardItem(title: "New Reminders", number: -5, color: Colors.red),
  DashboardItem(title: "In Service", number: 16, color: Colors.green),
];

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Container(
        height: 800.0,
        width:400,
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Nombre de colonnes
            crossAxisSpacing: 10, // Espacement entre les colonnes
            mainAxisSpacing: 10, // Espacement entre les lignes
            childAspectRatio: 1, // Proportion entre largeur et hauteur
          ),
          itemCount: dashboardItems.length, // Nombre d'éléments dans la grille
          itemBuilder: (context, index) {
            return Container(
              width:100,
              color: Colors.blueAccent,
              child: Card(
                elevation: 10.0,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
        
                            children: [
                              Icon(Icons.people),
                              Text(
                                '${dashboardItems[index].title}',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Text(
                        '${dashboardItems[index].number}',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Pourcentage en baisse !',
                        style: TextStyle(color: dashboardItems[index].color),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
