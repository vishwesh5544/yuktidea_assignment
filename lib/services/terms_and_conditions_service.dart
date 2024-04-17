import 'dart:convert';

import 'package:yuktidea/models/api_response.dart';
import 'package:yuktidea/models/terms_conditions.dart';
import 'package:http/http.dart' as http;


class TermsAndConditionsService {
  Future<ApiResponse<TermsConditions>> getTermsAndConditions() async {
    try {


      var headers = {
        'Accept': 'application/json'
      };
      var request = http.Request('GET', Uri.parse('http://studylancer.yuktidea.com/api/terms-conditions'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var json = await response.stream.bytesToString();
        var data = jsonDecode(json);
        var termsAndConditions = TermsConditions.fromJson(data['data']);
        return ApiResponse<TermsConditions>(data['status'], termsAndConditions, data['message']);
      }
      else {
        return ApiResponse<TermsConditions>(false, null, 'Failed to load terms and conditions');
      }
    } catch (e) {
      return ApiResponse<TermsConditions>(false, null, e.toString());
    }
  }
}
