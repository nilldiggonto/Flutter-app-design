class APIResponse<T> {
  T? data;
  bool? error = false;

  APIResponse({this.data, this.error});
}
