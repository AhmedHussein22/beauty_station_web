class BeauticiansUsers {
  final List<BeauticianUserData>? data;

  BeauticiansUsers({
    this.data,
  });

  factory BeauticiansUsers.fromJson(Map<String, dynamic> json) => BeauticiansUsers(
        data: json["data"] == null ? [] : List<BeauticianUserData>.from(json["data"]!.map((x) => BeauticianUserData.fromJson(x))),
      );
}

class BeauticianUserData {
  final int? id;
  final String? beauticianName;
  final String? licenseNumber;
  final String? licenseImage;
  final String? nationalId;
  final String? nationality;
  final String? profilePicture;
  final List<String>? previousWorkImages;
  final String? locationName;
  final String? city;
  final String? latitude;
  final String? longitude;
  final String? mobileNumber;
  final String? email;
  final String? iban;
  final String? bankName;
  final String? logo;
  final List<String>? profileImages;
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
  final bool? isAgreeToContract, contractAgreement;

  BeauticianUserData({
    this.id,
    this.beauticianName,
    this.licenseNumber,
    this.licenseImage,
    this.nationalId,
    this.nationality,
    this.profilePicture,
    this.previousWorkImages,
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
    this.contractAgreement,
  });

  factory BeauticianUserData.fromJson(Map<String, dynamic> json) => BeauticianUserData(
        id: json["id"],
        beauticianName: json["beauticianName"],
        licenseNumber: json["licenseNumber"],
        licenseImage: json["licenseImage"],
        nationalId: json["nationalId"],
        nationality: json["nationality"],
        profilePicture: json["profilePicture"],
        previousWorkImages: json["previousWorkImages"] == null ? [] : List<String>.from(json["previousWorkImages"]!.map((x) => x)),
        locationName: json["locationName"],
        city: json["city"],
        latitude: json["latitude"],
        longitude: json["longitude"],
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
        registeredBy: json["registeredBy"] ?? 'غير معروف',
        sellerMobile: json["sellerMobile"],
        sellerRegistrationDate: json["sellerRegistrationDate"],
        contractPrecentage: json["contractPrecentage"],
        isAgreeToContract: json["isAgreeToContract"],
        contractAgreement: json["contractAgreement"],
      );
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
