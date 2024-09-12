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
        title: Text('Modifier les informations', style: TextStyle(color: const Color(0xFF41210b), fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 1,
        scrolledUnderElevation: 1,
        surfaceTintColor: const Color(0xFFD7CCC8),
        shadowColor: Theme.of(context).colorScheme.shadow,
        backgroundColor: const Color(0xFFF3E7E4),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xFFF3E7E4),
          ),
          child: Column(
            children: [
              ProfilePicture(
                imagePath: 'assets/img/user-no-photo.png',
                radius: 60,
                isEdit: true,
                key: Key('profile-picture'),
              ),
              const SizedBox(height: 40),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom',
                  labelStyle: TextStyle(
                    color: Color(0xFF41210b),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.edit, color: Color(0xFF41210b)),
                    onPressed: () => {
                      print('edit'),
                    },),
                ),
                style: const TextStyle(
                  color: Color(0xFF41210b),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Prénom',
                  labelStyle: TextStyle(
                    color: Color(0xFF41210b),
                  ),
                  suffixIcon: Icon(Icons.edit, color: Color(0xFF41210b)),
                ),
                style: const TextStyle(
                  color: Color(0xFF41210b),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFF41210b),
                  ),
                  suffixIcon: Icon(Icons.edit, color: Color(0xFF41210b)),
                ),
                style: const TextStyle(
                  color: Color(0xFF41210b),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enregistrer', style: const TextStyle(
                  color: Color(0xFF41210b),
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}