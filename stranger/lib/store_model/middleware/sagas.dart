import 'package:redux_saga/redux_saga.dart';
import 'http.dart';
import '../actions.dart';

rootSaga() sync* {
  yield Try(() sync* {
    yield Call(watchFetchAll);
  }, Catch: (e, s) sync* {
    // handle fetchAll errors
  });
}

watchFetchAll() sync* {
  var result = AllResult();
  yield All({
    #task1: TakeEvery(fetchScheduleData, pattern: LoadPublicSchedule),
    //#task2: Call(fetchResource, args: ['comments']), // task2,
  }, result: result);
}

fetchScheduleData({dynamic action}) sync* {
  yield Try(() sync* {
    var data = Result();
    yield Call(HttpService().getSchedules, args: [], result: data);
    yield Put(LoadPublicScheduleSucceed(data.value));
  }, Catch: (e, s) sync* {
    yield Put(LoadPublicScheduleFailed());
  });
}
