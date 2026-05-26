import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';

class CategForm extends StatelessWidget {
  const CategForm({
    super.key,
    required this.formKey,
    required this.nameCategCntrl,
    required this.descrCategCntrl,
    required this.pageCntrl,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameCategCntrl;
  final TextEditingController descrCategCntrl;
  final PageController pageCntrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              BlocBuilder<CategBloc, CategState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: FormField<String>(
                      initialValue: state.selectedImageURL,
                      validator: (e) {
                        if (state.selectedImageURL.isEmpty) {
                          return 'Seleziona un\'immagine';
                        }
                        return null;
                      },
                      builder: (field) {
                        return Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Custom Form Widget
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: field.hasError
                                        ? Colors.red.shade200
                                        : Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    pageCntrl.nextPage(
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      // Image
                                      Container(
                                        width: 180.0,
                                        height: 180.0,
                                        padding: const EdgeInsets.all(8.0),
                                        margin: EdgeInsets.only(
                                          top: 8.0,
                                          left: field.hasError ? 8.0 : 16.0,
                                          right: field.hasError ? 8.0 : 16.0,
                                          bottom: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius: BorderRadius.circular(
                                            16.0,
                                          ),
                                        ),
                                        child: state.selectedImageURL.isEmpty
                                            ? Center(
                                                child: const Text(
                                                  'Select Photo',
                                                ),
                                              )
                                            : AppImage(
                                                imageURL:
                                                    AppImageService.getImageFromGitRaw(
                                                      state.selectedImageURL,
                                                    ),
                                              ),
                                      ),
                                      // Button to Deselect image
                                      Positioned(
                                        top: 0.0,
                                        right: 0.0,
                                        child: Visibility(
                                          visible:
                                              state.selectedImageURL.isNotEmpty,
                                          child: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<CategBloc>()
                                                  .selectImageURL();
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStateColor.resolveWith(
                                                    (e) => Colors.red,
                                                  ),
                                            ),
                                            color: Colors.white,
                                            hoverColor: Colors.red.shade600,
                                            highlightColor: Colors.red.shade400,
                                            icon: Icon(Icons.close),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Error Text
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  field.errorText ?? '',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              // Nome Categ
              CustomTextField(
                title: 'Nome Categoria',
                hintText: 'Es. Drink List, Old Tom, Gin O Clock ...',
                controller: nameCategCntrl,
                validator: (e) {
                  if (e == null || e.isEmpty) {
                    return 'AO, EDDAJE EH';
                  }
                  return null;
                },
              ),
              // Description Categ
              CustomTextField(
                title: 'Descrizione Categoria',
                hintText: 'Descrivi il Cocktail',
                controller: descrCategCntrl,
                maxLines: 8,
                validator: (e) {
                  if (e == null || e.isEmpty) {
                    return 'ENNAMO EH';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.validator,
    this.maxLines = 1,
  });

  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Text-Field
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        // Text-Form-Field
        TextFormField(
          controller: controller,
          textCapitalization: TextCapitalization.sentences,
          validator: validator,
          maxLines: maxLines,
          decoration: InputDecoration(
            helperText: '',
            hintText: hintText,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
