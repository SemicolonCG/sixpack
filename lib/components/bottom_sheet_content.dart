import 'package:flutter/material.dart';
import 'package:sixpack/subpages/bottomsheet.dart';

class BottomSheetContent extends StatelessWidget {
  final BuildContext context;
  final int index;
  const BottomSheetContent(
      {Key? key, required this.context, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: new BottomSheetWithPageView(
              context: context,
              index: index,
            ),
          ),
          Expanded(
            child: new ListTile(
              leading: new Icon(Icons.videocam),
              title: new Text(
                  'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type '),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: IconButton(
                  onPressed: () => nextPage(),
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                  ),
                  color: Colors.black,
                ),
              ),
              Flexible(
                child: IconButton(
                  onPressed: () => nextPage(),
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                  ),
                  color: Colors.black,
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  child: Text('close'),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  previousPage() {}

  nextPage() {}
}
