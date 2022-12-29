
class getMachine{
  String? code;
  String? name;
  getMachine({this.code,
  required this.name
});

  factory getMachine.fromJson(Map<String, dynamic> json) {
    return getMachine(
        code: json['code'],
        name: json['nameth']
    );
  }


}