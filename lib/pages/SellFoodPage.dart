import 'dart:io';

import 'package:flutter/material.dart';

class SellFoodPage extends StatefulWidget {
  const SellFoodPage({Key? key}) : super(key: key);

  @override
  _SellFoodPageState createState() => _SellFoodPageState();
}

class _SellFoodPageState extends State<SellFoodPage> {
  File? _image;
  final _formKey = GlobalKey<FormState>();
  String? _foodName;
  String? _foodDescription;
  double? _foodPrice;

  Future<void> _getImage() async {
  }

  void _submitForm() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(217, 132, 67, 1),
        title: Text('Verkoop je eten'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Center(
                child: GestureDetector(
                  onTap: _getImage,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: _image == null
                        ? Icon(Icons.add_a_photo)
                        : Image.file(_image!),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Naam van Eten',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Wat heb je gemaakt?';
                  }
                  return null;
                },
                onSaved: (value) {
                  _foodName = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Eten beschrijving',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Eten details';
                  }
                  return null;
                },
                onSaved: (value) {
                  _foodDescription = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Eten Prijs',
                  border: OutlineInputBorder(),
                  prefix: Text('€ '),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Prijs';
                  }
                  final price = double.tryParse(value);
                  if (price == null || price <= 0) {
                    return 'Geef een geldige prijs mee';
                  }
                  return null;
                },
                onSaved: (value) {
                  _foodPrice = double.parse(value!);
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.amber),
                ),
                onPressed: _submitForm,
                child: Text('Verkoop je eten'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
