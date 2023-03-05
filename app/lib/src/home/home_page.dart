import 'package:axndlist/src/home/widgets/task_card.dart';
import 'package:axndlist/src/shared/widgets/user_image_button.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../shared/services/realm/models/task_model.dart';
import 'widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('axndlist'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 200),
              itemCount: 100,
              itemBuilder: (_, index) {
                final board = TaskBoard(
                  Uuid.v4(),
                  'New List of tasks 1',
                  tasks: [
                    Task(Uuid.v4(), '', complete: true),
                    Task(Uuid.v4(), '', complete: true),
                    Task(Uuid.v4(), '', complete: true),
                    Task(Uuid.v4(), '', complete: true),
                  ],
                );
                return TaskCard(board: board, height: 140);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton<int>(
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('All'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pending'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Done'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Deactivated'),
                    ),
                  ],
                  selected: const {1},
                  onSelectionChanged: (values) {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('New List'),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
    );
  }
}
