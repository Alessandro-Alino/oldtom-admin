import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/helpers.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';
import 'package:oldtom_admin/feature/git_image/widget/manage_git_image.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/base_page.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';

@RoutePage()
class GitImagePage extends StatefulWidget {
  const GitImagePage({super.key});

  @override
  State<GitImagePage> createState() => _GitImagePageState();
}

class _GitImagePageState extends State<GitImagePage> {
  final PageController _pageCntrl = PageController();

  @override
  void dispose() {
    _pageCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: Text(context.ltr.image(2)),
      body: BlocBuilder<GitImageBloc, GitImageState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              // Button Status
              SliverToBoxAdapter(
                child: Container(
                  height: 60.0,
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ActionChip(
                        onPressed: () {
                          context.read<GitImageBloc>().readGitImages();
                        },
                        avatar: SizedBox.square(
                          dimension: 25.0,
                          child: switch (state.status) {
                            GitImageStatus.init => const Icon(
                              Icons.play_arrow_rounded,
                            ),
                            GitImageStatus.loading => const AppLoading(),
                            GitImageStatus.success => const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            GitImageStatus.error => const Icon(
                              Icons.error_rounded,
                              color: Colors.amber,
                            ),
                          },
                        ),
                        label: const Text('GET GIT-IMAGES'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: state.gitImageList.isEmpty
                    ? SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: const Text('Empty Grid List.')),
                        ),
                      )
                    : SliverGrid.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: state.gitImageList.length,
                        itemBuilder: (context, index) {
                          final GitImageModel gitImage =
                              state.gitImageList[index];
                          return Container(
                            padding: const EdgeInsets.all(32.0),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade900,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: AppImage(
                              imageURL: AppImageService.getImageFromCDN(
                                path: gitImage.path,
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show Modal to CREATE Git-Image
          Helpers.showGenericModal(
            context: context,
            builder: (context, scrollCntrl) {
              return ManageGitImage();
            },
            onClosed: () {
              context.read<GitImageBloc>().pickImage(reset: true);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
