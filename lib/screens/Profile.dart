import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> _anggota = <Widget>[
    Text("Muhammad Fahreza Isnanto - 21120120120009"),
    Text("Didan Hasan Murtaqi - 21120120140141"),
    Text("Muhammad Fadhil Sulthan - 21120120140144"),
    Text("Donny Ridwan Setiawan - 21120120130083"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/kel_4.jpeg'))),
          ),
          SizedBox(height: 20),
          Text(
            "Kami dari Kelompok Praktik PPB 4",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
              child: ListView.separated(
            itemCount: _anggota.length,
            itemBuilder: (BuildContext context, int index) {
              return _anggota.elementAt(index);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              thickness: 1,
            ),
          ))
        ],
      ),
    );
  }
}
