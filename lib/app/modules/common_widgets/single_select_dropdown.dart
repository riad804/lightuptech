import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:rxdart/rxdart.dart';

import 'dialog_title.dart';

class SingleSelectDropdown<T> extends StatefulWidget {
  final List<T> items;
  final T? initialSelected;
  final String Function(T) itemLabelBuilder;
  final Function(T) onSelectedItems;
  final String hint;

  const SingleSelectDropdown({
    super.key,
    required this.items,
    required this.itemLabelBuilder,
    required this.onSelectedItems,
    this.initialSelected,
    this.hint = "Select",
  });

  @override
  State<SingleSelectDropdown<T>> createState() =>
      _SingleSelectDropdownState<T>();
}

class _SingleSelectDropdownState<T> extends State<SingleSelectDropdown<T>> {
  final _selectedSubject = BehaviorSubject<T?>();
  // T? selected;

  @override
  void initState() {
    super.initState();
    _selectedSubject.add(widget.initialSelected);
    // selected = widget.initialSelected;
  }

  @override
  void dispose() {
    _selectedSubject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _selectedSubject.stream,
      builder: (context, asyncSnapshot) {
        return PopupMenuButton<T>(
          offset: Offset(0, 54.h),
          elevation: 4,
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onSelected: (value) {
            widget.onSelectedItems(value);
            _selectedSubject.add(value);
            // setState(() => selected = value);
          },
          itemBuilder: (context) => [
            SingleSelectPopupMenu<T>(
              items: widget.items,
              initial: asyncSnapshot.data,
              itemLabelBuilder: widget.itemLabelBuilder,
            ),
          ],
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: BoxDecoration(
              color: context.colors.secondaryContainer,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(widget.hint,
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: context.colors.onSecondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        );
      }
    );
  }
}

class SingleSelectPopupMenu<T> extends PopupMenuEntry<T> {
  final List<T> items;
  final T? initial;
  final String Function(T) itemLabelBuilder;

  const SingleSelectPopupMenu({
    super.key,
    required this.items,
    required this.initial,
    required this.itemLabelBuilder,
  });

  @override
  double get height => 0;

  @override
  bool represents(T? value) => false;

  @override
  State createState() => _SingleSelectPopupMenuState<T>();
}

class _SingleSelectPopupMenuState<T> extends State<SingleSelectPopupMenu<T>> {
  late BehaviorSubject<T?> selected$;

  @override
  void initState() {
    super.initState();
    selected$ = BehaviorSubject<T?>.seeded(widget.initial);
  }

  void select(T value) {
    selected$.add(value);
    // Navigator.pop(context, value); // CLOSE ON TAP
  }

  @override
  void dispose() {
    selected$.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T?>(
      stream: selected$,
      builder: (context, snapshot) {
        final selected = snapshot.data;

        return Material(
          color: Colors.transparent,
          child: Container(
            width: 260.w,
            padding: context.padAll(),
            decoration: BoxDecoration(
              color: context.colors.surfaceContainer,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Header
                DialogTitle(
                  title: "Select",
                  onClose: () => Navigator.pop(context, selected),
                ),
                context.v12,

                /// List items
                ...widget.items.map((item) {
                  final label = widget.itemLabelBuilder(item);
                  final isSelected = item == selected;

                  return Column(
                    children: [
                      InkWell(
                        onTap: () => select(item),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 4),
                          child: Row(
                            children: [
                              if (isSelected)
                                Icon(Icons.check,
                                    size: 20.r, color: context.colors.primary)
                              else
                                context.hGap(18.w),
                              context.hGap(8.w),
                              Text(
                                label,
                                style: context.textTheme.bodyMedium!.copyWith(
                                  color: context.colors.secondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (item != widget.items.last)
                        Container(
                          height: 1.h,
                          color: context.colors.outline,
                        ),
                    ],
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
