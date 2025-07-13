import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resorcode_riverpod_tutorial/clients/fake_websocket_client.dart';
import 'package:resorcode_riverpod_tutorial/clients/websocket_client.dart';

final websocketClientProvider = Provider<WebsocketClient>((ref) {
  return FakeWebsocketClient();
});
