// To parse this JSON data, do
//
//     final salonUsers = salonUsersFromJson(jsonString);

class SalonUsers {
    final List<SalonUserData>? data;

    SalonUsers({
        this.data,
    });

    factory SalonUsers.fromJson(Map<String, dynamic> json) => SalonUsers(
        data: json["data"] == null ? [] : List<SalonUserData>.from(json["data"]!.map((x) => SalonUserData.fromJson(x))),
    );

}

class SalonUserData {
    final int? id;
    final String? salonName;
    final String? commercialRecordNumber;
    final String? commercialRecordImage;
    final List<String>? salonImages;
    final String? locationName;
    final double? latitude;
    final double? longitude;
    final String? mobileNumber;
    final String? email;
    final String? iban;
    final String? bankName;
    final String? logo;
    final List<String>? profileImages;
    final List<dynamic>? workingHours;
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

    SalonUserData({
        this.id,
        this.salonName,
        this.commercialRecordNumber,
        this.commercialRecordImage,
        this.salonImages,
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

    factory SalonUserData.fromJson(Map<String, dynamic> json) => SalonUserData(
        id: json["id"],
        salonName: json["salonName"],
        commercialRecordNumber: json["commercialRecordNumber"],
        commercialRecordImage: json["commercialRecordImage"],
        salonImages: json["salonImages"] == null ? [] : List<String>.from(json["salonImages"]!.map((x) => x)),
        locationName: json["locationName"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"] == null ? [] : List<String>.from(json["profileImages"]!.map((x) => x)),
        workingHours: json["workingHours"] == null ? [] : List<dynamic>.from(json["workingHours"]!.map((x) => x)),
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
    );

   
}