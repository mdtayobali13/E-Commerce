import 'package:e_comarce/presentation/screens/loginScreen.dart';
import 'package:e_comarce/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/shopingBag.jpg'),
          Text(
            'Start Your Shopping\n Journey Now',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LogIn();
                  }),
                );
              },
              buttonText: 'Log In',
              buttonWidth: MediaQuery.of(context).size.height,
              buttonHeight: MediaQuery.of(context).size.width * 0.07,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              onTap: () {},
              buttonText: 'Sign up',
              buttonWidth: MediaQuery.of(context).size.width,
              buttonHeight: MediaQuery.of(context).size.width * 0.07,
            ),
          )
        ],
      )),
    );
  }
}
