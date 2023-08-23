import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateAnnouncementCall {
  static Future<ApiCallResponse> call({
    String? announcementType = 'Member',
    String? announcementDescription = 'Des',
    String? userName = 'user',
    String? companyId = '123',
    String? announcementTittle = 'Title',
    String? product = 'No ',
    String? userID = '6390b31ed77dc467630713f9',
    String? productID = '',
    String? link = '',
  }) {
    final body = '''
{
  "description": "${announcementDescription}",
  "product": "${product}",
  "created_by": "${userName}",
  "member_type": "${announcementType}",
  "title": "${announcementTittle}",
  "org_id": "${companyId}",
  "user_id": "${userID}",
  "product_id": "${productID}",
  "link": "${link}",
  "created_at_position": "My Channel App",
  "image_url": "http://67.217.61.253/hr/BraTS2021_00012.png"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateAnnouncement',
      apiUrl: 'https://100092.pythonanywhere.com/api/v1/announcements/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAllAnnouncementsCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? type = 'my-channel-history',
    String? memberType = 'User',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllAnnouncements',
      apiUrl: 'https://100092.pythonanywhere.com/api/v1/announcements/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userID,
        'type': type,
        'member_type': memberType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic allAnnouncements(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class ToggleAnnouncementActiveAndInActiveCall {
  static Future<ApiCallResponse> call({
    int? announcementId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ToggleAnnouncementActiveAndInActive',
      apiUrl:
          'https://100092.pythonanywhere.com/api/v1/announcements/${announcementId}/',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateAnnouncementCall {
  static Future<ApiCallResponse> call({
    String? announcementId = '64c506c86957b760773e6df0',
    String? memberType = 'Public',
    String? product = 'No',
    String? title = 'To the Public',
    String? description = 'hello world',
    String? orgName = 'Worlako',
    String? orgId = '231',
    String? image = 'http://67.217.61.253/hr/BraTS2021_00012.png',
    String? productID = '',
  }) {
    final body = '''
{
  "description": "${description}",
  "member_type": "${memberType}",
  "product": "${product}",
  "title": "${title}",
  "ord_id": "${orgId}",
  "product_id": "${productID}",
  "org_name": "${orgName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAnnouncement',
      apiUrl:
          'https://100092.pythonanywhere.com/api/v1/announcements/${announcementId}/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.message''',
        true,
      );
}

class ServerHealthCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ServerHealth',
      apiUrl: 'https://100092.pythonanywhere.com/health/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteAnnouncementCall {
  static Future<ApiCallResponse> call({
    String? announcementID = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Announcement',
      apiUrl:
          'https://100092.pythonanywhere.com/api/v1/announcements/${announcementID}/',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LogoutCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: 'https://100014.pythonanywhere.com/api/mobilelogout/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ImgurlCall {
  static Future<ApiCallResponse> call({
    String? imgfile = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'imgurl',
      apiUrl: 'http://67.217.61.253/uploadfiles/upload-announcement-to-drive/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': imgfile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserinfoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'userinfo',
      apiUrl: 'https://100014.pythonanywhere.com/api/userinfo/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProductsCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
"username":"uxliveadmin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getProducts',
      apiUrl: 'https://100093.pythonanywhere.com/api/getproducts/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic productsResponse(dynamic response) => getJsonField(
        response,
        r'''$.products[*]''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
