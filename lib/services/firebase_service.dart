import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fifa_world_cup/models/groups_model.dart';

Stream<List<GroupsModel>> readGroups() => FirebaseFirestore.instance
    .collection('groups')
    .snapshots()
    .map((snapshot) => snapshot.docs.map((doc) => GroupsModel.fromJson(doc.data())).toList());
