import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

String titlePDF = 'إتفاقيه شراكه بين Ping Informaton و ';

Future<Uint8List> loadImageFromAssets(String path) async {
  final ByteData data = await rootBundle.load(path);
  return data.buffer.asUint8List();
}

class PrintClass {
  static void printPDF({
    required String name,
    required String date,
    required String address,
    required String phone,
    required String email,
  }) async {
    try {
      final arabicFontReg = await rootBundle.load("assets/fonts/Tajawal-Regular.ttf");
      final arabicFontBold = await rootBundle.load("assets/fonts/Tajawal-Bold.ttf");
      final signatureFontBold = await rootBundle.load("assets/fonts/MonsieurLaDoulaise-Regular.ttf");
      final ttfreg = pw.Font.ttf(arabicFontReg);
      final ttfbold = pw.Font.ttf(arabicFontBold);
      final ttfSignature = pw.Font.ttf(signatureFontBold);
      final pdf = pw.Document(
        title: '$name contract',
        subject: 'A subject',
        creator: 'Myself',
      );
// Load the image from assets
      final imageBytes = await loadImageFromAssets(ImageAssets.logoPing);
      final image = pw.MemoryImage(imageBytes);
      pdf.addPage(
        pw.Page(
          theme: pw.ThemeData(
            defaultTextStyle: pw.TextStyle(
              font: ttfreg,
              fontSize: 16,
            ),
          ),
          build: (pw.Context context) {
            return pw.Directionality(
                textDirection: pw.TextDirection.rtl,
                child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                    pw.Image(image, height: 75, width: 75),
                  ]),
                  pw.Center(
                    child: pw.Text(
                      titlePDF + name,
                      style: pw.TextStyle(
                        font: ttfbold,
                        fontBold: ttfbold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 30),
                  pw.Text(
                    'تمت هذه الاتفاقيه في تاريخ: $date',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 40),
                  pw.Text(
                    'الطرف الاول',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'بين كل من :\n\n الاسم : Beauty Solation \n\nالعنوان : [عنةان الشركه المالكه للطبيق] \n\n ممثل بواسطه : [المذكور في عقد التأسيس] \n\n الهاتف : [رقم الهاتف] \n\n البريد الالكترون : [البريد الألكتروني',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 40),
                  pw.Text(
                    'الطرف الثاني',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'بين كل من :\n\n الاسم : $name \n\nالعنوان : $address \n\n ممثل بواسطه : ****** \n\n الهاتف : $phone \n\n البريد الالكترون : $email',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                ]));
          },
        ),
      );
      pdf.addPage(
        pw.Page(
          theme: pw.ThemeData(
            defaultTextStyle: pw.TextStyle(
              font: ttfreg,
              fontSize: 16,
            ),
          ),
          build: (pw.Context context) {
            return pw.Directionality(
                textDirection: pw.TextDirection.rtl,
                child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                    pw.Image(image, height: 75, width: 75),
                  ]),
                  pw.Text(
                    'الماده الأولي : موضوع الاتفاقيه',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 25),
                  pw.Text(
                    'تتعلق هده الإتفاقية بالإتفاق بين التطبيق ومركز التجميل لتقديم خدمات التجميل المنزلية، حيث يقوم التطبيق بتسهيل الحجز والتنسيق مع العملاء ومركز التجميل يقوم بتوفير الخدمات.',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                  pw.SizedBox(height: 25),
                  pw.Text(
                    'المادة الثانية: التزاماتك الأطراف',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'التز امات التطبيق',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1-تسويق الخدمات المنزلية لمركز التجميل عبر التطبيى .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '2-إدارة وتنسيق الحجوزات مع العملاء.',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '3 -تعميل المدغر عات من العلا رتعريليا لمر كز التجميل وفقها للاتهاق .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '4-تقديم الدعم الفني و اداره لمركز التجميل',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 45),
                  pw.Text(
                    ':التزامات مركز التجميل ',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1- توفير عاملين مؤهلين لتديم خدمت التجميل المنزلية .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '2- ضمان جودة الخدمات المقدمة وفقا للمعايير المتفق عليها.',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '3- احتر ام مواعيد الحجوز ات والتواجد في المواعيد المحددة .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '4- توفير الأدوات والمعدات اللارمة لتقديم الخدمات .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 45),
                  pw.Text(
                    'المادة الثالثه: الشروط الماليه بلإبوبز',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1- نسبة الأرباح: يتفق الطرفان على تقسيم الأرباح بنسبة نسبة الأرباح للتطبيق وإنسبة الأرباح لمركز التجميل .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '2- طرن الدفع: يتم تحريل المبالغ المستحقة لمركز التجميل بشكل دوري (شهري/أسبرعي) إلى الحساب البنكي تفاصيل الحساب البنكى .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '3- التسعير: يتم تحديد أسعار الخدمات بالاتفاق بين الطرفين وتحديئها دوريا عبر التطبيق',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '4- يتم إيداع مبلع العاتورة في حساب مقدم الخدمة بعد تنفيذ الخدمة وخصم النسبة المتفق عليها .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                ]));
          },
        ),
      );
      pdf.addPage(
        pw.Page(
          theme: pw.ThemeData(
            defaultTextStyle: pw.TextStyle(
              font: ttfreg,
              fontSize: 16,
            ),
          ),
          build: (pw.Context context) {
            return pw.Directionality(
                textDirection: pw.TextDirection.rtl,
                child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                    pw.Image(image, height: 75, width: 75),
                  ]),
                  pw.Text(
                    'المادة الرابعة: مدة الإتقاقيه والتجديد',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1- مدة الإتفاقية : تسري هده الإتفاقية لمدة مدة الاتفاقية من تاريخ التوقيع .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                      lineSpacing: 3,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '2- التجديد: يتم تجديد الإتفاقية تلقانيا لنفس المدة ما لم يخطر أحد الطرفين الأخر بر غبته في عدم التجديد قبليا 60[ يوما سن انتهاء مدة الاتفاقيه.',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 35),
                  pw.Text(
                    'المادة الخامسة: السرية والخصوصية ',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1- يلترم الطرفان بالحفظ على سرية المعلومات التجارية وبيانات العملاء وعدم استخدامها لأغراض غير متفى عنيها.',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '2- التعهد بالإفصاح عن أي خدمة تتم تقيمها للعملاء ولم تذكر أثناء الطلب من التطبيق .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 35),
                  pw.Text(
                    'المادة السادسة: الإلغاء والإنهاء',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    '1- الإلغاء: يمكن لأي طرف إنهاء الإتعاقيه بإشعار خطي للطرف الأخر قبل مدة الإشعار من تاريخ الإنهاء .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 5),
                  pw.Text(
                    '2- الأسباب: يمكن إنهاء الإتفاقية فررا في حالة عدم الالتزام بالبنود المنفق عليها أو في حالة الإخلال بالمعايير المهنية ويكرن فسخ إتفاقي رضائي .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 35),
                  pw.Text(
                    'المادة السابعة : الشرط الجزائي',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'عند عدم الإلتزام ببنود هده الإتفاقية سيطبق خصم النسبة المتفق عليها كاملة من الطلبات المنفذه الأخرى دون شرط أو قيد .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 35),
                  pw.Text(
                    'المادة الثامنة : الشروط والأحكام',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'جواز تعير الشروط والأحكام والتعديل عليها خلال سريان هذه الإتفقية باتفاق الطرفين وتكون كتابة .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 35),
                  pw.Text(
                    'المادة التاسعة: حل النزاعات ',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'في حالة نشوء أي نزاع يتعلق بهذه الإتفاقية، يتفق الطرفان على حله بالطرق الودية. وإذا لم يتم التوصل إلى حل، يتم اللجوء إلى المحكمة المختصة في المملكة العربية السعودية وفق للأنظمة المرعية فيها .',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                ]));
          },
        ),
      );
      pdf.addPage(
        pw.Page(
          theme: pw.ThemeData(
            defaultTextStyle: pw.TextStyle(
              font: ttfreg,
              fontSize: 16,
            ),
          ),
          build: (pw.Context context) {
            return pw.Directionality(
                textDirection: pw.TextDirection.rtl,
                child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                    pw.Image(image, height: 75, width: 75),
                  ]),
                  pw.SizedBox(height: 30),
                  pw.Text(
                    'توقع الأطراف',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'التطبيق',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'الاسم : Beauty Solation',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'ويمثله: [المذكور في عقد التأسيس]',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Row(children: [
                    pw.Text(
                      'التوقيع : ',
                      style: pw.TextStyle(
                        font: ttfreg,
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      'Abo Fasel',
                      style: pw.TextStyle(
                        font: ttfSignature,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'التاريخ : $date',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 45),
                  pw.Text(
                    'مركز التجميل',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'الاسم : $name',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'ويمثله: ******',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Row(children: [
                    pw.Text(
                      'التوقيع : ',
                      style: pw.TextStyle(
                        font: ttfreg,
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      name,
                      style: pw.TextStyle(
                        font: ttfSignature,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'التاريخ : $date',
                    style: pw.TextStyle(
                      font: ttfreg,
                      fontSize: 16,
                    ),
                  ),
                ]));
          },
        ),
      );

      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save(),
      );
    } on Exception catch (e) {
      AppLogs.errorLog(e.toString(), 'print');
    }
  }
}
