import 'package:flutter/material.dart';
import '../../../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Name
            TextFormField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your name",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),

            // Phone Number
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Phone Number",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.phone),
                  ),
                ),
              ),
            ),

            // Email
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Your email",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.email),
                  ),
                ),
              ),
            ),

            // Password
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                textInputAction: TextInputAction.next,
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

            // Date of Birth
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.next,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Date of Birth (DD/MM/YYYY)",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.cake),
                  ),
                ),
              ),
            ),

            // Address
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.next,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Your Address",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.home),
                  ),
                ),
              ),
            ),

            // Other Details
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                maxLines: 3,
                textInputAction: TextInputAction.done,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Other Details (e.g. allergies)",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.notes),
                  ),
                ),
              ),
            ),

            const SizedBox(height: defaultPadding / 2),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {},
              child: Text("SIGN UP"),
            ),

            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
