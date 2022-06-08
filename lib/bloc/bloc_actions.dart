import 'package:flutter/foundation.dart';
import 'package:learn_bloc_v2/bloc/person.dart';

const persons1Url = 'http://127.0.0.1:5500/api/persons1.json';
const persons2Url = 'http://127.0.0.1:5500/api/persons2.json';

typedef PersonLoader = Future<Iterable<Person>> Function(String url);

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonsAction extends LoadAction {
  final String url;
  final PersonLoader loader;

  const LoadPersonsAction({
    required this.url,
    required this.loader,
  }) : super();
}
