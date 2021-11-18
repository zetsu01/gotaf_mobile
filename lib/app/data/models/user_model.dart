class UserModel {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address;
  String? createdAt;
  String? updatedAt;
  String? image;
  String? birthDate;
  String? role;
  bool? hasAudio;

  UserModel({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.image,
    this.birthDate,
    this.role,
    this.hasAudio,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    id = json['id'];
    name = json['name'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    image = json['image'];
    birthDate = json['birthDate'];
    role = json['role'];
    hasAudio = json['hasAudio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    data['id'] = this.id;
    data['name'] = this.name;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['image'] = this.image;
    data['birthDate'] = this.birthDate;
    data['role'] = this.role;
    data['hasAudio'] = this.hasAudio;
    return data;
  }
}
