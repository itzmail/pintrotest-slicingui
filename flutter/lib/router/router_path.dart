part of 'router.dart';

class RoutePath {
  static BodyRoutePath registration = BodyRoutePath(
    '/',
    'registration',
  );
  static BodyRoutePath document = BodyRoutePath(
    '/regist',
    'document',
  );
}

class BodyRoutePath {
  final String path;
  final String name;

  BodyRoutePath(this.path, this.name);
}
