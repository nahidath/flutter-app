import 'package:flutter/material.dart';
import 'package:myapp/pages/profile/widgets/profilePicture.dart';




class ModifyInfo extends StatefulWidget {
  @override
  _ModifyInfoState createState() => _ModifyInfoState();
}

class _ModifyInfoState extends State<ModifyInfo> {
  @override
  Widget build(BuildContext context) {
   // return Container();
    return Scaffold(
      appBar: AppBar(
        title: Text('Modifier les informations'),
        backgroundColor: const Color(0xFFF3E7E4),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFFF3E7E4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            ProfilePicture(
              imagePath: 'assets/img/user-no-photo.png',
              radius: 60,
              isEdit: true,
              key: Key('profile-picture'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nom',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Prénom',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}