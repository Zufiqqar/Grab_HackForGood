import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
//Component Test
import 'generic_component/schedule_card_component.dart';

import './navigation_drawer.dart';
import 'utils/material_utils.dart';

class PublicSchedulesPage extends StatefulWidget {
  const PublicSchedulesPage({Key? key}) : super(key: key);

  @override
  State<PublicSchedulesPage> createState() => _PublicSchedulesPageState();
}

class _PublicSchedulesPageState extends State<PublicSchedulesPage> {
  int count = -1;
  List? dummy = [{"a"},{"a"},{"a"},{"a"}];

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {
              // ShSearchScreen().launch(context);
            },
          )
        ],
        // title: text(title, textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children:
          dummy != null
              ? dummy!.map((e) {
            if(count >= dummy!.length-1){
              count = -1;
              print(count);
            }
            count++;
            return InkWell(
              onTap: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => courseDetailScreen(id: e['id'].toString())),
                // );
              }, // Image tapped
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    decoration: boxDecorationWithRoundedCorners(
                      backgroundColor: context.cardColor,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: deviceHeight * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              height: deviceHeight*0.1,
                              width: deviceWidth*0.3,
                              decoration: boxDecorationWithRoundedCorners(backgroundColor: context.cardColor,
                                  borderRadius: radius(12)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // FadeInImage.assetNetwork(fit: BoxFit.fill,
                                  //   height: deviceHeight*0.1,
                                  //   width: deviceWidth*0.3,
                                  //   placeholder: "noImage",
                                  //   image: e['course']['moduleimage'],),
                                  // Text((e.month).validate(), style: secondaryTextStyle(color: white)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: deviceWidth * 0.03,
                            ),
                            Container(
                              height: deviceHeight*0.1,
                              width: deviceWidth*0.5,
                              decoration: boxDecorationWithRoundedCorners(backgroundColor: context.cardColor,
                                borderRadius: radius(12),),
                              // border: Border.all(color: Colors.blueAccent),),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("e['course']['module_code']",
                                    style: boldTextStyle(size: 12, color: Colors.black),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: deviceHeight * 0.01,
                                  ),
                                  Text(
                                    "e['course']['training_provider']",
                                    style: secondaryTextStyle(size: 10),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                  // Text((e.month).validate(), style: secondaryTextStyle(color: white)),
                                ],
                              ),
                            ),
                          ],
                        ).paddingOnly(right: deviceWidth*0.04, left: deviceWidth*0.04),
                        SizedBox(
                          height: deviceHeight * 0.01,
                        ),
                        const Divider(thickness: 0.5),
                        SizedBox(
                          height: deviceHeight * 0.01,
                        ),
                        Row(
                          children: [
                            Text("newdateListstart[count]" + " to " + "newdateListend[count]",
                                style: secondaryTextStyle(color: Col().ColorPrimary, size: 12)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("More Details", style: secondaryTextStyle(color: Col().ColorPrimary
                                    , size: 12)),
                                SizedBox(
                                  width: deviceWidth * 0.01,
                                ),
                                Icon(Icons.arrow_forward_ios_sharp, color: Col().ColorPrimary,
                                    size: 14),
                              ],
                            ).onTap(() async {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => courseDetailScreen(id: e['id'].toString())),
                              // );
                            }).expand()
                          ],
                        ).paddingOnly(right: deviceWidth * 0.04, left: deviceWidth * 0.04),
                        SizedBox(
                          height: deviceHeight * 0.02,
                        ),
                      ],
                    ),
                  ).paddingBottom(deviceHeight * 0.02),
                  // Positioned(
                  //   left: 16.0,
                  //   child: Container(
                  //     padding: const EdgeInsets.all(2.0),
                  //     decoration: boxDecorationWithRoundedCorners(backgroundColor: ColorPrimary, borderRadius: radius(20)),
                  //     child: Text(e['course']["id"].toString(), style: secondaryTextStyle(color: white)).paddingOnly(right: 10.0, left: 10.0),
                  //   ),
                  // ),
                ],
              ),
            );
          }).toList()
              : [],
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
