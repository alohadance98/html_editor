library html_editor;

export 'package:html_editor/src/widgets/toolbar_widget.dart';
export 'package:html_editor/utils/callbacks.dart';
export 'package:html_editor/utils/toolbar.dart';
export 'package:html_editor/utils/plugins.dart';
export 'package:html_editor/utils/file_upload_model.dart';
export 'package:html_editor/utils/options.dart';
export 'package:html_editor/utils/utils.dart'
    hide setState, intersperse, getRandString;

export 'package:html_editor/src/html_editor_unsupported.dart'
    if (dart.library.html) 'package:html_editor/src/html_editor_web.dart';

export 'package:html_editor/src/html_editor_controller_unsupported.dart'
    if (dart.library.html) 'package:html_editor/src/html_editor_controller_web.dart';

/// Defines the 3 different cases for file insertion failing
enum UploadError { unsupportedFile, exceededMaxSize, jsException }

/// Manages the notification type for a notification displayed at the bottom of
/// the editor
enum NotificationType { info, warning, success, danger, plaintext }

/// Manages the way the toolbar displays:
/// [nativeGrid] - a grid view (non scrollable) of all the buttons
/// [nativeScrollable] - a scrollable one-line view of all the buttons
/// [nativeExpandable] - has an icon to switch between grid and scrollable formats
/// on the fly
/// [summernote] - uses the default summernote buttons (no native controls and
/// reduced feature support) //todo
enum ToolbarType { nativeGrid, nativeScrollable, nativeExpandable }

/// Manages the position of the toolbar, whether above or below the editor
/// [custom] - removes the toolbar. This is useful when you want to implement the
/// toolbar in a custom location using [ToolbarWidget]
///
/// Note: This is ignored when [ToolbarType.summernote] is set.
enum ToolbarPosition { aboveEditor, belowEditor, custom }

/// Returns the type of button pressed in the `onButtonPressed` function
enum ButtonType {
  style,
  bold,
  italic,
  underline,
  clearFormatting,
  strikethrough,
  superscript,
  subscript,
  foregroundColor,
  highlightColor,
  ul,
  ol,
  alignLeft,
  alignCenter,
  alignRight,
  alignJustify,
  increaseIndent,
  decreaseIndent,
  ltr,
  rtl,
  link,
  picture,
  audio,
  video,
  otherFile,
  table,
  hr,
  fullscreen,
  codeview,
  undo,
  redo,
  help,
  copy,
  paste,
}

/// Returns the type of dropdown changed in the `onDropdownChanged` function
enum DropdownType {
  style,
  fontName,
  fontSize,
  fontSizeUnit,
  listStyles,
  lineHeight,
  caseConverter,
}

/// Sets the direction the dropdown menu opens
enum DropdownMenuDirection { down, up }

/// Returns the type of file inserted in `onLinkInsertInt
enum InsertFileType { image, audio, video }

/// Sets how the virtual keyboard appears on mobile devices
enum HtmlInputType { decimal, email, numeric, tel, url, text }
