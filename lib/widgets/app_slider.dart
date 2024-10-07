import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';


//TODO fake slider data


final List<String> imgList = [
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
];

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
    required this.imagList,
  });

  final List<String> imagList;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  final List<Widget> items = imgList
      .map(
        (e) => Padding(
          padding: EdgeInsets.all(AppDimens.meduim),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.meduim),
              child: Image.network(
                e,
                fit: BoxFit.fill,
              )),
        ),
      )
      .toList();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _controller,
              items: items,
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              )),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList
                  .asMap()
                  .entries
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(AppDimens.small),
                      child: GestureDetector(
                        onTap: () => _controller.animateToPage(e.key),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == e.key
                                  ? Colors.black
                                  : Colors.grey),
                        ),
                      ),
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }
}
