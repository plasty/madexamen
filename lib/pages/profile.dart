import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 155, 64),
        title: Text('My Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://media.nu.nl/m/3spxe8pal86d_wd1280/alberto-stegeman-hoort-na-vier-jaar-uitspraak-in-zaak-over-nepbom-bij-defensie.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'Alberto Stegeman',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Alberto@Gmail.com',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Mijn Address'),
            subtitle: Text('Zonnenstraat 134, Almere, NL'),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
