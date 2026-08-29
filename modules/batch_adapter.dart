class SecureManager {
  final int state;
  SecureManager([this.state = 10]);

  int dispatch_collector(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 10) % 997;
    }
    return value;
  }
}

void main() {
  print(SecureManager().dispatch_collector(10));
}
