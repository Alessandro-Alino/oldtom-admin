import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/feature/git_image/bloc/git_image_bloc.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';
import 'package:oldtom_admin/widget/manage_modal.dart';

class ManageGitImage extends StatefulWidget {
  const ManageGitImage({super.key, this.gitImage});

  final GitImageModel? gitImage;

  @override
  State<ManageGitImage> createState() => _ManageGitImageState();
}

class _ManageGitImageState extends State<ManageGitImage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameGitImageCntrl = TextEditingController();
  final TextEditingController _extGitImageCntrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.gitImage != null) {
      _nameGitImageCntrl.text = widget.gitImage!.name.split('.').first;
      _extGitImageCntrl.text = widget.gitImage!.name.split('.').last;
    }
  }

  @override
  void dispose() {
    _nameGitImageCntrl.dispose();
    _extGitImageCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ManageModal(
      title:
          '${widget.gitImage != null ? 'Aggiorna' : 'Crea'} ${context.ltr.image(1)}',
      body: Form(
        key: _formKey,
        child: BlocConsumer<GitImageBloc, GitImageState>(
          listener: (context, state) {
            // Set the name of the file Picked
            if (state.filePicked != null) {
              _nameGitImageCntrl.text = state.filePicked!.files.first.name
                  .split('.')
                  .first;
              _extGitImageCntrl.text = state.filePicked!.files.first.name
                  .split('.')
                  .last;
            }
            // If operation success, go back
            switch (state.gitImageOperation) {
              case GitImageOperation.createSuccess:
                if (ModalRoute.of(context)!.isCurrent) {
                  context.router.pop();
                }
              case GitImageOperation.updateSuccess:
                if (ModalRoute.of(context)!.isCurrent) {
                  context.router.pop();
                }
              case GitImageOperation.deleteSuccess:
                if (ModalRoute.of(context)!.isCurrent) {
                  context.router.pop();
                }
              case _:
                null;
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                // Image Picked
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 180.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: state.filePicked == null
                            ? widget.gitImage != null
                                  ? AppImage(
                                      imageURL: AppImageService.getImageFromCDN(
                                        path: widget.gitImage!.path,
                                      ),
                                    )
                                  : Center(child: const Text('Select image'))
                            : FutureBuilder(
                                future: state.filePicked!.files.first
                                    .readAsBytes(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Image.memory(
                                      snapshot.data!,
                                      fit: BoxFit.contain,
                                    );
                                  } else {
                                    return const Text('snapshot has no data.');
                                  }
                                },
                              ),
                      ),
                    ),
                  ],
                ),
                // Pick Image
                Row(
                  spacing: 16.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Pick Image Button
                    ActionChip.elevated(
                      label: const Text('Pick Image'),
                      onPressed: () {
                        context.read<GitImageBloc>().pickImage();
                      },
                    ),
                  ],
                ),
                // Name Image Picked
                Flexible(
                  child: TextFormField(
                    controller: _nameGitImageCntrl,
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Image name',
                      border: OutlineInputBorder(),
                      suffix: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24.0,
                              child: VerticalDivider(color: Colors.grey),
                            ),
                            // Image Extension
                            Text('.${_extGitImageCntrl.text}'),
                          ],
                        ),
                      ),
                    ),
                    validator: (e) {
                      if (_nameGitImageCntrl.text.isEmpty) {
                        return 'TU SI TUTTO SCEMO ALLORA.';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
      actions: [
        // Status
        BlocBuilder<GitImageBloc, GitImageState>(
          builder: (context, state) {
            return switch (state.gitImageOperation) {
              GitImageOperation.idle => Icon(Icons.play_arrow_rounded),
              GitImageOperation.createLoading ||
              GitImageOperation.updateLoading ||
              GitImageOperation.deleteLoading => SizedBox.square(
                dimension: 30.0,
                child: AppLoading(),
              ),
              GitImageOperation.createSuccess ||
              GitImageOperation.updateSuccess ||
              GitImageOperation.deleteSuccess => Icon(Icons.check),
              GitImageOperation.createError ||
              GitImageOperation.updateError ||
              GitImageOperation.deleteError => Icon(Icons.error),
            };
          },
        ),
        // DELETE Button
        if (widget.gitImage != null)
          ActionChip.elevated(
            label: const Text('Delete Image'),
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Conferma eliminazione'),
                    content: const Text(
                      'L\'operazione non può essere annullata',
                    ),
                    actions: [
                      // BACK
                      TextButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        child: Text(context.ltr.no),
                      ),
                      // CONFIRM
                      ActionChip.elevated(
                        label: Text(context.ltr.yes),
                        onPressed: () {
                          // Delete Git-Image
                          if (widget.gitImage != null) {
                            context.read<GitImageBloc>().deleteImage(
                              gitImage: widget.gitImage!,
                            );
                          }
                          context.router.pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        // SUBMIT button
        BlocBuilder<GitImageBloc, GitImageState>(
          builder: (context, state) {
            return ActionChip(
              onPressed: () {
                // Validate Form
                if (_formKey.currentState!.validate()) {
                  final String filename =
                      '${_nameGitImageCntrl.text}.${_extGitImageCntrl.text}';
                  // CREATE GIT-IMAGE
                  if (widget.gitImage == null) {
                    // Create Image
                    context.read<GitImageBloc>().createImage(
                      filename: filename,
                      file: state.filePicked!.files.first,
                    );
                  }
                  // UPDATE GIT-IMAGE
                  else {
                    // Update Image
                    context.read<GitImageBloc>().updateImage(
                      filename: filename,
                      gitImage: widget.gitImage!,
                    );
                  }
                }
              },
              label: Text(widget.gitImage != null ? 'Aggiorna' : 'Crea'),
            );
          },
        ),
      ],
    );
  }
}
