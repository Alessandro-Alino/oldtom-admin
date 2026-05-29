import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';
import 'package:oldtom_admin/widget/app_loading.dart';

class ManageGitImage extends StatefulWidget {
  const ManageGitImage({super.key, this.gitImage});

  final GitImageModel? gitImage;

  @override
  State<ManageGitImage> createState() => _ManageGitImageState();
}

class _ManageGitImageState extends State<ManageGitImage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameGitImageCntrl = TextEditingController();
  final PageController _pageCntrl = PageController();

  @override
  void initState() {
    super.initState();
    if (widget.gitImage != null) {
      _nameGitImageCntrl.text = widget.gitImage!.path;
    }
  }

  @override
  void dispose() {
    _nameGitImageCntrl.dispose();
    _pageCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title & Close Button
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                spacing: 16.0,
                children: [
                  // Close Button
                  IconButton.filledTonal(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                  // Title
                  Flexible(
                    child: Text(
                      '${widget.gitImage != null ? 'Aggiorna' : 'Crea'} ${context.ltr.image(1)}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            // Main content
            BlocBuilder<GitImageBloc, GitImageState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16.0,
                  children: [
                    // Image Picked
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: state.filePicked == null
                          ? Center(child: const Text('Select image'))
                          : Image.memory(
                              state.filePicked!.files.first.bytes!,
                              fit: BoxFit.contain,
                            ),
                    ),
                    // Name Image Picked
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.filePicked == null
                              ? 'Name Image'
                              : state.filePicked!.files.first.name,
                        ),
                      ],
                    ),
                    // Pick Image
                    ActionChip.elevated(
                      label: const Text('Pick Image'),
                      onPressed: () {
                        context.read<GitImageBloc>().pickImage();
                      },
                    ),
                    // Test
                    switch (state.gitImageOperation) {
                      // TODO: Handle this case.
                      GitImageOperation.idle => Icon(Icons.play_arrow_rounded),
                      GitImageOperation.createLoading => AppLoading(),
                      GitImageOperation.createSuccess => Icon(Icons.check),
                      GitImageOperation.createError => Icon(Icons.error),
                      _ => const SizedBox(),
                    },
                  ],
                );
              },
            ),
            const Divider(),
            // Submit Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocBuilder<GitImageBloc, GitImageState>(
                  builder: (context, state) {
                    return ActionChip(
                      onPressed: () {
                        // Validate Form
                        if (_formKey.currentState!.validate()) {
                          // CREATE GIT-IMAGE
                          if (widget.gitImage == null) {
                            // Create Image
                            context.read<GitImageBloc>().createImage(
                              filename: state.filePicked!.files.first.name,
                              bytes: state.filePicked!.files.first.bytes!,
                            );
                            //context.router.pop();
                          }
                          // UPDATE GIT-IMAGE
                          else {
                            log('Update categ: ${_nameGitImageCntrl.text}');
                            //final UploadGitImageModel newgitImage = widget.gitImage!.copyWith(path: _nameGitImageCntrl.text);
                            //context.read<GitImageBloc>().updateGitImage();
                            context.router.pop();
                          }
                        }
                      },
                      label: Text(context.ltr.yes),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
