// To parse this JSON data, do
//
//     final salonUsers = salonUsersFromJson(jsonString);

class SalonUsers {
  final List<SalonUserData>? data;

  SalonUsers({
    this.data,
  });

  factory SalonUsers.fromJson(Map<String, dynamic> json) => SalonUsers(
        data: json["data"] == null
            ? []
            : List<SalonUserData>.from(
                json["data"]!.map((x) => SalonUserData.fromJson(x))),
      );
}

class SalonUserData {
  final int? id;
  final String? salonName;
  final String? commercialRecordNumber;
  final String? commercialRecordImage;
  final List<dynamic>? salonImages;
  final String? locationName;
  final String? city;
  final String? latitude;
  final String? longitude;
  final String? mobileNumber;
  final String? email;
  final String? iban;
  final String? bankName;
  final String? logo;
  final List<dynamic>? profileImages;
  final List<WorkingHour>? workingHours;
  final String? holidayWorkingHours;
  final String? festivalWorkingHours;
  final String? servicesAndPrices;
  final String? socialMediaAccounts;
  final String? website;
  final String? customerServicePhone;
  final String? customerServiceEmail;
  final String? registeredBy;
  final String? sellerMobile;
  final String? sellerRegistrationDate;
  final double? contractPrecentage;
  final bool? isAgreeToContract;

  SalonUserData({
    this.id,
    this.salonName,
    this.commercialRecordNumber,
    this.commercialRecordImage,
    this.salonImages,
    this.locationName,
    this.city,
    this.latitude,
    this.longitude,
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
  });

  factory SalonUserData.fromJson(Map<String, dynamic> json) => SalonUserData(
        id: json["id"],
        salonName: json["salonName"],
        commercialRecordNumber: json["commercialRecordNumber"],
        commercialRecordImage: json["commercialRecordImage"],
        salonImages: json["salonImages"] == null
            ? []
            : List<dynamic>.from(json["salonImages"]!.map((x) => x)),
        locationName: json["locationName"],
        city: json["city"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"] == null
            ? []
            : List<dynamic>.from(json["profileImages"]!.map((x) => x)),
        workingHours: json["workingHours"] == null
            ? []
            : List<WorkingHour>.from(
                json["workingHours"]!.map((x) => WorkingHour.fromJson(x))),
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
        isAgreeToContract: json["isAgreeToContract"],
        contractPrecentage: json["contractPrecentage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "salonName": salonName,
        "commercialRecordNumber": commercialRecordNumber,
        "commercialRecordImage": commercialRecordImage,
        "salonImages": salonImages == null
            ? []
            : List<dynamic>.from(salonImages!.map((x) => x)),
        "locationName": locationName,
        "city": city,
        "latitude": latitude,
        "longitude": longitude,
        "mobileNumber": mobileNumber,
        "email": email,
        "iban": iban,
        "bankName": bankName,
        "logo": logo,
        "profileImages": profileImages == null
            ? []
            : List<dynamic>.from(profileImages!.map((x) => x)),
        "workingHours": workingHours == null
            ? []
            : List<dynamic>.from(workingHours!.map((x) => x.toJson())),
        "holidayWorkingHours": holidayWorkingHours,
        "festivalWorkingHours": festivalWorkingHours,
        "servicesAndPrices": servicesAndPrices,
        "socialMediaAccounts": socialMediaAccounts,
        "website": website,
        "customerServicePhone": customerServicePhone,
        "customerServiceEmail": customerServiceEmail,
        "registeredBy": registeredBy,
        "sellerMobile": sellerMobile,
        "sellerRegistrationDate": sellerRegistrationDate,
        "isAgreeToContract": isAgreeToContract,
        "contractPrecentage": contractPrecentage,
      };
}

class WorkingHour {
  final int? id;
  final String? day;
  final String? from;
  final String? to;

  WorkingHour({
    this.id,
    this.day,
    this.from,
    this.to,
  });

  factory WorkingHour.fromJson(Map<String, dynamic> json) => WorkingHour(
        id: json["id"],
        day: json["day"],
        from: json["from"],
        to: json["to"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "day": day,
        "from": from,
        "to": to,
      };
}
