import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState(){
       _email=TextEditingController();
    _password=TextEditingController();
  }
  void dispose() {
    _email=TextEditingController();
    _password=TextEditingController();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          return Column(
          children: [
            TextField(
            controller: _email,
            decoration: const InputDecoration( hintText: 'Enter your email address'),
            ),
            TextField(
              controller: _password,
            decoration:  const InputDecoration( hintText: 'Enter your email password'),
            ),
            TextButton(
              onPressed: ()async{
                await Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                );
                final email = _email.text;
                final password = _password.text;
                final UserCredential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email,
                  password: password);
                  print(UserCredential);
              },
              child: const Text('Register'),),
          ],
        );
        }
         ),
    );
  }
}
