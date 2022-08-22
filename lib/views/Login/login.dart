import 'package:e_commerce/utilits/Routes/Routes.dart';
import 'package:e_commerce/views/sherdWidgit/Button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final keyForm = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60.0,
            horizontal: 32.0,
          ),
          child: Form(
            key: keyForm,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (valu) =>
                        valu!.isEmpty ? "Please Enter Email" : null,
                    decoration: const InputDecoration(
                        hintText: "Enter your Email", labelText: "Email"),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    validator: (valu) =>
                        valu!.isEmpty ? "Please Enter Password" : null,
                    decoration: const InputDecoration(
                        hintText: "Enter your Pass", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  InkWell(
                    child: Text(
                      "Forget your Pass",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  buttonMain("Login", () {}, context),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: const Text(
                        ' Dont Have an account?  Rigister',
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.registerPageRoute);
                      },
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login with",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
