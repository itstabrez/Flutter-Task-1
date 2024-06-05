import 'package:api_integration_python/widgets/login_page_widgets/forgot_password.dart';
import 'package:api_integration_python/widgets/login_page_widgets/login_button.dart';
import 'package:flutter/material.dart';
import '../widgets/login_page_widgets/background.dart'; // Import the Background widget

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Use the Background widget
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Image.asset("assets/images/logo.png", width: 350, height: 350),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const SizedBox(height: 50),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Username',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const ForgotPassword(),
                    const SizedBox(height: 30),
                    LoginButton(
                      usernameController: _usernameController,
                      passwordController: _passwordController,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

