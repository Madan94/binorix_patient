import 'package:flutter/material.dart';
import 'dart:convert';
import '../../../constants.dart';
import 'package:http/http.dart' as http;
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController dobController = TextEditingController();
    // TextEditingController genderController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController otherDetailsController = TextEditingController();
    void sendsignup(String name, String phone, String email, String password, String dob, String address, String gender, String otherDetails) async {
      try {
        final response = await http.post(
          Uri.parse('http://localhost:5050/patient/auth/signin'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            "name": name,
            "PhoneNumber": phone,
            "email": email,
            "password": password,
            "dob": dob,
            "gender": gender,
            "address": address,
            "otherDetails": otherDetails,
          }),
        );
        print(response.body);
      } catch (e) {
        print(e);
      }
      nameController.clear();
      phoneController.clear();
      emailController.clear();
      passwordController.clear();
      dobController.clear();
      addressController.clear();
      otherDetailsController.clear(); 
    }
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Name
            TextFormField(
              controller: nameController,
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
                controller: phoneController,
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
                controller: emailController,
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
                controller: passwordController,
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
                controller: dobController,
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

            // Gender Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: DropdownButtonFormField<String>(
                // controller: genderController,
                value: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: "Select Gender",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.wc),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: "Male", child: Text("Male")),
                  DropdownMenuItem(value: "Female", child: Text("Female")),
                  DropdownMenuItem(value: "Other", child: Text("Other")),
                ],
              ),
            ),

            // Address
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                controller: addressController,
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
                controller: otherDetailsController,
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
              onPressed: () {
                // handle sign up
                if(nameController.text.isNotEmpty &&
                   phoneController.text.isNotEmpty &&
                   emailController.text.isNotEmpty &&
                   passwordController.text.isNotEmpty &&
                   dobController.text.isNotEmpty &&
                   (gender != null && gender!.isNotEmpty) &&
                   addressController.text.isNotEmpty) {
                  sendsignup(
                    nameController.text,
                    phoneController.text,
                    emailController.text,
                    passwordController.text,
                    dobController.text,
                    addressController.text,
                    gender ?? "",
                    otherDetailsController.text
                  );
                }
              },
              child: Text("SIGN UP"),
            ),

            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}