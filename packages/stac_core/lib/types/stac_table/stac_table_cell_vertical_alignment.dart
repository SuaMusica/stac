/// Vertical alignment options for table cells.
///
/// Mirrors Flutter's `TableCellVerticalAlignment` and controls how the child of
/// a table cell is positioned vertically within the row height.
enum StacTableCellVerticalAlignment {
  /// Align at the top of the row.
  top,

  /// Center vertically within the row.
  middle,

  /// Align at the bottom of the row.
  bottom,

  /// Align the baselines of text for the row.
  baseline,

  /// Expand to fill the full height of the row.
  fill,
}
