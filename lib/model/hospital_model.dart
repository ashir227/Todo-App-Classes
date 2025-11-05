class HospitalModel {
  final String? id;
  final String name;
  final String dob;
  final String gender;
  final int num;
  final String disease;

  HospitalModel({
    this.id,
    required this.name,
    required this.dob,
    required this.gender,
    required this.num,
    required this.disease,
  });

  // ✅ From JSON (handles both string/int types safely)
  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      id: json['id']?.toString(),
      name: json['name'] ?? '',
      dob: json['dob'] ?? '',
      gender: json['gender'] ?? '',
      num: int.tryParse(json['num'].toString()) ?? 0,
      disease: json['disease'] ?? '',
    );
  }

  // ✅ To JSON (for POST / PUT requests)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'dob': dob,
      'gender': gender,
      'num': num,
      'disease': disease,
      if (id != null) 'id': id,
    };
  }
}
