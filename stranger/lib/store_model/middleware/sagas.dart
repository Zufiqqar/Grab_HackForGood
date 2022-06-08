import 'package:redux_saga/redux_saga.dart';
import 'actions.dart';

helloSaga() sync* {
  print('Hello Sagas!');
}

Future delay(Duration duration) {
  return Future.delayed(duration, () => true);
}

incrementAsync({dynamic action}) sync* {
  yield delay(Duration(seconds: 1));
  yield Put(IncrementAction());
}

watchIncrementAsync() sync* {
  yield TakeEvery(incrementAsync, pattern: IncrementAsyncAction);
}

rootSaga() sync* {
  yield All({
    #hello: helloSaga(),
    #watch: watchIncrementAsync(),
  });
}
