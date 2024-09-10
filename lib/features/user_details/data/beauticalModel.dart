import 'package:beauty_solution_web/features/main_page/data/users_beautician_data.dart';

class BeauticalUserModeldata {
  final BeauticiansModel userData;

  BeauticalUserModeldata({
    required this.userData,
  });

  factory BeauticalUserModeldata.fromJson(Map<String, dynamic> json) => BeauticalUserModeldata(
        userData: BeauticiansModel.fromJson(json["data"]),
      );
}

class BeauticiansModel {
  int? id;
  String? beauticianName;
  dynamic licenseNumber;
  dynamic licenseImage;
  dynamic nationalId;
  dynamic nationality;
  dynamic profilePicture;
  dynamic previousWorkImages;
  String? locationName;
  String? latitude;
  String? longitude;
  String? city;
  String? mobileNumber;
  String? email;
  dynamic iban;
  dynamic bankName;
  dynamic logo;
  List<String>? profileImages;
  List<WorkingHour>? workingHours;
  String? holidayWorkingHours;
  String? festivalWorkingHours;
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

  BeauticiansModel({
    this.id,
    this.beauticianName,
    this.licenseNumber,
    this.licenseImage,
    this.nationalId,
    this.nationality,
    this.profilePicture,
    this.previousWorkImages,
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

  factory BeauticiansModel.fromJson(Map<String, dynamic> json) => BeauticiansModel(
        id: json["id"],
        beauticianName: json["beauticianName"],
        licenseNumber: json["licenseNumber"],
        licenseImage: json["licenseImage"],
        nationalId: json["nationalId"],
        nationality: json["nationality"],
        profilePicture: json["profilePicture"],
        previousWorkImages: json["previousWorkImages"],
        locationName: json["locationName"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: json["city"],
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"] == null ? [] : List<String>.from(json["profileImages"]!.map((x) => x)),
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
