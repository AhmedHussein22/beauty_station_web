import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';
class SalonUserModeldata {
  final SalonsModel userData;

  SalonUserModeldata({
    required this.userData,
  });

  factory SalonUserModeldata.fromJson(Map<String, dynamic> json) => SalonUserModeldata(
        userData: SalonsModel.fromJson(json["data"]),
      );
}

class SalonsModel {
  int? id;
  String? salonName;
  dynamic commercialRecordNumber;
  dynamic commercialRecordImage;
  dynamic salonImages;
  String? locationName;
  String? latitude;
  String? longitude;
  String? city;
  String? mobileNumber;
  String? email;
  dynamic iban;
  dynamic bankName;
  dynamic logo;
  dynamic profileImages;
  List<WorkingHour>? workingHours;
  dynamic holidayWorkingHours;
  dynamic festivalWorkingHours;
  dynamic servicesAndPrices;
  dynamic socialMediaAccounts;
  dynamic website;
  dynamic customerServicePhone;
  dynamic customerServiceEmail;
  String? registeredBy;
  dynamic sellerMobile;
  String? sellerRegistrationDate;
  int? contractPrecentage;
  bool? isAgreeToContract;
  bool? contractAgreement;
  dynamic pdfUrl;

  SalonsModel({
    this.id,
    this.salonName,
    this.commercialRecordNumber,
    this.commercialRecordImage,
    this.salonImages,
    this.locationName,
    this.latitude,
    this.longitude,
    this.city,
    this.mobileNumber,
    this.email,
    this.iban,
    this.bankName,
    this.logo,
    this.profileImages,
    this.workingHours,
    this.holidayWorkingHours,
    this.festivalWorkingHours,
    this.servicesAndPrices,
    this.socialMediaAccounts,
    this.website,
    this.customerServicePhone,
    this.customerServiceEmail,
    this.registeredBy,
    this.sellerMobile,
    this.sellerRegistrationDate,
    this.contractPrecentage,
    this.isAgreeToContract,
    this.contractAgreement,
    this.pdfUrl,
  });

  factory SalonsModel.fromJson(Map<String, dynamic> json) => SalonsModel(
        id: json["id"],
        salonName: json["salonName"],
        commercialRecordNumber: json["commercialRecordNumber"],
        commercialRecordImage: json["commercialRecordImage"],
        salonImages: json["salonImages"],
        locationName: json["locationName"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: json["city"],
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"],
        workingHours: json["workingHours"] == null ? [] : List<WorkingHour>.from(json["workingHours"]!.map((x) => WorkingHour.fromJson(x))),
        holidayWorkingHours: json["holidayWorkingHours"],
        festivalWorkingHours: json["festivalWorkingHours"],
        servicesAndPrices: json["servicesAndPrices"],
        socialMediaAccounts: json["socialMediaAccounts"],
        website: json["website"],
        customerServicePhone: json["customerServicePhone"],
        customerServiceEmail: json["customerServiceEmail"],
        registeredBy: json["registeredBy"],
        sellerMobile: json["sellerMobile"],
        sellerRegistrationDate: json["sellerRegistrationDate"],
        contractPrecentage: json["contractPrecentage"],
        isAgreeToContract: json["isAgreeToContract"],
        contractAgreement: json["contractAgreement"],
        pdfUrl: json["pdfUrl"],
      );
}
