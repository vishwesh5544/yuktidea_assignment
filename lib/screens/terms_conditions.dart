import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yuktidea/models/terms_conditions.dart';
import 'package:yuktidea/services/terms_and_conditions_service.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  TermsAndConditionsService termsAndConditionsService = TermsAndConditionsService();
  TermsConditions? termsAndConditions;
  final fontcolour = const Color(0xFFD9896A);

  @override
  void initState() {
    super.initState();
    fetchTermsAndConditions();
  }

  void fetchTermsAndConditions() async {
    var termsAndConditions = await termsAndConditionsService.getTermsAndConditions();
    if (termsAndConditions.status) {
      setState(() {
        this.termsAndConditions = termsAndConditions.data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212426),
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            /// close button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF212426),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(-3, -3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/terms/terms_icon.png',
                  height: 50,
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: fontcolour,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Update 16/03/2023',
                      style: TextStyle(
                        color: Color(0xFF7D7E80),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// html
            Expanded(
              child: SingleChildScrollView(
                child: Html(
                  data: termsAndConditions?.content ?? '',
                  shrinkWrap: true,
                  style: {
                    'body': Style(
                      color: Colors.white,
                      fontSize: FontSize(14),
                    ),
                    'h1': Style(
                      color: fontcolour,
                      fontSize: FontSize(15),
                    ),
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
