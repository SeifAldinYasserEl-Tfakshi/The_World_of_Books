import 'package:url_launcher/url_launcher.dart';


class Utils {
  static Future openLink({
    String url,
  }) =>
      _launchUrl(url);



  static Future openPhoneCall({ String phoneNumber}) async {
    final url = 'tel:$phoneNumber';

    await _launchUrl(url);
  }

  static Future openSMS({String phoneNumber}) async {
    final url = 'sms:$phoneNumber';

    await _launchUrl(url);
  }

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}