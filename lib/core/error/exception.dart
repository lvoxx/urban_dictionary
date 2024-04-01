class ServerException implements Exception {
  const ServerException([this.message = 'No result found!']);
  final String message;
}

class CacheException implements Exception {
  const CacheException([this.message = 'No result found!']);
  final String message;
}
