import 'package:flutter/material.dart';

import '../widgets/MyListItem.dart';
import '../widgets/productCard.dart';

class AfhalenPage extends StatefulWidget {
  const AfhalenPage({super.key});

  @override
  State<AfhalenPage> createState() => _AfhalenPageState();
}

class _AfhalenPageState extends State<AfhalenPage> {
  final ScrollController ct = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Text(
              "Afhalen",
              style: TextStyle(
                  color: Color(0xFF282828),
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          Expanded(
            child: ListView(
              controller: ct,
              shrinkWrap: true,
              children: [
                ProductCard(
                  title: 'Spagetti Bolognese',
                  label: 'Pascal',
                  price: '12.35',
                  imageUrl:
                      "https://www.inspiredtaste.net/wp-content/uploads/2019/03/Spaghetti-with-Meat-Sauce-Recipe-1-1200.jpg",
                  detailsScreen:
                      "Mijn spaghetti wordt geserveerd met een saus op basis van tomaten, vlees of groenten, ook is het gekruid met olijfolie, knoflook en kruiden",
                ),
                ProductCard(
                  title: 'Kip Teriyaki',
                  label: 'Emma',
                  price: '14.99',
                  imageUrl:
                      'https://degroenehorizon.nl/wp-content/uploads/2021/07/Rijst-met-kip.jpg',
                  detailsScreen:
                      'Kip Teriyaki is een Japans gerecht op basis van gebakken kip met een zoete teriyaki-saus. Het wordt vaak geserveerd met rijst en groenten en is een populaire keuze bij liefhebbers van de Aziatische keuken.',
                ),
                ProductCard(
                  title: 'Hamburger',
                  label: 'Lucas',
                  price: '10.99',
                  imageUrl:
                      'https://ohmyfoodness.nl/wp-content/uploads/2012/01/DSCF64981.jpg',
                  detailsScreen:
                      'De hamburger is een Amerikaans gerecht dat bestaat uit een gebakken rundvleesburger tussen twee broodjes, meestal met kaas, sla, tomaat en saus. Het is een populaire keuze bij fastfoodrestaurants over de hele wereld.',
                ),
                ProductCard(
                  title: 'Klassieke Caesar Salade',
                  label: 'Sophie',
                  price: '8.99',
                  imageUrl:
                      'https://www.lekkerensimpel.com/wp-content/uploads/2021/04/IMG_3682.jpg',
                  detailsScreen:
                      'De klassieke Caesar Salade is een Amerikaanse salade op basis van sla, Parmezaanse kaas, croutons en een romige dressing op basis van ansjovis en knoflook. Het is een eenvoudig en lekker gerecht dat ideaal is als voorgerecht of bijgerecht.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
