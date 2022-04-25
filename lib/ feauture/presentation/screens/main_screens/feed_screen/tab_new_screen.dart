import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gallary_app/%20feauture/data/models/photo_models/photo_models.dart';
import 'package:gallary_app/%20feauture/presentation/bloc/photo_bloc/photo_bloc.dart';

class TabNew extends StatelessWidget {
  const TabNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          if (state is PhotoSuccses) {
            return GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                crossAxisCount: 2,
                children: 
                  state.photos.map((e) => Photoitems(photos: e,)).toList(),
                );
          }
          if (state is PhotoLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class Photoitems extends StatelessWidget {
  const Photoitems({
    Key? key,
    required this.photos,
  }) : super(key: key);

  final PhotoModels photos;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.network('http://gallery.dev.webant.ru/media/${photos.dataƒ}')
        width: 92,
        height: 97,
      ),
    );
  }
}
