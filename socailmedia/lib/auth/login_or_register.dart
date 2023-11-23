import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/pages/login_page.dart';
import 'package:socailmedia/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
 bool showLoginPage = true;
 
 void togglepages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
 }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(onTap: togglepages);
    }else{
      return RegisterPage(onTap: togglepages);
    }
  }
}
