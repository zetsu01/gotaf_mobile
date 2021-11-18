class LoginResponse {
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

  LoginResponse({
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
}
