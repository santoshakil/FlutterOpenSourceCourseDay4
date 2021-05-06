import 'package:flutter_opensource_course_day4/models/ip_data.dart';
import 'package:http/http.dart';

class ApiData {
  static Future<IpDataModel> getData() async {
    var request =
        Request('GET', Uri.parse('https://ipapi.co/45.127.245.158/json/'));

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      IpDataModel encodedData = ipDataModelFromJson(body);

      print(body);
      return encodedData;
    } else {
      print(response.reasonPhrase);
      return Future.value(IpDataModel());
    }
  }
}

var jsonDataFromAPI = '''
{
    "ip": "192.168.0.1",
    "version": "IPv4",
    "city": "Dhaka",
    "region": "Dhaka Division",
    "region_code": "C",
    "country": "BD",
    "country_name": "Bangladesh",
    "country_code": "BD",
    "country_code_iso3": "BGD",
    "country_capital": "Dhaka",
    "country_tld": ".bd",
    "continent_code": "AS",
    "in_eu": false,
    "postal": "1000",
    "latitude": 23.7272,
    "longitude": 90.4093,
    "timezone": "Asia/Dhaka",
    "utc_offset": "+0600",
    "country_calling_code": "+880",
    "currency": "BDT",
    "currency_name": "Taka",
    "languages": "bn-BD,en",
    "country_area": 144000.0,
    "country_population": 161356039.0,
    "asn": "AS55492",
    "org": "Dhaka Fiber Net Limited"
}
''';
