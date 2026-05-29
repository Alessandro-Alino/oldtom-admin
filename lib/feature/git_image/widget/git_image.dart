import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';

class GitImage extends StatefulWidget {
  const GitImage({super.key, required this.pageCntrl});

  final PageController pageCntrl;

  @override
  State<GitImage> createState() => _GitImageState();
}

class _GitImageState extends State<GitImage> {
  @override
  void initState() {
    super.initState();
    context.read<GitImageBloc>().readGitImages();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GitImageBloc, GitImageState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              scrolledUnderElevation: 0.0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: IconButton.filledTonal(
                onPressed: () {
                  // Go to previous Page View page
                  widget.pageCntrl.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Icon(Icons.chevron_left),
              ),
              actions: [
                SizedBox.square(
                  dimension: 30.0,
                  child: switch (state.status) {
                    GitImageStatus.init => InkWell(
                      onTap: () {
                        context.read<GitImageBloc>().readGitImages();
                      },
                      child: Icon(Icons.image_search_outlined),
                    ),
                    GitImageStatus.loading => AppLoading(),
                    GitImageStatus.success => InkWell(
                      onTap: () {
                        context.read<GitImageBloc>().readGitImages();
                      },
                      child: Icon(Icons.check_circle),
                    ),
                    GitImageStatus.error => InkWell(
                      onTap: () {
                        context.read<GitImageBloc>().readGitImages();
                      },
                      child: Icon(Icons.error),
                    ),
                  },
                ),
              ],
            ),
            state.gitImageList.isEmpty
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
                      final GitImageModel gitImage = state.gitImageList[index];
                      return InkWell(
                        onDoubleTap: () {
                          // Select image path
                          context.read<CategBloc>().selectImageURL(
                            selectedImageURL: gitImage.path,
                          );
                          // Go to previous Page View page
                          widget.pageCntrl.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
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
                        ),
                      );
                    },
                  ),
          ],
        );
      },
    );
  }
}
