class DropDownTestModel {
  final String? name, driverId, driverName;
  final int? id, driverIdPre;

  DropDownTestModel({this.driverIdPre, this.driverId, this.name, this.id, this.driverName});

  factory DropDownTestModel.fromJson(Map<String, dynamic> json) {
    return DropDownTestModel(name: json['name'], id: json['id'], driverId: json['driverId'], driverName: json['driverName'], driverIdPre: json['driverIdPre']);
  }
}

class OfferData {
  final double price;
  final List<InsuranceData> insuranceCheckBox;
  final String sPrice, title;
  final bool isCheckBoxvisble;
  final int type;

  OfferData({required this.price, required this.insuranceCheckBox, required this.sPrice, required this.title, required this.isCheckBoxvisble, required this.type});

  factory OfferData.fromJson(Map<String, dynamic> json) {
    return OfferData(
      title: json['title'],
      price: json['price'],
      insuranceCheckBox: json['insuranceCheckBox'] as List<InsuranceData>,
      sPrice: json['sPrice'],
      isCheckBoxvisble: json['isCheckBoxvisble'],
      type: json['type'],
    );
  }
}

class InsuranceData {
  final String title;
  final bool value;

  InsuranceData({required this.title, required this.value});
  factory InsuranceData.fromJson(Map<String, dynamic> json) {
    return InsuranceData(
      title: json['title'],
      value: json['value'],
    );
  }
}

class PercentageData {
  int driverIdPre;
  bool isActive;

  PercentageData({required this.driverIdPre, required this.isActive});

  factory PercentageData.fromJson(Map<String, dynamic> json) {
    return PercentageData(driverIdPre: json['driverIdPre'], isActive: json['isActive']);
  }
}
