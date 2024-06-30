import 'package:flutter/material.dart';
import '../widgets/my_search_bar.dart';
import '../widgets/workspace_card.dart';
import '../models/workspace.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkspacesPage extends StatefulWidget {
  const WorkspacesPage({super.key});

  @override
  _WorkspacesPageState createState() => _WorkspacesPageState();
}

class _WorkspacesPageState extends State<WorkspacesPage> {
  TextEditingController _searchController = TextEditingController();
  ValueNotifier<String> _searchQuery = ValueNotifier('');

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _searchQuery.value = _searchController.text;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color kBackgroundColor = Color.fromRGBO(40, 40, 40, 1);
    final Color? appBarTextColor = Theme.of(context).appBarTheme.foregroundColor;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          AppBar(
            backgroundColor: kBackgroundColor,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/settings.svg',
                color: appBarTextColor,
                fit: BoxFit.scaleDown,
              ),
            ),
            title: const Text('Рабочие простанства', style: TextStyle(fontSize: 20)),
            centerTitle: true,
            actions: [
              Icon(Icons.add, color: appBarTextColor),
              const SizedBox(width: 16),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: MySearchBar(
              controller: _searchController,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ValueListenableBuilder<String>(
              valueListenable: _searchQuery,
              builder: (context, query, child) {
                List<Workspace> filteredWorkspaces = workspaces.where((workspace) {
                  return workspace.name.toLowerCase().startsWith(query.toLowerCase());
                }).toList();

                return GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                    childAspectRatio: 9 / 5.5,
                  ),
                  itemCount: filteredWorkspaces.length,
                  itemBuilder: (context, index) {
                    return WorkspaceCard(workspace: filteredWorkspaces[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
