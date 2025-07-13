import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resorcode_riverpod_tutorial/clients/fake_websocket_client.dart';
import 'package:resorcode_riverpod_tutorial/clients/websocket_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'websocket_client_provider.g.dart';

@riverpod
WebsocketClient websocketClient(Ref ref) {
  return FakeWebsocketClient();
}
