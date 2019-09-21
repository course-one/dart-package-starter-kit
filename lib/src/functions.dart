/**
 * This file contains private functions to fetch remote data.
 */

import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// private to the library
var _success_status_code = 200;

/**
 * This method that fetches user information.
 * Returns a list of users when service response is successful.
 */
Future<List> fetchUserList( String url ) async {
  var response = await http.get( url );

  if( response.statusCode == _success_status_code ) {

    // convery body to a suitable Dart data structure
    var jsonResponse = convert.jsonDecode( response.body );

    // jsonResponse is a map and data key contains a List
    return jsonResponse[ 'data' ];

  } else {
    return List();
  }
}