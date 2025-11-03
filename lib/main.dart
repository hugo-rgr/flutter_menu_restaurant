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
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400',
      categorie: 'Formules',
    ),
    Plat(
      nom: 'Formule Découverte',
      description: 'Entrée + plat + dessert',
      prix: 24.90,
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=400',
      categorie: 'Formules',
    ),
    Plat(
      nom: 'Formule Gourmande',
      description: 'Entrée + plat + dessert + café',
      prix: 29.90,
      imageUrl: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400',
      categorie: 'Formules',
    ),

    // Entrées
    Plat(
      nom: 'Salade César',
      description: 'Salade romaine, poulet grillé, parmesan, croûtons',
      prix: 8.50,
      imageUrl: 'https://images.unsplash.com/photo-1546793665-c74683f339c1?w=400',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Soupe à l\'oignon',
      description: 'Soupe traditionnelle gratinée au fromage',
      prix: 7.00,
      imageUrl: 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=400',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Carpaccio de bœuf',
      description: 'Fines tranches de bœuf, roquette, parmesan',
      prix: 9.50,
      imageUrl: 'https://images.unsplash.com/photo-1544025162-d76694265947?w=400',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Foie gras maison',
      description: 'Foie gras de canard mi-cuit, confit d\'oignons',
      prix: 12.00,
      imageUrl: 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400',
      categorie: 'Entrées',
    ),

    // Plats principaux
    Plat(
      nom: 'Entrecôte grillée',
      description: 'Viande de bœuf, sauce au poivre, frites maison',
      prix: 18.50,
      imageUrl: 'https://images.unsplash.com/photo-1558030006-450675393462?w=400',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Saumon grillé',
      description: 'Filet de saumon, légumes de saison, riz basmati',
      prix: 16.90,
      imageUrl: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=400',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Risotto aux champignons',
      description: 'Risotto crémeux, champignons des bois, parmesan',
      prix: 14.50,
      imageUrl: 'https://images.unsplash.com/photo-1476124369491-f7addf4c6909?w=400',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Magret de canard',
      description: 'Magret fumé, sauce aux figues, pommes grenailles',
      prix: 19.90,
      imageUrl: 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?w=400',
      categorie: 'Plats',
    ),
    Plat(
      nom: 'Burger du Chef',
      description: 'Pain maison, steak haché 200g, cheddar, bacon',
      prix: 15.00,
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
      categorie: 'Plats',
    ),

    // Desserts
    Plat(
      nom: 'Tiramisu maison',
      description: 'Crème au mascarpone, biscuits imbibés de café',
      prix: 6.50,
      imageUrl: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=400',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Fondant au chocolat',
      description: 'Coulant chocolat noir, crème anglaise',
      prix: 7.00,
      imageUrl: 'https://images.unsplash.com/photo-1624353365286-3f8d62daad51?w=400',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Tarte tatin',
      description: 'Pommes caramélisées, pâte feuilletée, glace vanille',
      prix: 6.90,
      imageUrl: 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?w=400',
      categorie: 'Desserts',
    ),
    Plat(
      nom: 'Crème brûlée',
      description: 'Crème onctueuse, caramel croquant',
      prix: 6.00,
      imageUrl: 'https://images.unsplash.com/photo-1470124182917-cc6e71b22ecc?w=400',
      categorie: 'Desserts',
    ),

    // Boissons
    Plat(
      nom: 'Eau minérale 50cl',
      description: 'Eau de source naturelle',
      prix: 2.50,
      imageUrl: 'https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=400',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Coca-Cola 33cl',
      description: 'Boisson gazeuse rafraîchissante',
      prix: 3.50,
      imageUrl: 'https://images.unsplash.com/photo-1554866585-cd94860890b7?w=400',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Vin rouge 25cl',
      description: 'Sélection du sommelier',
      prix: 5.50,
      imageUrl: 'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=400',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Café expresso',
      description: 'Café arabica torréfié',
      prix: 2.00,
      imageUrl: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Jus d\'orange pressé',
      description: 'Jus fraîchement pressé',
      prix: 4.00,
      imageUrl: 'https://images.unsplash.com/photo-1600271886742-f049cd451bba?w=400',
      categorie: 'Boissons',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1️⃣ AppBar avec le titre du restaurant
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // 2️⃣ Zone de catégories défilable horizontalement avec ROW
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

          // 3️⃣ Zone principale pour les plats (cartes) - ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: 8, // Temporaire : on affiche 5 cartes de test
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                // Card avec Row pour l'organisation horizontale
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
                        // Image placeholder avec Container
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.restaurant,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),

                        // SizedBox pour l'espacement
                        const SizedBox(width: 12),

                        // Informations du plat dans une Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Nom du plat - Text
                              Text(
                                'Plat ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // SizedBox pour l'espacement
                              const SizedBox(height: 6),

                              // Description - Text
                              Text(
                                'Description du plat avec les ingrédients',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),

                              // SizedBox pour l'espacement
                              const SizedBox(height: 8),

                              // Prix avec Row pour aligner icône et texte
                              Row(
                                children: [
                                  const Icon(
                                    Icons.euro,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${(10 + index * 2)}.50 €',
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
              },
            ),
          ),
        ],
      ),
    );
  }
}


