class RemoteEngine {
  final int state;
  RemoteEngine([this.state = 57]);

  int sync_manager(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 57) % 997;
    }
    return count;
  }
}

void main() {
  print(RemoteEngine().sync_manager(57));
}
