class DynamicController {
  final int state;
  DynamicController([this.state = 90]);

  int resolve_scheduler(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 90) % 997;
    }
    return value;
  }
}

void main() {
  print(DynamicController().resolve_scheduler(90));
}
