import 'package:app_examen/widgets/productCard.dart';
import 'package:flutter/material.dart';

class BezorgenPage extends StatefulWidget {
  const BezorgenPage({super.key});

  @override
  State<BezorgenPage> createState() => _BezorgenPageState();
}

Map<String, dynamic> _entries = {};

Future<void> getWorklog() async {
  // _entries = await api.getCustomers();
}

class _BezorgenPageState extends State<BezorgenPage> {
  final ScrollController ct = ScrollController();

  @override
  void initState() {
    super.initState();
    getWorklog();
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
              "Bezorgen",
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
                  title: 'Pasta Carbonara',
                  label: 'John',
                  price: '15.99',
                  imageUrl:
                      'https://www.lekkerensimpel.com/wp-content/uploads/2020/10/IMG_4830-1.jpg.webp',
                  detailsScreen:
                      "Deze heerlijke pasta carbonara is bereid met verse eieren, pancetta, parmezaanse kaas en knoflook. Het is een romige en hartige klassieker uit de Italiaanse keuken. Perfect om te serveren als hoofdgerecht of als bijgerecht bij een lekker stukje vlees.",
                ),
                ProductCard(
                  title: 'Chicken Tikka Masala',
                  label: 'Sarah',
                  price: '18.50',
                  imageUrl:
                      'https://www.seriouseats.com/thmb/DbQHUK2yNCALBnZE-H1M2AKLkok=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chicken-tikka-masala-for-the-grill-recipe-hero-2_1-cb493f49e30140efbffec162d5f2d1d7.JPG',
                  detailsScreen:
                      "Proef de smaken van India met deze verrukkelijke chicken tikka masala. Gemaakt met malse kipfilet, garam masala kruiden en een romige tomatensaus, geserveerd met rijst of naanbrood. Een echte must-try voor liefhebbers van de Indiase keuken!",
                ),
                ProductCard(
                  title: 'Fish Tacos',
                  label: 'Alex',
                  price: '12.75',
                  imageUrl:
                      'https://thecozyapron.com/wp-content/uploads/2018/03/baja-fish-tacos_thecozyapron_1.jpg',
                  detailsScreen:
                      "Geniet van de smaken van Mexico met deze heerlijke fish tacos. Gemaakt met verse vis, pittige salsa, frisse sla en zure room, geserveerd in warme maistortilla's. Perfect als lichte lunch of diner, en ook geweldig voor feestjes of gezellige borrels.",
                ),
                ProductCard(
                  title: 'Beef Stroganoff',
                  label: 'Emily',
                  price: '21.99',
                  imageUrl:
                      'https://www.gimmesomeoven.com/wp-content/uploads/2020/10/Beef-Stroganoff-Recipe-9.jpg',
                  detailsScreen:
                      "Deze klassieke beef stroganoff is gemaakt met malse biefstuk, champignons, ui en een romige saus op basis van zure room. Geserveerd met een portie rijst, dit gerecht is perfect voor een comfortabele maaltijd op een koude dag.",
                ),
                ProductCard(
                  title: 'Homemade Pizza',
                  label: 'David',
                  price: '16.25',
                  imageUrl:
                      'https://thefoodcharlatan.com/wp-content/uploads/2021/08/Homemade-Pizza-Recipe-1-Hour-or-Overnight-20.jpg',
                  detailsScreen:
                      "Niets gaat boven een zelfgemaakte pizza met je favoriete toppings! Deze pizza is gemaakt met verse tomatensaus, mozzarella, salami, champignons en rode paprika. Heerlijk knapperig uit de oven, geserveerd met een frisse salade. Perfect voor een gezellige avond thuis met vrienden of familie.",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
