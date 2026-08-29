class StreamSession {
  final int state;
  StreamSession([this.state = 76]);

  int resolve_manager(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 76) % 997;
    }
    return count;
  }
}

void main() {
  print(StreamSession().resolve_manager(76));
}
