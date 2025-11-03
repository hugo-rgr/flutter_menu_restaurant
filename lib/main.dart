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

// Classe représentant un plat avec ses informations
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
  // Variable d'état pour suivre la catégorie actuellement sélectionnée
  String categorieSelectionnee = 'Formules';

  // Liste des catégories disponibles
  final List<String> categories = [
    'Formules',
    'Entrées',
    'Plats',
    'Desserts',
    'Boissons',
  ];

  // Liste de tous les plats
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
    Plat(
      nom: 'Assiette de charcuterie',
      description: 'Sélection de charcuterie artisanale, cornichons',
      prix: 10.50,
      imageUrl: 'https://images.unsplash.com/photo-1542328153-4e6fc3b3aba0?w=400',
      categorie: 'Entrées',
    ),
    Plat(
      nom: 'Tartare de saumon',
      description: 'Saumon frais mariné, avocat, citron vert',
      prix: 11.00,
      imageUrl: 'https://images.unsplash.com/photo-1580959375944-0be43c7e0c97?w=400',
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
      imageUrl: 'haha', // image non fonctionnelle pour voir le fallback
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
    Plat(
      nom: 'Thé glacé maison',
      description: 'Thé infusé à froid, menthe fraîche',
      prix: 3.50,
      imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
      categorie: 'Boissons',
    ),
    Plat(
      nom: 'Smoothie fruits rouges',
      description: 'Fraises, framboises, myrtilles, yaourt',
      prix: 5.00,
      imageUrl: 'https://images.unsplash.com/photo-1505252585461-04db1eb84625?w=400',
      categorie: 'Boissons',
    ),
  ];

  // Méthode pour filtrer les plats selon la catégorie sélectionnée
  List<Plat> getPlatsFiltres() {
    return listePlats
        .where((plat) => plat.categorie == categorieSelectionnee)
        .toList();
  }

  // Méthode pour changer la catégorie sélectionnée
  void changerCategorie(String nouvelleCategorie) {
    setState(() {
      categorieSelectionnee = nouvelleCategorie;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar avec le titre du restaurant
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),

      // Column utilisé ici pour organiser verticalement les sections :
      // 1. Barre de catégories (horizontal scroll)
      // 2. Séparateur
      // 3. Liste des plats (vertical scroll)

      body: Column(
        children: [
          // Zone de catégories défilable horizontalement avec Row
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey[100],
            child: SingleChildScrollView( // Pour défilement horizontal
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var categorie in categories)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      // GestureDetector onTap() pour détecter les clics
                      child: GestureDetector(
                        onTap: () => changerCategorie(categorie),  // Change la catégorie
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            // Couleur différente si sélectionnée
                            color: categorie == categorieSelectionnee
                                ? Colors.orange[600]
                                : Colors.orange[300],
                            borderRadius: BorderRadius.circular(20),
                            // Ombre si sélectionnée
                            boxShadow: categorie == categorieSelectionnee
                                ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              )
                            ]
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              categorie,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: categorie == categorieSelectionnee
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                // Texte blanc si sélectionnée
                                color: categorie == categorieSelectionnee
                                    ? Colors.white
                                    : Colors.black87,
                              ),
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

          // Zone principale pour les plats (cartes)
          // Expanded prend tout l'espace vertical restant dans la Column
          Expanded(
            child: ListView.builder( // Création des plats de manière lazy
              itemCount: getPlatsFiltres().length,  // Utilise les plats filtrés
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final plat = getPlatsFiltres()[index];  // Récupèration du filtre
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
        child: Row( // Row organise horizontalement : image à gauche, infos à droite
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container avec taille fixe pour uniformiser toutes les images
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              clipBehavior: Clip.antiAlias,  // Arrondir l'image
              child: Image.network(
                plat.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.restaurant,
                      size: 40,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),

            // Espacement horizontal entre image et texte
            const SizedBox(width: 12),

            // Informations du plat
            // Expanded permet au contenu de prendre tout l'espace restant
            Expanded(
              child: Column( // Column organise verticalement : nom, description, prix
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
                    overflow: TextOverflow.ellipsis, // Ajoute "..." si texte trop long
                  ),

                  const SizedBox(height: 8),

                  // Prix
                  // Row pour aligner icône et texte horizontalement
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


