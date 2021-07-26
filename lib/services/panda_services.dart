import 'package:chopper/chopper.dart';

// Transfer Token to somewhere else
const String token = 'TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs';
@ChopperApi(baseUrl: "https://api.pandascore.co")
abstract class PandaScoreService extends ChopperService {
  @Get(path: '/dota2/heroes')
  Future<Response> getPosts(@Query('token') String token);

}