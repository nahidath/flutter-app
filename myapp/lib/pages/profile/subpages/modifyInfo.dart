import 'package:flutter/material.dart';
import 'package:myapp/pages/profile/widgets/profilePicture.dart';




class ModifyInfo extends StatefulWidget {
  @override
  _ModifyInfoState createState() => _ModifyInfoState();
}

class _ModifyInfoState extends State<ModifyInfo> {

  bool isEdit = false;
  final TextEditingController _controller = TextEditingController();

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
          height: MediaQuery.of(context).size.height,
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
              Stack( alignment: Alignment.centerRight, children: [
                 TextFormField(
                    enabled: isEdit,
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Nom',
                      labelStyle: TextStyle(
                        color: Color(0xFF41210b),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF41210b), width: 2),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF41210b),
                          width: 2,
                        ),
                      ),
                      // Espace à droite pour éviter que le texte passe sous l'icône
                      contentPadding: EdgeInsets.only(right: 40),
                    ),
                    cursorColor: Color(0xFF41210b),
                    style: const TextStyle(
                      color: Color(0xFF41210b),
                    ),
                  ),
                IconButton(
                  icon: Icon(Icons.edit),
                  color: const Color(0xFF41210b),
                  onPressed: () => {
                    print("pui"),
                    setState(() {
                      isEdit = !isEdit;
                    })
                  },
                ),
              ]),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prénom',
                  labelStyle: TextStyle(
                    color: Color(0xFF41210b),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF41210b), width: 2),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.edit),
                    color: Color(0xFF41210b),
                    onPressed: () => {
                      print("hello")
                    },
                  ),
                ),
                cursorColor: Color(0xFF41210b),
                style: const TextStyle(
                  color: Color(0xFF41210b),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFF41210b),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF41210b), width: 2),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.edit),
                    color: Color(0xFF41210b),
                    onPressed: () => {
                      print("hello")
                    },
                  ),
                ),
                cursorColor: Color(0xFF41210b),
                style: TextStyle(
                  color: Color(0xFF41210b),
                ),
              ),
              const SizedBox(height: 55),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(const Color(0xFF664114)),
                  padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                  fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                child: const Text('Enregistrer', style: TextStyle(
                  color: Color(0xFFFCEDED),
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}