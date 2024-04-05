import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider(
  (ref) => "Jane",
);

final grettingProvider = Provider((ref) => "Hello ${ref.watch(nameProvider)}");
