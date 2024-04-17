import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yuktidea/screens/terms_conditions.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height * 0.4;
    final double width = size.width;

    final imageContainerSize = 125.0;

    return Scaffold(
      body: Stack(
        children: [
          /// background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/landing/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// user type selection section
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: const BoxDecoration(
                color: Color(0xFF292929),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  /// headline 1
                  Text(
                    'Welcome to Study Lancer',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),

                  /// headline 2
                  Text(
                    'Please select your role to get registered',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 20),

                  /// user type selection buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// student button
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                width: imageContainerSize,
                                height: imageContainerSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey.shade900, width: 5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                      offset: Offset(0, -5),
                                    ),
                                  ],
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/landing/male.jpg', fit: BoxFit.fill)),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Student',
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),


                      /// agent button
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                width: imageContainerSize,
                                height: imageContainerSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey.shade900, width: 5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                      offset: Offset(0, -5),
                                    ),
                                  ],
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/landing/male.jpg', fit: BoxFit.fill)),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Agent',
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// terms and conditions
                  RichText(
                      text: TextSpan(
                    children: [
                      const TextSpan(text: 'By continuing, you agree to our '),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndConditionsScreen()));
                            // navigate to terms and conditions page
                          },
                        text: 'Terms & Conditions',
                        style: TextStyle(color: Colors.orange.shade800),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
