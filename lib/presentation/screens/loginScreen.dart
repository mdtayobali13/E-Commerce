import 'package:e_comarce/presentation/screens/product_screen.dart';
import 'package:e_comarce/presentation/screens/sign_up_screen.dart';
import 'package:e_comarce/presentation/widgets/custom_button.dart';
import 'package:e_comarce/presentation/widgets/custom_text_filed.dart';
import 'package:e_comarce/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'Sign in to your account.',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextfield(
                hintText: 'Email or Phone number',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                hintText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: GoogleFonts.inter(
                        color: Colors.black54, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  buttonWidth: MediaQuery.of(context).size.width ,
                  buttonHeight: MediaQuery.of(context).size.height* 0.06,
                  buttonText: 'Log In',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen()));
                  }),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style:
                          GoogleFonts.inter(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(imagePath: 'assets/google (2).png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Logo(imagePath: 'assets/apple.png'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a memeber?',
                    style: GoogleFonts.inter(color: Colors.grey, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    })),
                    child: Text(
                      'Join Now',
                      style: GoogleFonts.inter(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
