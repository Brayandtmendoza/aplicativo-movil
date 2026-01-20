import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.home_work, color: Color(0xFF7B61FF), size: 24),
                  SizedBox(width: 8),
                  Text("Home Go", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              const SizedBox(height: 30),
              const Text("Welcome Back!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text("Enter your login information", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              Row(
                children: [
                  _socialButton("Google", false),
                  const SizedBox(width: 12),
                  _socialButton("Apple", true),
                ],
              ),
              const SizedBox(height: 24),
              const Center(child: Text("Or", style: TextStyle(color: Colors.grey))),
              _inputLabel("Email Address"),
              _textField("Email Address"),
              _inputLabel("Password"),
              _textField("Password", isPassword: true),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7B61FF),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {},
                  child: const Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text("Don't have an account? Sign Up"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // FUNCIONES DE AYUDA (Dentro de la misma clase)
  Widget _inputLabel(String label) => Padding(
    padding: const EdgeInsets.only(bottom: 8.0, top: 16.0),
    child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
  );

  Widget _textField(String hint, {bool isPassword = false}) => TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xFFF7F7F8),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.grey.shade200)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xFF7B61FF), width: 1.5)),
    ),
  );

  Widget _socialButton(String label, bool isApple) => Expanded(
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        side: BorderSide(color: Colors.grey.shade200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(isApple ? Icons.apple : Icons.g_mobiledata, color: isApple ? Colors.black : Colors.red, size: 28),
          const SizedBox(width: 4),
          Text(label, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
        ],
      ),
    ),
  );
}