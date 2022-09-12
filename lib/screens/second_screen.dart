import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_realstate_ui/tools/border.dart';
import 'package:flutter_realstate_ui/tools/colors.dart';

import '../tools/text_style.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const String desc =
        'Real estate is a legal term designating the rights someone has to land and buildings. In most cases, real estate comprises land plus real property';
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
              vertical: height * 0.015,
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: iconColor, offset: Offset(0, 5), blurRadius: 10),
                  ]),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.05),
                        child: Image.asset(
                          'pic1.jpg',
                          width: width,
                          height: height * 0.6,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: height * 0.01,
                        left: width * 0.01,
                        child: Container(
                          margin: EdgeInsets.all(width * 0.03),
                          padding: EdgeInsets.all(width * 0.01),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: height * 0.03,
                        child: ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: Container(
                              width: width * 0.9,
                              height: height * 0.2,
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.02,
                                  horizontal: width * 0.02),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cassablanca Ground Canyon',
                                    style: textColor7,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'California ,USA',
                                        style: textColor10,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$2,587,456',
                                        style: textColor6,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(width * 0.01),
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              getBorderRadiusWidget(context, 1),
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: width * 0.05,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.03,
                      left: width * 0.03,
                      top: height * 0.05,
                      bottom: height * 0.03),
                  child: Text(
                    desc,
                    style: textColor5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bed,
                              color: primaryColor,
                              size: width * 0.1,
                            ),
                            Text(
                              '2',
                              style: textColor1,
                            ),
                          ],
                        ),
                        Text(
                          'Bedrooms',
                          style: textColor5,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bathtub_outlined,
                              color: primaryColor,
                              size: width * 0.1,
                            ),
                            Text(
                              '2',
                              style: textColor1,
                            ),
                          ],
                        ),
                        Text(
                          'Bathrooms',
                          style: textColor5,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.square_outlined,
                              color: primaryColor,
                              size: width * 0.1,
                            ),
                            Text(
                              '600',
                              style: textColor1,
                            ),
                          ],
                        ),
                        Text(
                          'Square feets',
                          style: textColor5,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$2,587,456', style: textColor1),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        alignment: Alignment.center,
                        elevation: 10,
                        shadowColor: primaryColor2,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08,
                          vertical: height * 0.016,
                        ),
                        shape: getShapeWidget(context, 0.03),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Buy Now',
                        style: textColor7,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
