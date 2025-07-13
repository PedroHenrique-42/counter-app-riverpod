import 'package:resorcode_riverpod_tutorial/providers/websocket_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart'; // Necessário para o gerador de código

@riverpod
class Counter extends _$Counter {
  @override
  Stream<int> build(int startValue) {
    final wsClient = ref.watch(websocketClientProvider);
    return wsClient.getCounterStream(startValue);
  }
}
