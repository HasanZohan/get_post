class User {
  String message;
  String userId;
  String name;
  String email;
  String userType;
  String address;
  String phone;
  String gender;
  String status;
  bool validity;

  User(
      {this.message,
        this.userId,
        this.name,
        this.email,
        this.userType,
        this.address,
        this.phone,
        this.gender,
        this.status,
        this.validity
      }
      );

  User.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    userType = json['user_type'];
    address = json['address'];
    phone = json['phone'];
    gender = json['gender'];
    status = json['status'];
    validity = json['validity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['user_type'] = this.userType;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['status'] = this.status;
    data['validity'] = this.validity;
    return data;
  }
}
