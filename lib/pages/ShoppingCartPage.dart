import 'package:flutter/material.dart';
import 'package:app_examen/widgets/productCard.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key, required this.item}) : super(key: key);
  final String item;

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<String> _items = [];
  @override
  void initState() {
    super.initState();
    _items.add(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(217, 132, 67, 1),
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index,) {
          final item = _items[index];
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            // title: Text(item +item.price),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _items.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Item'),
                content: TextField(
                  onChanged: (value) {
                  },
                  decoration: InputDecoration(hintText: 'Item Name'),
                ),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      setState(() {
                        _items.add('New Item');
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
              
            },
          );
        },
      ),
    );
  }
}
