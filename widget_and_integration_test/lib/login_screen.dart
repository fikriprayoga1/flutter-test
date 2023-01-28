import 'package:flutter/material.dart';
import 'package:widget_and_integration_test/home_screen.dart';
import 'package:widget_and_integration_test/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          key: ValueKey("title"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                key: const ValueKey("email_id"),
                decoration: const InputDecoration(hintText: "Enter Email Id"),
                validator: (value) => Validator.validateEmail(value ?? ""),
              ),
              TextFormField(
                controller: _passwordController,
                key: const ValueKey("password"),
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (value) => Validator.validatePassword(value ?? ""),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState?.validate() == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    }
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
