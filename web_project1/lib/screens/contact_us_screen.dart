import 'package:flutter/material.dart';
import 'package:web_project1/constants/font_sizes.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class ContactUsScreen extends StatelessWidget {
  static const routeName = '/contact-us';

  const ContactUsScreen({super.key});

  Widget textFieldWidget(String labelText, String hintText) {
    return TextField(
      decoration: InputDecoration(labelText: labelText, hintText: hintText),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrollControllerContact = ScrollController();
    final standardSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace:
            AppBarWidget(routeName: routeName, appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerContact,
        child: SingleChildScrollView(
          controller: scrollControllerContact,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/contact-us/ContactUsBackGround.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(height: standardSize.width * 0.1),
                  Container(
                    height: standardSize.width * 0.45,
                    margin: EdgeInsets.symmetric(
                        horizontal: (standardSize.width * 0.15)),
                    color: Colors.white.withOpacity(0.15),
                    child: Row(
                      children: [
                        Container(
                          width: standardSize.width * 0.25,
                          padding:
                          EdgeInsets.only(left: standardSize.width * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: standardSize.width * .045),
                              Text(
                                'Contact us',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: FontSizes.xxMedium,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                  width: standardSize.width * 0.13,
                                  child: Image.asset(
                                      'assets/images/contact-us/Progress.png')),
                              SizedBox(height: standardSize.width * .015),
                              Text(
                                'Contact Information',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: FontSizes.xSmall,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.48,
                                ),
                              ),
                              Text(
                                'Fill up the form and our Team will get back to you within 24 hours.',
                                style: TextStyle(
                                  color: const Color(0x99ffffff),
                                  fontSize: FontSizes.xxSmall,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.32,
                                ),
                              ),
                              SizedBox(height: standardSize.width * .055),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+91 98765 43210'),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+91 98765 43210'),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+91 98765 43210'),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+91 98765 43210'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        RotatedBox(
                            quarterTurns: 1,
                            child: Divider(
                              color: Colors.black,
                              indent: standardSize.width * .025,
                              endIndent: standardSize.width * .06,
                            )),
                        Column(
                          children: [
                            SizedBox(height: standardSize.width * 0.075),
                            Wrap(
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: standardSize.width * 0.03),
                                    width: standardSize.width * 0.15,
                                    child: textFieldWidget(
                                        'First Name', 'Enter your first name')),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: standardSize.width * 0.03),
                                    width: standardSize.width * 0.15,
                                    child: textFieldWidget(
                                        'Last Name', 'Enter your last name')),
                              ],
                            ),
                            Wrap(
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: standardSize.width * 0.03),
                                    width: standardSize.width * 0.15,
                                    child: textFieldWidget(
                                        'Mail', 'Enter your mail')),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: standardSize.width * 0.03),
                                    width: standardSize.width * 0.15,
                                    child: textFieldWidget(
                                        'Phone', 'Enter your phone')),
                              ],
                            ),
                            SizedBox(height: standardSize.width * 0.13),
                            SizedBox(
                                width: standardSize.width * 0.35,
                                child: textFieldWidget(
                                    'Message', 'Enter your message...')),
                            SizedBox(height: standardSize.width * 0.05),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: standardSize.width * 0.25),
                                  child: FilledButton(
                                      onPressed: () {},
                                      style: FilledButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 11.0),
                                        child: Text('Send Message'),
                                      )),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  FooterWidget(footerModel: footerModelData),
                ],
              ),
          ),


          /*Stack(
            children: [
              Image.asset('assets/images/contact-us/Contact.png'),
              Column(

              ),
              Positioned(
                  top: standardSize.width * 0.46,
                  left: standardSize.width * 0.08,
                  child: SizedBox(
                      width: standardSize.width * 0.14,
                      child: Image.asset('assets/images/contact-us/Available.png'))),


            ],
          ),*/
        ),
      ),
    );
  }
}
