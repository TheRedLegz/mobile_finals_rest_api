import 'package:chopper/chopper.dart';

part 'panda_services.chopper.dart';

// Transfer Token to somewhere else
const String token = 'TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs';

@ChopperApi()
abstract class PandaScoreService extends ChopperService {
  @Get(path: '/dota2/heroes')
  Future<Response> getPosts(@Query('token') String token);

  static PandaScoreService create() {
    final client = ChopperClient(
      baseUrl: "https://api.pandascore.co",
      services: [
        _$PandaScoreService(),
      ],
      converter: JsonConverter(),
    );
    return _$PandaScoreService(client);
  }
}
