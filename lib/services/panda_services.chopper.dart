// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panda_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PandaScoreService extends PandaScoreService {
  _$PandaScoreService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PandaScoreService;

  @override
  Future<Response<dynamic>> getPosts(String token) {
    final $url = '/dota2/heroes';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
