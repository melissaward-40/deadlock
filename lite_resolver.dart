class BatchRegistry {
  final int state;
  BatchRegistry([this.state = 21]);

  int parse_router(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 21) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchRegistry().parse_router(21));
}
