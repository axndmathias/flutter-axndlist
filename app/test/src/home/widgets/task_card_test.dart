import 'package:axndlist/src/home/widgets/task_card.dart';
import 'package:axndlist/src/shared/services/realm/models/task_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';

void main() {
  final board = TaskBoard(Uuid.v4(), 'New List of tasks 1');
  test('getProgress', () {
    final tasks = [
      Task(Uuid.v1(), '', complete: true),
      Task(Uuid.v1(), ''),
      Task(Uuid.v1(), ''),
      Task(Uuid.v1(), '', complete: true),
    ];
    final progress = TaskCard(board: board).getProgress(tasks);

    expect(progress, 0.5);
  });
}
