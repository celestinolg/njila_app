import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:njila_app/core/widgets/button.dart';
import 'package:njila_app/core/widgets/social_media_icon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidden = true;
  bool rememberMe = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF28333F),
      appBar: AppBar(backgroundColor: Color(0XFF28333F)),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),

          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img/logo.png', width: 100, fit: BoxFit.cover),
              const SizedBox(height: 50),
              const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white60),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0X9B7B61FF)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      obscureText: hidden,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidden = !hidden;
                            });
                          },
                          icon: Icon(
                            hidden ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white70,
                          ),
                        ),
                        hintStyle: TextStyle(color: Colors.white60),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x9B7B61FF)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        },
                        activeColor: Color(0XFF7B61FF),
                      ),
                      const Text(
                        'Remember Me',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/forgot-password');
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0XFF7B61FF)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Button(
                text: 'Log In',
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil('/home', (route) => false);
                },
                width: double.infinity,
                height: 56,
                fontSize: 18,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.white38, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.white38, thickness: 1)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    icon: 'assets/img/Google-logo.png',
                    onTap: () {},
                  ),
                  const SizedBox(width: 16),
                  SocialMediaIcon(
                    icon: 'assets/img/Facebook-logo.png',
                    onTap: () {},
                  ),
                  const SizedBox(width: 16),
                  SocialMediaIcon(icon: 'assets/img/x_logo.png', onTap: () {}),
                ],
              ),
              const SizedBox(height: 16),
              Text.rich(
                TextSpan(
                  text: 'New user? ',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Color(0XFF7B61FF),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamed('/sign-up');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
