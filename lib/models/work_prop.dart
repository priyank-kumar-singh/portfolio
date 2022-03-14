import 'package:portfolio/widgets/widgets.dart';

import 'rich_text.dart';

abstract class WorkProp {
  final String value;

  const WorkProp(this.value);
}

class WorkAsset extends WorkProp {
  const WorkAsset(String value) : super(value);
}

class WorkTitle extends WorkProp {
  const WorkTitle(String value) : super(value);
}

class WorkDescription extends WorkProp {
  const WorkDescription(String value) : super(value);
}

class WorkOrderedList extends WorkProp {
  final List<String> texts;

  const WorkOrderedList(this.texts) : super('');
}

class WorkUnorderedList extends WorkProp {
  final List<String> texts;

  const WorkUnorderedList(this.texts) : super('');
}

class WorkRichText extends WorkProp {
  final List<RichTextItem> texts;

  const WorkRichText(this.texts) : super('');
}

class WorkLink extends WorkProp {
  final SocialMediaIcons iconType;

  const WorkLink(this.iconType, String value) : super(value);
}
