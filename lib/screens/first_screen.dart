import 'package:flutter/material.dart';
import 'package:flutter_realstate_ui/model/house_model.dart';
import 'package:flutter_realstate_ui/tools/border.dart';
import 'package:flutter_realstate_ui/tools/colors.dart';

import '../tools/text_style.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03,
                  vertical: height * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey.shade900,
                        ),
                        Text(
                          'California, USA',
                          style: textColor3,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.grey.shade900,
                        )
                      ],
                    ),
                    const Icon(
                      Icons.notifications,
                      color: iconColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Container(
                width: width * 0.9,
                height: height * 0.065,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                decoration: BoxDecoration(
                  color: searchBarColor,
                  borderRadius: getBorderRadiusWidget(context, 0.03),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey.shade900,
                    ),
                    SizedBox(width: width * 0.03),
                    const Text('Search'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: height * 0.04),
                width: width,
                height: height * 0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: HouseModel.houseModel.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: width * 0.6,
                      child: Card(
                        margin: EdgeInsets.all(width * 0.03),
                        shadowColor: iconColor,
                        color: Colors.white,
                        elevation: 5,
                        shape: getShapeWidget(context, 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(width * 0.01),
                                child: ClipRRect(
                                  borderRadius:
                                      getBorderRadiusWidget(context, 0.04),
                                  child: Image.asset(
                                    HouseModel.houseModel[index].imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      HouseModel.houseModel[index].title,
                                      style: textColor4,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: iconColor,
                                          size: width * 0.05,
                                        ),
                                        Text(
                                          HouseModel.houseModel[index].location,
                                          style: textColor13,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          HouseModel.houseModel[index].price,
                                          style: textColor12,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(width * 0.01),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius: getBorderRadiusWidget(
                                                context, 1),
                                          ),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                            size: width * 0.04,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: textColor2,
                    ),
                    Text(
                      'View all',
                      style: textColor4,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Card(
                  elevation: 5,
                  shadowColor: iconColor,
                  color: Colors.white,
                  shape: getShapeWidget(context, 0.04),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                      horizontal: width * 0.02,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: getBorderRadiusWidget(context, 0.03),
                            child: Image.asset(
                              'pic4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Modern Farmhouse',
                                style: textColor3,
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: iconColor,
                                    size: width * 0.04,
                                  ),
                                  const Text(
                                    'California',
                                    style: textColor13,
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$3,256,874',
                                    style: textColor12,
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
                                      size: width * 0.04,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
