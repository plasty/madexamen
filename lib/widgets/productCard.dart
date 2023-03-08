import 'package:app_examen/widgets/ShoppingCardButton.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String label;
  final String price;
  final String detailsScreen;
  final IconData? icon;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final String imageUrl; 

  const ProductCard({
    Key? key,
    required this.title,
    required this.label,
    required this.price,
    required this.detailsScreen,
    this.icon,
    this.backgroundColor = const Color(0xFFC69E30),
    this.borderColor = const Color(0x11282828),
    this.textColor = const Color(0xFF282828),
    this.borderRadius = 10,
    required this.imageUrl, 
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor),
            borderRadius: BorderRadius.circular(widget.borderRadius)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 15.0, top: 20.0, bottom: 20.0),
                  child: ClipRRect(
                  
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      widget.imageUrl, 
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: widget.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.label,
                        style: TextStyle(
                            color: widget.textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    "€ ${widget.price}",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: widget.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )
              ],
            ),
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '${widget.title}  -  ${widget.detailsScreen}',
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ShoppingCartButton(item: widget.title),
          ],
        ),
      ),
    );
  }
}
