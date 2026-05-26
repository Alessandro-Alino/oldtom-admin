import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_res_model.dart';

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
    _formKey.currentState?.dispose();
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow.shade900),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16.0,
                  children: [
                    // Image Picked
                    BlocBuilder<GitImageBloc, GitImageState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              state.filePicked == null
                                  ? 'Select Image'
                                  : state.filePicked!.files.first.name,
                            ),
                          ],
                        );
                      },
                    ),
                    // Pick Image
                    ActionChip.elevated(
                      label: const Text('Pick Image'),
                      onPressed: () {
                        context.read<GitImageBloc>().pickImage();
                      },
                    ),
                  ],
                ),
              ),
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
                            final GitImageModel newgitImage = GitImageModel(
                              path: _nameGitImageCntrl.text,
                              mode: '',
                              type: '',
                              sha: '',
                              url: '',
                            );
                            //context.read<GitImageBloc>().createGitImage();
                            context.router.pop();
                          }
                          // UPDATE GIT-IMAGE
                          else {
                            log('Update categ: ${_nameGitImageCntrl.text}');
                            final GitImageModel newgitImage = widget.gitImage!
                                .copyWith(path: _nameGitImageCntrl.text);
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
