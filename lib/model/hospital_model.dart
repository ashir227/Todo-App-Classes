class Hosiptal_Model {
  String? name;
  String? dob;
  String? gender;
  String? num;
  String? disease;
  String? id;

  Hosiptal_Model({this.name, this.dob, this.gender, this.num, this.disease});

  Hosiptal_Model.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dob = json['dob'];
    gender = json['gender'];
    num = json['num'];
    disease = json['disease'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['num'] = this.num;
    data['disease'] = this.disease;
    data['id'] = this.id;
    return data;
  }
}
