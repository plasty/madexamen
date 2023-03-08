import 'package:flutter/material.dart';
import 'package:app_examen/pages/ShoppingCartPage.dart';
class ShoppingCartButton extends StatelessWidget {
  final String item;

  const ShoppingCartButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShoppingCartPage(item: item),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_shopping_cart),
          SizedBox(width: 8),
          Text('Add to Cart'),
        ],
      ),
    );
  }
}
