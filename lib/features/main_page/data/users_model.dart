// class Users {
//   final List<UserData>? data;

//   Users({
//     this.data,
//   });

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//         data: json["data"] == null
//             ? []
//             : List<UserData>.from(
//                 json["data"]!.map((x) => UserData.fromJson(x))),
//       );
// }

// class UserData {
//   final String? id;
//   final String? name;
//   final String? numberID;
//   final String? nation;
//   final String? city;
//   final String? emailAddress;
//   final String? phoneNumber;

//   UserData({
//     this.id,
//     this.name,
//     this.numberID,
//     this.nation,
//     this.city,
//     this.emailAddress,
//     this.phoneNumber,
//   });

//   factory UserData.fromJson(Map<String, dynamic> json) => UserData(
//         id: json["id"],
//         name: json["name"],
//         numberID: json["numberID"],
//         nation: json["nation"],
//         city: json["city"],
//         emailAddress: json["bankName"],
//         phoneNumber: json["phoneNumber"],
//       );
// }

// List<Users> userType1 = [
//   Users(
//     data: [
//       UserData(
//         id: '1',
//         name: 'صالون X',
//         numberID: '7548002515',
//         nation: 'السعوديه',
//         city: 'الرياض',
//         phoneNumber: '0555555555',
//         emailAddress: 'salonx@gmail.com',
//       ),
//       UserData(
//         id: '2',
//         name: 'صالون Y',
//         numberID: '7548002515',
//         nation: 'عمان',
//         city: 'الخبر',
//         emailAddress: 'salony@gmail.com',
//         phoneNumber: '0555508055',
//       ),
//       UserData(
//         id: '3',
//         name: 'صالون Z',
//         numberID: '7548002515',
//         nation: 'المملكه العربيه السعوديه',
//         city: 'الدمام',
//         emailAddress: 'salonz@gmail.com',
//         phoneNumber: '0555052575',
//       ),
//       UserData(
//         id: '4',
//         name: 'صالون Q',
//         numberID: '7548002515',
//         nation: 'مصر',
//         city: 'الطائف',
//         emailAddress: 'salonq@gmail.com',
//         phoneNumber: '0555550005',
//       ),
//       UserData(
//         id: '5',
//         name: 'صالون P',
//         numberID: '7548002515',
//         nation: 'اليونان',
//         city: 'جدة',
//         emailAddress: 'salonp@gmail.com',
//         phoneNumber: '0555001257',
//       ),
//     ],
//   ),
// ];
// List<Users> userType2 = [
//   Users(
//     data: [
//       UserData(
//         id: '1',
//         name: 'صالون X',
//         numberID: '7548002515',
//         nation: 'مصر',
//         city: 'المدينة المنورة',
//         emailAddress: 'salonx@gmail.com',
//         phoneNumber: '0551239586',
//       ),
//       UserData(
//         id: '2',
//         name: 'صالون Y',
//         numberID: '7548002515',
//         nation: 'عمان',
//         city: 'جده',
//         emailAddress: 'salony@gmail.com',
//         phoneNumber: '0555125478',
//       ),
//       UserData(
//         id: '3',
//         name: 'صالون Z',
//         numberID: '7548002515',
//         nation: 'المملكه العربيه السعوديه',
//         city: 'الرياض',
//         emailAddress: 'salonz@gmail.com',
//         phoneNumber: '0551512555',
//       ),
//     ],
//   ),
// ];
