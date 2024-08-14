class EndPoints {
  static const String baseUrl = 'https://beautycenter.runasp.net/api/';
  static const String media = 'https://beautycenter.runasp.net/';

//**************** salon data *****************/
  static const String getsalonData = 'salons';

  //**************** Beautician *****************/
  static const String getBeautician = 'beauticians';

  //**************** PDF file *****************/
  static const String getPdfFile = 'Pdf/GenerateAgreementPdf';

  //**************** resend contract *****************/
  static const String resendContractSalon = 'Salons/ResendContractMail?id=';
  static const String resendContractBeautician = 'Beauticians/ResendContractMail?id=';
}
