import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resorcode_riverpod_tutorial/providers/websocket_client_provider.dart';

final counterProvider = StreamProvider.autoDispose.family<int, int>((ref, startValue) {
  final wsClient = ref.watch(websocketClientProvider);
  return wsClient.getCounterStream(startValue);
});
