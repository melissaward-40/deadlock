class StreamHandler {
  final int state;
  StreamHandler([this.state = 9]);

  int dispatch_router(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 9) % 997;
    }
    return value;
  }
}

void main() {
  print(StreamHandler().dispatch_router(9));
}
