class EndPoints {
  static const String baseUrl = 'https://quickpolicy.runasp.net/api/';
  static const String mediaBaseUrl = 'http://quickpolicy.runasp.net/';

//**************** Auth *****************/
  static const String login = 'Accounts/login';

  static const String otpVerfied = 'Accounts/login-2FA';

  static const String register = 'Accounts/Register?role=user';
  static const String resendOTP = "/Accounts/resend-otp";
  static const String forgotPassword = 'Accounts/forgot-password';
  static const String resetPassword = 'Accounts/reset-password';

//************** dropDowns ************ */

  static const String dropDown = 'Shared/GetValuesOFDropDownByIdForUser';

//************** Homw ************ */

  static const String bannerAds = "Ads/GetAds";

  static const String whyRakeez = "WhyRakeez/GetWhyRakeezForUser";

//************** Car Insurance ************ */

  static const String newInsurance = "Insurance/AddNewInsurance";
  static const String transferOwnerShipCarInsurance = "Insurance/AddTransferOwnershipData";
  static const String soshibalCardCarInsurance = "Insurance/AddCustomCard";
  static const String extraCarInfo = 'UserAdditionalInfo/AddOwnerAdditionInfo';

//************** Offer ************ */

  static const String viewAllOffers = "Offer/GetAllOffers";

  //************** Media ************ */
  static const String uploadCarMedia = "/Quotation/UploadMedia";
  
  //************** My Account ************ */

  static const String myBills = 'Bills/GetBills';
}
