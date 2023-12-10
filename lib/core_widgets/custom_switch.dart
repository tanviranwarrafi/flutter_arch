import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onToggle;
  final double width;
  final double height;
  final double toggleSize;
  final double borderRadius;
  final double padding;
  final BoxBorder? switchBorder;
  final BoxBorder? toggleBorder;
  final BoxBorder? activeToggleBorder;
  final BoxBorder? inactiveToggleBorder;
  final Duration duration;
  final bool disabled;

  const CustomSwitch({
    required this.value,
    required this.onToggle,
    this.width = 70.0,
    this.height = 35.0,
    this.toggleSize = 25.0,
    this.borderRadius = 20.0,
    this.padding = 2.0,
    this.switchBorder,
    this.toggleBorder,
    this.activeToggleBorder,
    this.inactiveToggleBorder,
    this.duration = const Duration(milliseconds: 200),
    this.disabled = false,
  });

  @override
  _ModifiedSwitchState createState() => _ModifiedSwitchState();
}

class _ModifiedSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin {
  late Animation<dynamic> toggleAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, value: widget.value ? 1.0 : 0.0, duration: widget.duration);
    var curveAnimation = CurvedAnimation(parent: animationController, curve: Curves.linear);
    toggleAnimation = AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight).animate(curveAnimation);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CustomSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value == widget.value) return;
    widget.value ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Align(
          child: InkWell(
            onTap: () => _switchOnTap(context),
            child: Opacity(opacity: widget.disabled ? 0.6 : 1, child: _switchWidget(context)),
          ),
        );
      },
    );
  }

  void _switchOnTap(BuildContext context) {
    if (!widget.disabled) {
      widget.value ? animationController.forward() : animationController.reverse();
      widget.onToggle(!widget.value);
    }
  }

  Widget _switchWidget(BuildContext context) {
    Color switchColor = white;
    Border? switchBorder;
    if (widget.value) {
      switchColor = primary;
      switchBorder = Border.all(color: primary);
    } else {
      switchColor = white;
      switchBorder = Border.all(color: grey);
    }
    var radius = BorderRadius.circular(widget.borderRadius);
    return Container(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.all(widget.padding),
      decoration: BoxDecoration(borderRadius: radius, color: switchColor, border: switchBorder),
      child: Stack(children: <Widget>[_toggleWidget(context)]),
    );
  }

  Widget _toggleWidget(BuildContext context) {
    Color toggleColor = white;
    Border? toggleBorder;
    if (widget.value) {
      toggleColor = white;
      toggleBorder = widget.activeToggleBorder as Border? ?? widget.toggleBorder as Border?;
    } else {
      toggleColor = primary;
      toggleBorder = widget.inactiveToggleBorder as Border? ?? widget.toggleBorder as Border?;
    }
    return Align(
      alignment: toggleAnimation.value,
      child: Container(
        width: widget.toggleSize,
        height: widget.toggleSize,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(shape: BoxShape.circle, color: toggleColor, border: toggleBorder),
        child: FittedBox(
          child: Stack(
            children: [
              Center(child: AnimatedOpacity(opacity: widget.value ? 1.0 : 0.0, duration: widget.duration)),
              Center(child: AnimatedOpacity(opacity: !widget.value ? 1.0 : 0.0, duration: widget.duration)),
            ],
          ),
        ),
      ),
    );
  }
}
