import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:stranger/model/colour.dart';

class HomePage extends StatelessWidget {
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
      body: Column(
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
                      backgroundColor: e['status'] == 2
                          ? lightGrey
                          : context.cardColor,
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
                              decoration: boxDecorationWithRoundedCorners(backgroundColor: e['status'] == 2
                                  ? lightGrey
                                  : context.cardColor,
                                  borderRadius: radius(12)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeInImage.assetNetwork(fit: BoxFit.fill,
                                    height: deviceHeight*0.1,
                                    width: deviceWidth*0.3,
                                    placeholder: "noImage",
                                    image: e['course']['moduleimage'],),
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
                              decoration: boxDecorationWithRoundedCorners(backgroundColor: e['status'] == 2
                                  ? lightGrey
                                  : context.cardColor,
                                borderRadius: radius(12),),
                              // border: Border.all(color: Colors.blueAccent),),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(e['course']['module_code'],
                                    style: boldTextStyle(size: 12, color: e['status'] == 2
                                        ? Colors.grey[600]
                                        : Colors.black),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: deviceHeight * 0.01,
                                  ),
                                  Text(
                                    e['course']['training_provider'],
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
                                style: secondaryTextStyle(color: e['status'] == 2
                                    ? Colors.grey[600]
                                    : Col().ColorPrimary, size: 12)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("More Details", style: secondaryTextStyle(color:
                                e['status'] == 2
                                    ? Colors.grey[600]
                                    : Col().ColorPrimary
                                    , size: 12)),
                                SizedBox(
                                  width: deviceWidth * 0.01,
                                ),
                                Icon(Icons.arrow_forward_ios_sharp, color: e['status'] == 2
                                    ? Colors.grey
                                    : Col().ColorPrimary,
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
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          elevation: 8,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  // Stack(
                  //   children: <Widget>[
                  //     Center(
                  //       child: Padding(
                  //           padding: const EdgeInsets.only(top: 60, right: 50),
                  //           child: Column(
                  //             children: <Widget>[
                  //               Card(
                  //                 semanticContainer: true,
                  //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                  //                 elevation: 50,
                  //                 margin: EdgeInsets.all(50),
                  //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.all(4.0),
                  //                   child: CircleAvatar(backgroundImage: AssetImage(ic_user), radius: 55),
                  //                 ),
                  //               ),
                  //               SizedBox(height: spacing_middle),
                  //               text("Guest User", textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal)
                  //             ],
                  //           )),
                  //     ),
                  //     Align(alignment: Alignment.topLeft, child: Padding(padding: const EdgeInsets.only(left: spacing_standard_new, top: 30), child: Icon(Icons.clear)))
                  //   ],
                  // ),
                  // SizedBox(height: 30),
                  // Container(
                  //   color: sh_editText_background,
                  //   padding: EdgeInsets.fromLTRB(0, spacing_standard, 0, spacing_standard),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: <Widget>[
                  //       Expanded(
                  //         child: InkWell(
                  //           onTap: () {
                  //             ShOrderListScreen().launch(context);
                  //           },
                  //           child: Column(
                  //             children: <Widget>[
                  //               text("08", textColor: sh_colorPrimary, fontFamily: fontMedium),
                  //               SizedBox(height: spacing_control),
                  //               text("My Order", textColor: sh_textColorPrimary, fontFamily: fontMedium),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pop();
                  //             setState(() {
                  //               selectedTab = 1;
                  //             });
                  //           },
                  //           child: Column(
                  //             children: <Widget>[
                  //               text("07", textColor: sh_colorPrimary, fontFamily: fontMedium),
                  //               SizedBox(height: spacing_control),
                  //               text("Wishlist", textColor: sh_textColorPrimary, fontFamily: fontMedium),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // ListView.builder(
                  //   scrollDirection: Axis.vertical,
                  //   itemCount: list.length,
                  //   shrinkWrap: true,
                  //   physics: ScrollPhysics(),
                  //   itemBuilder: (context, index) {
                  //     return getDrawerItem(
                  //       list[index].image,
                  //       list[index].name,
                  //       callback: () {
                  //         ShSubCategory(category: list[index]).launch(context);
                  //       },
                  //     );
                  //   },
                  // ),
                  // SizedBox(height: 30),
                  // Divider(color: sh_view_color, height: 1),
                  // SizedBox(height: 20),
                  // getDrawerItem(sh_user_placeholder, sh_lbl_account, callback: () {
                  //   ShAccountScreen().launch(context);
                  //
                  //   /*bool isWishlist = launchScreen(context, ShAccountScreen.tag) ?? false;
                  //   if (isWishlist) {
                  //     selectedTab = 1;
                  //     setState(() {});
                  //   }*/
                  // }),
                  // getDrawerItem(sh_settings, sh_lbl_settings, callback: () {
                  //   ShSettingsScreen().launch(context);
                  // }),
                  // SizedBox(height: 20),
                  // getDrawerItem(null, sh_lbl_faq, callback: () {
                  //   ShFAQScreen().launch(context);
                  // }),
                  // getDrawerItem(null, sh_lbl_contact_us, callback: () {
                  //   ShContactUsScreen().launch(context);
                  // }),
                  // SizedBox(height: 30),
                  // Container(
                  //   decoration: BoxDecoration(shape: BoxShape.circle, color: sh_colorPrimary.withOpacity(0.2)),
                  //   padding: EdgeInsets.all(24),
                  //   child: Column(
                  //     children: <Widget>[
                  //       Image.asset(ic_app_icon, width: 40),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget>[
                  //           text("Shop", textColor: sh_textColorPrimary, fontSize: textSizeMedium, fontFamily: fontBold),
                  //           text("hop", textColor: sh_colorPrimary, fontSize: textSizeMedium, fontFamily: fontBold),
                  //         ],
                  //       ),
                  //       text("v 1.0", textColor: sh_textColorPrimary, fontSize: textSizeSmall)
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}