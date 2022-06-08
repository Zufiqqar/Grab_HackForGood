import 'model.dart';
import 'package:redux/redux.dart';

enum Actions { Increment }

List<Item> addItemReducer(List<Schedule> state, action) {
  return []
    ..addAll(state)
    ..add(Item(id: action.id, body: action.item));
}

List<Item> removeItemReducer(List<Item> state, action) {
  return List.unmodifiable(List.from(state)..remove(action.item));
}

List<Item> removeItemsReducer(List<Item> state, action) {
  return List.unmodifiable([]);
}

final Reducer<List<Item>> itemsReducer = combineReducers<List<Item>>([
  new TypedReducer<List<Item>, AddItemAction>(addItemReducer),
  new TypedReducer<List<Item>, RemoveItemAction>(removeItemReducer),
  new TypedReducer<List<Item>, RemoveItemsAction>(removeItemsReducer),
]);

int incrementReducer(int state, action) {
  if (action == Actions.Increment) {
    return state + 1;
  }
  return state;
}

AppState appStateReducer(AppState state, action) {
  return AppState(
    publicSchedulesList: publicSchedulesReducer(state.publicSchedulesList,action),
    mySchedulesList: 

  );
}
