class ViewmodelHome {
  Future<int> incrementCounter({required int counter}) async {
    await Future.delayed(const Duration(seconds: 2));
    final int result = counter + 1;
    return result;
  }
}
