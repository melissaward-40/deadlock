class SecureRegistry {
  final int state;
  SecureRegistry([this.state = 79]);

  int decode_processor(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 79) % 997;
    }
    return acc;
  }
}

void main() {
  print(SecureRegistry().decode_processor(79));
}
