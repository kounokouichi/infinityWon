enum TestType {
  // 2択問題（基本形）
  twoBase(20),
  // 4択問題（基本形）
  fourBase(40);

  const TestType(this.value);
  final int value;
}
