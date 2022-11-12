import 'package:fifa_world_cup/utils/constants/colors.dart';
import 'package:fifa_world_cup/utils/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
        title: Text(
          'Groups',
          style: MyFonts.poppinsRegular.copyWith(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .05),
        child: Column(children: [
          SizedBox(height: height * .05),
          Container(
            width: width * .9,
            height: height * .274,
            decoration: BoxDecoration(color: MyColors.secondColor, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * .015, horizontal: width * .015),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    Text(
                      '   Group A                          W     D     L      P',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                Divider(
                  height: height * .03,
                  color: Colors.grey[700],
                  thickness: width * .002,
                  endIndent: width * .011,
                  indent: width * .01,
                ),
                Row(
                  children: [
                    SizedBox(width: width * .01),
                    Container(
                        height: height * .037,
                        width: width * .01,
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5))),
                    SizedBox(width: width * .02),
                    Container(
                      height: height * .037,
                      width: width * .12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        'assets/svg/flags/qatar.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * .02),
                    Text(
                      'Qatar',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: height * .005),
                Container(width: width * .86, height: height * .001, color: Color.fromARGB(255, 57, 57, 57)),
                SizedBox(height: height * .005),
                Row(
                  children: [
                    SizedBox(width: width * .01),
                    Container(
                        height: height * .037,
                        width: width * .01,
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5))),
                    SizedBox(width: width * .02),
                    Container(
                      height: height * .037,
                      width: width * .12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        'assets/svg/flags/ecuador.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * .02),
                    Text(
                      'Ecuador',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: height * .005),
                Container(width: width * .86, height: height * .001, color: Color.fromARGB(255, 57, 57, 57)),
                SizedBox(height: height * .005),
                Row(
                  children: [
                    SizedBox(width: width * .04),
                    Container(
                      height: height * .037,
                      width: width * .12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        'assets/svg/flags/netherlands.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * .02),
                    Text(
                      'Netherlands',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: height * .005),
                Container(width: width * .86, height: height * .001, color: Color.fromARGB(255, 57, 57, 57)),
                SizedBox(height: height * .005),
                Row(
                  children: [
                    SizedBox(width: width * .04),
                    Container(
                      height: height * .037,
                      width: width * .12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        'assets/svg/flags/senegal.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * .02),
                    Text(
                      'Senegal',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
