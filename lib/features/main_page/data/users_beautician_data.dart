// To parse this JSON data, do
//
//     final beauticiansUsers = beauticiansUsersFromJson(jsonString);

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
    final double? latitude;
    final double? longitude;
    final String? mobileNumber;
    final String? email;
    final String? iban;
    final String? bankName;
    final String? logo;
    final List<String>? profileImages;
    final dynamic workingHours;
    final String? holidayWorkingHours;
    final String? festivalWorkingHours;
    final String? servicesAndPrices;
    final String? socialMediaAccounts;
    final String? website;
    final String? customerServicePhone;
    final String? customerServiceEmail;
    final String? registeredBy;
    final String? sellerMobile;
    final DateTime? sellerRegistrationDate;

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
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"] == null ? [] : List<String>.from(json["profileImages"]!.map((x) => x)),
        workingHours: json["workingHours"],
        holidayWorkingHours: json["holidayWorkingHours"],
        festivalWorkingHours: json["festivalWorkingHours"],
        servicesAndPrices: json["servicesAndPrices"],
        socialMediaAccounts: json["socialMediaAccounts"],
        website: json["website"],
        customerServicePhone: json["customerServicePhone"],
        customerServiceEmail: json["customerServiceEmail"],
        registeredBy: json["registeredBy"],
        sellerMobile: json["sellerMobile"],
        sellerRegistrationDate: json["sellerRegistrationDate"] == null ? null : DateTime.parse(json["sellerRegistrationDate"]),
    );

}
