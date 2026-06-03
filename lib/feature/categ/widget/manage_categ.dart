import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/feature/categ/widget/categ_form.dart';
import 'package:oldtom_admin/feature/git_image/widget/git_image.dart';
import 'package:oldtom_admin/widget/manage_modal.dart';

class ManageCateg extends StatefulWidget {
  const ManageCateg({super.key, this.categ});

  final CategModel? categ;

  @override
  State<ManageCateg> createState() => _ManageCategState();
}

class _ManageCategState extends State<ManageCateg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCategCntrl = TextEditingController();
  final TextEditingController _descrCategCntrl = TextEditingController();
  final PageController _pageCntrl = PageController();

  @override
  void initState() {
    super.initState();
    if (widget.categ != null) {
      _nameCategCntrl.text = widget.categ!.name;
      _descrCategCntrl.text = widget.categ!.description;
      context.read<CategBloc>().selectImageURL(
        selectedImageURL: widget.categ!.image,
      );
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _nameCategCntrl.dispose();
    _descrCategCntrl.dispose();
    _pageCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ManageModal(
      title:
          '${widget.categ != null ? 'Aggiorna' : 'Crea'} ${context.ltr.category(1)}',
      body: PageView(
        controller: _pageCntrl,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // PageView_1 = Categ Form
          CategForm(
            formKey: _formKey,
            nameCategCntrl: _nameCategCntrl,
            descrCategCntrl: _descrCategCntrl,
            pageCntrl: _pageCntrl,
          ),
          // PageView_2 = Git Image
          GitImage(pageCntrl: _pageCntrl),
        ],
      ),
      actions: [
        BlocBuilder<CategBloc, CategState>(
          builder: (context, state) {
            return ActionChip(
              onPressed: () {
                // Validate Form
                if (_formKey.currentState!.validate() &&
                    state.selectedImageURL.isNotEmpty) {
                  // CREATE CATEG
                  if (widget.categ == null) {
                    final CategModel newCateg = CategModel(
                      name: _nameCategCntrl.text,
                      description: _descrCategCntrl.text,
                      image: state.selectedImageURL,
                    );
                    context.read<CategBloc>().createCateg(categ: newCateg);
                    context.router.pop();
                  }
                  // UPDATE CATEG
                  else {
                    log('Update categ: ${_nameCategCntrl.text}');
                    final CategModel newCateg = widget.categ!.copyWith(
                      image: state.selectedImageURL,
                      name: _nameCategCntrl.text,
                      description: _descrCategCntrl.text,
                    );
                    context.read<CategBloc>().updateCateg(
                      id: '${widget.categ?.id}',
                      categ: newCateg,
                    );
                    context.router.pop();
                  }
                }
              },
              label: Text(context.ltr.yes),
            );
          },
        ),
      ],
    );
  }
}
