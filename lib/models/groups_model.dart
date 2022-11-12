class GroupsModel {
  int bir;
  int ikki;
  int uch;
  int tort;

  GroupsModel({
    required this.bir,
    required this.ikki,
    required this.uch,
    required this.tort,
  });

  static GroupsModel fromJson(Map<String, dynamic> json) => GroupsModel(
        bir: json['bir'],
        ikki: json['ikki'],
        uch: json['uch'],
        tort: json['tort'],
      );
}
