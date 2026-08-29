class CoreLoader {
  final int state;
  CoreLoader([this.state = 40]);

  int render_scheduler(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 40) % 997;
    }
    return value;
  }
}

void main() {
  print(CoreLoader().render_scheduler(40));
}
