import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
// import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TextEditingController emailController= TextEditingController();
    TextEditingController passwordController = TextEditingController();
    void sendemail(String email) async {
      print(email);
      try {
        final response = await http.post(
          Uri.parse('http://localhost:5050/patient/auth/login'),
          headers: {'Content-Type': 'application/json'},
          body: '{"email": "$email"}',
        );
        print(response.body);
      } catch (e) {
        print(e);
      }
      emailController.clear();
      // final channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
      // channel.sink.add(message);
      // channel.stream.listen((message) {
      //   print(message);
      // });
    }
    void sendpassword(String password){
      print(password);
      passwordController.clear();
    }
    void sendLogin(String email, String password) async {
      print('Email: $email');
      print('Password: $password');
      try {
        final response = await http.post(
          Uri.parse('http://localhost:5050/patient/auth/login'),
          headers: {'Content-Type': 'application/json'},
          body: '{"email": "$email", "password": "$password"}',
        );
        print(response.body);
      } catch (e) {
        print(e);
      }
      emailController.clear();
      passwordController.clear();
    }
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () {
              if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
                sendLogin(emailController.text, passwordController.text);
              }
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
          const SizedBox(height: defaultPadding),
          // AlreadyHaveAnAccountCheck(
          //   press: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return const SignUpScreen();
          //         },
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}