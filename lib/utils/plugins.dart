/// Abstract class that all the plguin classes extend
abstract class Plugins {
  const Plugins();

  /// Provides the JS and CSS tags to be inserted inside <head>. Only used for Web
  String getHeadString();

  /// Provides the toolbar option for the plugin
  String getToolbarString();
}

/// Summernote @ Mention plugin - adds a dropdown to select the person to mention whenever
/// the '@' character is typed into the editor. The list of people to mention is
/// drawn from the [mentionsWeb] (on Web)
/// parameter. You can detect who was mentioned using the [onSelect] callback.
///
/// README available [here](https://github.com/team-loxo/summernote-at-mention)
class SummernoteAtMention extends Plugins {
  /// List of mentions to display on Web. The default behavior is to only return
  /// the mentions containing the string entered by the user in the editor
  final List<String>? mentionsWeb;

  /// Callback to run code when a mention is selected
  final void Function(String)? onSelect;

  const SummernoteAtMention({this.mentionsWeb, this.onSelect})
      : assert(mentionsWeb != null);

  @override
  String getHeadString() {
    return '<script src=\"assets/packages/html_editor/assets/plugins/summernote-at-mention/summernote-at-mention.js\"></script>';
  }

  @override
  String getToolbarString() {
    return '';
  }

  String getMentionsWeb() {
    var mentionsString = '[';
    for (var e in mentionsWeb!) {
      mentionsString =
          mentionsString + "'$e'" + (e != mentionsWeb!.last ? ', ' : '');
    }
    return mentionsString + ']';
  }
}
