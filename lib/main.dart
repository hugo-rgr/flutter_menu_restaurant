import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantMenuApp());
}

class RestaurantMenuApp extends StatelessWidget {
  const RestaurantMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Restaurant',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: const MenuPage(title: 'Menu du Restaurant X'),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class Plat {
  final String nom;
  final String description;
  final double prix;
  final String imageUrl;
  final String categorie;

  Plat({
    required this.nom,
    required this.description,
    required this.prix,
    required this.imageUrl,
    required this.categorie,
  });
}

class _MenuPageState extends State<MenuPage> {
  // Liste des catégories disponibles
  final List<String> categories = [
    'Formules',
    'Entrées',
    'Plats',
    'Desserts',
    'Boissons',
  ];

  final List<Plat> listePlats = [
    // Formules
    Plat(
      nom: 'Formule Express',
      description: 'Plat du jour + boisson',
      prix: 14.90,
      imageUrl: 'assets/images/formule1.jpg',  // ✅ Chemin local
      categorie: 'Formules',
    ),
    Plat(
      nom: 'Formule Découverte',
      description: 'Entrée + plat + dessert',
      prix: 24.90,
      imageUrl: 'assets/images/formule2.jpg',
      categorie: 'Formules',
    ),
    Plat(
      nom: 'Formule Gourmande',
      description: 'Entrée + plat + dessert + café',
      prix: 29.90,
      imageUrl: 'assets/images/formule3.jpg',
      categorie: 'Formules',
    ),

    // Entrées
    Plat(
      nom: 'Salade César',
      description: 'Salade romaine, poulet grillé, parmesan, croûtons',
      prix: 8.50,
      imageUrl: 'assets/images/salade.jpg',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Soupe à l\'oignon',
      description: 'Soupe traditionnelle gratinée au fromage',
      prix: 7.00,
      imageUrl: 'assets/images/soupe.jpg',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Carpaccio de bœuf',
      description: 'Fines tranches de bœuf, roquette, parmesan',
      prix: 9.50,
      imageUrl: 'assets/images/carpaccio.jpg',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Foie gras maison',
      description: 'Foie gras de canard mi-cuit, confit d\'oignons',
      prix: 12.00,
      imageUrl: 'assets/images/foiegras.jpg',
      categorie: 'Entrées',
    ),

    // Plats principaux
    Plat(
      nom: 'Entrecôte grillée',
      description: 'Viande de bœuf, sauce au poivre, frites maison',
      prix: 18.50,
      imageUrl: 'assets/images/entrecote.jpg',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Saumon grillé',
      description: 'Filet de saumon, légumes de saison, riz basmati',
      prix: 16.90,
      imageUrl: 'assets/images/saumon.jpg',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Risotto aux champignons',
      description: 'Risotto crémeux, champignons des bois, parmesan',
      prix: 14.50,
      imageUrl: 'assets/images/risotto.jpg',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Magret de canard',
      description: 'Magret fumé, sauce aux figues, pommes grenailles',
      prix: 19.90,
      imageUrl: 'assets/images/magret.jpg',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Burger du Chef',
      description: 'Pain maison, steak haché 200g, cheddar, bacon',
      prix: 15.00,
      imageUrl: 'assets/images/burger.jpg',
      categorie: 'Plats',
    ),

    // Desserts
    Plat(
      nom: 'Tiramisu maison',
      description: 'Crème au mascarpone, biscuits imbibés de café',
      prix: 6.50,
      imageUrl: 'assets/images/tiramisu.jpg',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Fondant au chocolat',
      description: 'Coulant chocolat noir, crème anglaise',
      prix: 7.00,
      imageUrl: 'assets/images/fondant.jpg',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Tarte tatin',
      description: 'Pommes caramélisées, pâte feuilletée, glace vanille',
      prix: 6.90,
      imageUrl: 'assets/images/tarte.jpg',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Crème brûlée',
      description: 'Crème onctueuse, caramel croquant',
      prix: 6.00,
      imageUrl: 'assets/images/creme.jpg',
      categorie: 'Desserts',
    ),

    // Boissons
    Plat(
      nom: 'Eau minérale 50cl',
      description: 'Eau de source naturelle',
      prix: 2.50,
      imageUrl: 'assets/images/eau.jpg',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Coca-Cola 33cl',
      description: 'Boisson gazeuse rafraîchissante',
      prix: 3.50,
      imageUrl: 'assets/images/coca.jpg',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Vin rouge 25cl',
      description: 'Sélection du sommelier',
      prix: 5.50,
      imageUrl: 'assets/images/vin.jpg',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Café expresso',
      description: 'Café arabica torréfié',
      prix: 2.00,
      imageUrl: 'assets/images/cafe.jpg',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Jus d\'orange pressé',
      description: 'Jus fraîchement pressé',
      prix: 4.00,
      imageUrl: 'assets/images/jus.jpg',
      categorie: 'Boissons',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar avec le titre du restaurant
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // Zone de catégories défilable horizontalement avec ROW
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey[100],
            // SingleChildScrollView permet le scroll horizontal sur la Row
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Génération de tous les boutons de catégories
                  for (var categorie in categories)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            categorie,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          // Ligne de séparation
          const Divider(thickness: 1),

          // Zone principale pour les plats (cartes) - ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: listePlats.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final plat = listePlats[index];
                return CartePlat(plat: plat);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Composant pour afficher une carte de plat
class CartePlat extends StatelessWidget {
  const CartePlat({super.key, required this.plat});

  final Plat plat;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image du plat
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(plat.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              // Image de secours si erreur
              child: plat.imageUrl.isEmpty
                  ? const Icon(
                Icons.restaurant,
                size: 40,
                color: Colors.grey,
              )
                  : null,
            ),

            const SizedBox(width: 12),

            // Informations du plat
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nom du plat
                  Text(
                    plat.nom,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Description
                  Text(
                    plat.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 8),

                  // Prix
                  Row(
                    children: [
                      const Icon(
                        Icons.euro,
                        size: 16,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${plat.prix.toStringAsFixed(2)} €',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


