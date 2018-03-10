"use strict";

exports.anchorNode = function (selection) {
  return function () {
    return selection.anchorNode;
  };
};

exports.anchorOffset = function (selection) {
  return function () {
    return selection.anchorOffset;
  };
};

exports.focusNode = function (selection) {
  return function () {
    return selection.focusNode;
  };
};

exports.focusOffset = function (selection) {
  return function () {
    return selection.focusOffset;
  };
};

exports.isCollapsed = function (selection) {
  return function () {
    return selection.isCollapsed;
  };
};

exports.rangeCount = function (selection) {
  return function () {
    return selection.rangeCount;
  };
};

exports.typeImpl = function (selection) {
  return function () {
    return selection.type;
  };
};

exports.getRangeAt = function (index) {
  return function (selection) {
    return function () {
      return selection.getRangeAt(index);
    };
  };
};

exports.collapse = function (parentNode) {
  return function (offset) {
    return function (selection) {
      return function () {
        selection.collapse(parentNode, offset);
      };
    };
  };
};

exports.extend = function (parentNode) {
  return function (offset) {
    return function (selection) {
      return function () {
        selection.extend(parentNode, offset);
      };
    };
  };
};

exports.collapseToStart = function (selection) {
  return function () {
    selection.collapseToStart();
  };
};

exports.collapseToEnd = function (selection) {
  return function () {
    selection.collapseToEnd();
  };
};

exports.selectAllChildren = function (parentNode) {
  return function (selection) {
    return function () {
      selection.selectAllChildren(parentNode);
    };
  };
};

exports.addRange = function (range) {
  return function (selection) {
    return function () {
      selection.addRange(range);
    };
  };
};

exports.removeRange = function (range) {
  return function (selection) {
    return function () {
      selection.removeRange(range);
    };
  };
};

exports.removeAllRanges = function (selection) {
  return function () {
    selection.removeAllRanges();
  };
};

exports.deleteFromDocument = function (selection) {
  return function () {
    selection.deleteFromDocument();
  };
};

exports.toString = function (selection) {
  return function () {
    return selection.toString();
  };
};

exports.containsNode = function (aNode) {
  return function (aPartlyContained) {
    return function (selection) {
      return function () {
        return selection.containsNode(aNode, aPartlyContained);
      };
    };
  };
};

exports.setBaseAndExtent = function (anchorNode) {
  return function (anchorOffset) {
    return function (focusNode) {
      return function (focusOffset) {
        return function (selection) {
          return function () {
            selection.setBaseAndExtent(
              anchorNode,
              anchorOffset,
              focusNode,
              focusOffset
            );
          };
        };
      };
    };
  };
};
