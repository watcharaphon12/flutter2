import 'dart:convert';

class User {
  List<User> getUserFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<User>.from(jsonData.map((x) => User.fromJson(x)));
  }

  String getUserToJson(List<User> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
  }
  //User getUserFromJson(String str) => User.fromJson(json.decode(str));
  // String getUserToJson(User data) => json.encode(data.toJson());
  int? id;
  String? code;
  String? email;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? apiToken;
  String? status;
  String? nameth;
  String? nameen;
  String? deptCode;
  String? groupCode;
  String? permissionCode;
  String? factoryCode;
  String? titleCode;
  String? typeCode;
  String? prefixCode;
  String? internalPhone;
  int? wage;
  String? startDate;
  String? packingDate;
  String? resignationDate;
  String? resignationReason;
  String? statusRepair;
  String? departmentNameth;
  String? groupNameth;
  String? titleNameth;
  String? typeNameth;
  String? prefixNameth;

  User(
      {this.id,
      this.code,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.apiToken,
      this.status,
      this.nameth,
      this.nameen,
      this.deptCode,
      this.groupCode,
      this.permissionCode,
      this.factoryCode,
      this.titleCode,
      this.typeCode,
      this.prefixCode,
      this.internalPhone,
      this.wage,
      this.startDate,
      this.packingDate,
      this.resignationDate,
      this.resignationReason,
      this.statusRepair,
      this.departmentNameth,
      this.groupNameth,
      this.titleNameth,
      this.typeNameth,
      this.prefixNameth});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    apiToken = json['api_token'];
    status = json['status'];
    nameth = json['nameth'];
    nameen = json['nameen'];
    deptCode = json['dept_code'];
    groupCode = json['group_code'];
    permissionCode = json['permission_code'];
    factoryCode = json['factory_code'];
    titleCode = json['title_code'];
    typeCode = json['type_code'];
    prefixCode = json['prefix_code'];
    internalPhone = json['internal_phone'];
    wage = json['wage'];
    startDate = json['start_date'];
    packingDate = json['packing_date'];
    resignationDate = json['resignation_date'];
    resignationReason = json['resignation_ reason'];
    statusRepair = json['status_repair'];
    departmentNameth = json['department_nameth'];
    groupNameth = json['group_nameth'];
    titleNameth = json['title_nameth'];
    typeNameth = json['type_nameth'];
    prefixNameth = json['prefix_nameth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['api_token'] = this.apiToken;
    data['status'] = this.status;
    data['nameth'] = this.nameth;
    data['nameen'] = this.nameen;
    data['dept_code'] = this.deptCode;
    data['group_code'] = this.groupCode;
    data['permission_code'] = this.permissionCode;
    data['factory_code'] = this.factoryCode;
    data['title_code'] = this.titleCode;
    data['type_code'] = this.typeCode;
    data['prefix_code'] = this.prefixCode;
    data['internal_phone'] = this.internalPhone;
    data['wage'] = this.wage;
    data['start_date'] = this.startDate;
    data['packing_date'] = this.packingDate;
    data['resignation_date'] = this.resignationDate;
    data['resignation_ reason'] = this.resignationReason;
    data['status_repair'] = this.statusRepair;
    data['department_nameth'] = this.departmentNameth;
    data['group_nameth'] = this.groupNameth;
    data['title_nameth'] = this.titleNameth;
    data['type_nameth'] = this.typeNameth;
    data['prefix_nameth'] = this.prefixNameth;
    return data;
  }
}
