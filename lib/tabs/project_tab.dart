import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gobi_portfolio/constants.dart';
import 'package:gobi_portfolio/widgets/keyword_widget.dart';
import 'package:gobi_portfolio/widgets/tile_widget.dart';

class ProjectTab extends StatelessWidget {
  const ProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    void filter() {
      // 해당 키워드를 가진 게시물만 보이기
    }

    var heights = [0.0, 300.0, 350.0, 400.0];
    return SizedBox.expand(
      child: Container(
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Projects', style: titleTextStyle),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              keywordWidget('ALL', transparentGrey, function: filter),
              keywordWidget('AI/Data', transparentRed, function: filter),
              keywordWidget('Application', transparentGreen, function: filter),
              keywordWidget('Web', transparentYellow, function: filter),
              keywordWidget('Etc', transparentBlue, function: filter),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              child: MasonryGridView.count(
                itemCount: 6,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return Tile(index: index, extent: heights[index % 3 + 1]);
                },
              ))
        ]),
      ),
    );
  }
}
