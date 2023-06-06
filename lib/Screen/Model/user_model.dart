class UserModel {
  int? id;
  String? name, username, email, phone, website;

  AddressModel? addressModel;
  CompanyModel? companyModel;

  UserModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
      this.addressModel,
      this.companyModel});

  factory UserModel.fromJson(Map m1) {
    return UserModel(
        name: m1['name'],
        id: m1['id'],
        email: m1['email'],
        phone: m1['phone'],
        username: m1['username'],
        website: m1['website'],
        addressModel: AddressModel.fromJson(m1['address']),
        companyModel: CompanyModel.fromJson(m1['company']));
  }
}

class AddressModel {
  String? street, suite, city, zipcode;
  GeoModel? geoModel;

  AddressModel(
      {this.street, this.suite, this.city, this.zipcode, this.geoModel});

  factory AddressModel.fromJson(Map m1) {
    return AddressModel(
        street: m1['street'],
        suite: m1['suite'],
        city: m1['city'],
        zipcode: m1['zipcode'],
        geoModel: GeoModel.fromJson(m1['geo']));
  }
}

class CompanyModel {
  String? name, catchPhrase, bs;

  CompanyModel({this.name, this.catchPhrase, this.bs});

  factory CompanyModel.fromJson(Map m1) {
    return CompanyModel(
        name: m1['name'], bs: m1['bs'], catchPhrase: m1['catchPhrase']);
  }
}

class GeoModel {
  String? lat, lng;

  GeoModel({this.lat, this.lng});

  factory GeoModel.fromJson(Map m1) {
    return GeoModel(lat: m1['lat'], lng: m1['lng']);
  }
}
