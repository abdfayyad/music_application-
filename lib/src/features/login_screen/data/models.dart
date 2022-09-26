class LoginModel {
  LoginModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final int status;
  late final String message;
  late final Data data;

  LoginModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.user,
    required this.token,
  });
  late final User user;
  late final Token token;

  Data.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']);
    token = Token.fromJson(json['token']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['token'] = token.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.cardNumber,
    required this.registeredAt,
    required this.emailVerifiedAt,
    required this.roleId,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String mobile;
  late final String cardNumber;
  late final String registeredAt;
  late final String emailVerifiedAt;
  late final int roleId;

  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    cardNumber = json['card_number'];
    registeredAt = json['registeredAt'];
    emailVerifiedAt = json['email_verified_at'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['mobile'] = mobile;
    _data['card_number'] = cardNumber;
    _data['registeredAt'] = registeredAt;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['role_id'] = roleId;
    return _data;
  }
}

class Token {
  Token({
    required this.accessToken,
    required this.type,
  });
  late final String accessToken;
  late final String type;

  Token.fromJson(Map<String, dynamic> json){
    accessToken = json['access_token'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['access_token'] = accessToken;
    _data['type'] = type;
    return _data;
  }
}