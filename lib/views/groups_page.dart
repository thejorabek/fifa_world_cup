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
            height: height * .25,
            decoration: BoxDecoration(color: MyColors.secondColor, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    Text(
                      'Country                           W     D     L      P',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                Divider(
                  height: height * .03,
                  color: Colors.grey[700],
                  thickness: width * .002,
                  endIndent: width * .01,
                  indent: width * .01,
                ),
                Row(
                  children: [
                    Container(
                      height: height * .04,
                      width: width * .12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.amber),
                    ),
                    SizedBox(width: width * .02),
                    Text(
                      'Korea Republic',
                      style: MyFonts.poppinsRegular.copyWith(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text('2',style: TextStyle(),),
                    Text('2'),
                    Text('2'),
                    Text('2'),
                  ],
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
