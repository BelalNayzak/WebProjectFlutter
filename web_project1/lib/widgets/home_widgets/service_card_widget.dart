import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:web_project1/constants/font_sizes.dart';

class ServiceCardWidget extends StatelessWidget {
  final String serviceName;
  final String serviceDescription;
  final String serviceRouteName;

  const ServiceCardWidget(
      {super.key,
        required this.serviceName,
        required this.serviceDescription,
        required this.serviceRouteName});

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return Container(
      height: standardSize.width * 0.25,
      width: standardSize.width * 0.2,
      margin: EdgeInsets.all(standardSize.width * 0.01),
      color: const Color.fromRGBO(25, 33, 42, 1),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                  width: standardSize.width * 0.06,
                  child: Image.asset('assets/images/frame1.png'))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: standardSize.width * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.05),
                  child: Text(
                    serviceName,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * 0.015,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: Text(
                    serviceDescription,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: standardSize.width * 0.01,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: const Divider(thickness: 0.1, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.02),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(serviceRouteName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: standardSize.width * 0.01,
                          ),
                        ),
                        SizedBox(
                            width: standardSize.width * 0.025,
                            child: Image.asset('assets/images/frame2.png'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
