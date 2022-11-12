import 'package:fifa_world_cup/models/groups_model.dart';
import 'package:fifa_world_cup/services/firebase_service.dart';
import 'package:fifa_world_cup/utils/constants/colors.dart';
import 'package:fifa_world_cup/utils/constants/fonts.dart';
import 'package:fifa_world_cup/widgets/groups_item.dart';
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
        child: StreamBuilder<List<GroupsModel>>(
            stream: readGroups(),
            builder: (context, AsyncSnapshot<List<GroupsModel>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('No internet'),
                );
              } else {
                final groups = snapshot.data!;
                print(groups);
                return ListView.builder(
                    itemCount: groups.length,
                    itemBuilder: (context, index) {
                      return GroupsItem(
                          width: width,
                          height: height,
                          bir: groups[index].bir.toString(),
                          ikki: groups[index].ikki.toString(),
                          uch: groups[index].uch.toString(),
                          tort: groups[index].tort.toString());
                    });
              }
            }),
      ),
    );
  }
}
