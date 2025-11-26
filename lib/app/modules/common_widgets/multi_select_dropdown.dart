import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/dialog_title.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MultiSelectDropdown<T> extends StatefulWidget {
  final List<T> items;
  final List<T> initialSelected;
  final Function(List<T>) onSelectedItems;
  final String Function(T) itemLabelBuilder;
  final String hint;

  const MultiSelectDropdown({
    super.key,
    required this.items,
    required this.initialSelected,
    required this.onSelectedItems,
    required this.itemLabelBuilder,
    this.hint = "Select",
  });

  @override
  State<MultiSelectDropdown<T>> createState() => _MultiSelectDropdownState<T>();
}

class _MultiSelectDropdownState<T> extends State<MultiSelectDropdown<T>> {
  late List<T> selected;

  @override
  void initState() {
    super.initState();
    selected = [...widget.initialSelected];
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<List<T>>(
      offset: Offset(0, 54.h),
      elevation: 4,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onSelected: (value) {
        widget.onSelectedItems(value);
        if (value != null) {
          setState(() => selected = value);
        }
      },
      itemBuilder: (context) => [
        MultiSelectPopupMenu<T>(
          items: widget.items,
          initialSelected: selected,
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
}


class MultiSelectPopupMenu<T> extends PopupMenuEntry<List<T>> {
  final List<T> items;
  final List<T> initialSelected;
  final String Function(T) itemLabelBuilder;

  const MultiSelectPopupMenu({
    super.key,
    required this.items,
    required this.initialSelected,
    required this.itemLabelBuilder,
  });

  @override
  double get height => 0;

  @override
  bool represents(List<T>? value) => false;

  @override
  State createState() => _MultiSelectPopupMenuState<T>();
}

class _MultiSelectPopupMenuState<T> extends State<MultiSelectPopupMenu<T>> {
  late BehaviorSubject<List<T>> selected$;

  @override
  void initState() {
    super.initState();
    selected$ = BehaviorSubject<List<T>>.seeded([...widget.initialSelected]);
  }

  void toggle(T value) {
    final current = [...selected$.value];

    if (current.contains(value)) {
      current.remove(value);
    } else {
      current.add(value);
    }

    selected$.add(current);
  }

  @override
  void dispose() {
    selected$.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<T>>(
      stream: selected$,
      builder: (context, snapshot) {
        final selected = snapshot.data ?? [];

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

                /// Items
                ...widget.items.map((item) {
                  final label = widget.itemLabelBuilder(item);
                  final isSelected = selected.contains(item);

                  return Column(
                    children: [
                      InkWell(
                        onTap: () => toggle(item),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 4.w),
                          child: Row(
                            children: [
                              isSelected
                                  ? Icon(Icons.check,
                                  size: 20.r, color: context.colors.primary)
                                  : context.hGap(18.w),
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

