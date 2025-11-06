class HospitalModel {
  final String? id;
  final String name;
  final int dob;
  final String gender;
  final int contact;
  final String disease;

  HospitalModel({
    this.id,
    required this.name,
    required this.dob,
    required this.gender,
    required this.contact,
    required this.disease,
  });

  // ✅ From JSON (handles both string/int types safely)
  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      id: json['id']?.toString(),
      name: json['name'] ?? '',
      dob: json['dob'] ?? '',
      gender: json['gender'] ?? '',
      contact: int.tryParse(json['num'].toString()) ?? 0,
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
