import 'package:flutter/material.dart';
import 'package:portfolio/util/helpers/url_launch.dart';

class WorkCard extends Card {
  WorkCard({
    Key? key,
    required BuildContext context,
    required String image,
    required String title,
    required String description,
    required String url,
    BoxConstraints constraints = const BoxConstraints(),
    bool constrainCard = true,
    bool constrainImage = true,
    EdgeInsets? margin,
    BoxFit imageFit = BoxFit.fill,
    double borderRadius = 0.0,
  }) : super(
          key: key,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide.none,
          ),
          margin: margin,
          elevation: 1.0,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                if (url.startsWith('http')) {
                  URLHelper.open(url);
                } else {
                  Navigator.of(context).pushNamed(url);
                }
              },
              child: ConstrainedBox(
                constraints: constrainCard ? constraints : const BoxConstraints(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (constrainCard)
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius),
                          ),
                          child: Image.asset(
                            image,
                            fit: imageFit,
                          ),
                        ),
                      ),
                    if (!constrainCard)
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        ),
                        child: Image.asset(
                          image,
                          height: constrainImage ? constraints.maxHeight : null,
                          width: constrainImage ? constraints.maxWidth : null,
                          fit: imageFit,
                        ),
                      ),
                    ListTile(
                      title: Text(
                        title,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      subtitle: Text(
                        description,
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      minVerticalPadding: 12,
                      mouseCursor: SystemMouseCursors.click,
                    ),
                  ],
                ),
              ),
            ),
          )
        );
}
