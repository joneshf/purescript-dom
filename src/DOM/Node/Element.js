"use strict";

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

exports._namespaceURI = getProp("namespaceURI");
exports._prefix = getProp("prefix");
exports.localName = getProp("localName");
exports.tagName = getProp("tagName");

exports.id = function (node) {
  return function () {
    return node.id;
  };
};

exports.setId = function (id) {
  return function (node) {
    return function () {
      node.id = id;
      return {};
    };
  };
};

exports.className = function (node) {
  return function () {
    return node.className;
  };
};

exports.setClassName = function (className) {
  return function (node) {
    return function () {
      node.className = className;
      return {};
    };
  };
};

exports.getElementsByTagName = function (localName) {
  return function (doc) {
    return function () {
      return doc.getElementsByTagName(localName);
    };
  };
};

exports._getElementsByTagNameNS = function (ns) {
  return function (localName) {
    return function (doc) {
      return function () {
        return doc.getElementsByTagNameNS(ns, localName);
      };
    };
  };
};

exports.getElementsByClassName = function (classNames) {
  return function (doc) {
    return function () {
      return doc.getElementsByClassName(classNames);
    };
  };
};

exports.setAttribute = function (name) {
  return function (value) {
    return function (element) {
      return function () {
        element.setAttribute(name, value);
        return {};
      };
    };
  };
};

exports._getAttribute = function (name) {
  return function (element) {
    return function () {
      return element.getAttribute(name);
    };
  };
};

exports.removeAttribute = function (name) {
  return function (element) {
    return function () {
      element.removeAttribute(name);
      return {};
    };
  };
};

// `matches` polyfill (https://caniuse.com/#feat=matchesselector)
if (typeof Element.prototype.matches !== "function") {
  Element.prototype.matches =
    Element.prototype.msMatchesSelector
      || Element.prototype.webkitMatchesSelector
      || Element.prototype.oMatchesSelector
      || Element.prototype.mozMatchesSelector;
}

exports.matches = function (selector) {
  return function (element) {
    return element.matches(selector);
  }
}

// `closest` polyfill (https://caniuse.com/#feat=element-closest)
if (typeof Element.prototype.closest !== "function") {
  Element.prototype.closest = function closest(selector) {
    return (function searchUpTree(selector, element) {
      return element == null
         ? null
         : element.matches(selector)
           ? element
           : searchUpTree(selector, element.parentElement);
    }(selector, this));
  }
}

exports.closest = function (selector) {
  return function (element) {
    return element.closest(selector);
  }
}

// - CSSOM ---------------------------------------------------------------------

exports.scrollTop = function (node) {
  return function () {
    return node.scrollTop;
  };
};

exports.setScrollTop = function (scrollTop) {
  return function (node) {
    return function () {
      node.scrollTop = scrollTop;
      return {};
    };
  };
};

exports.scrollLeft = function (node) {
  return function () {
    return node.scrollLeft;
  };
};

exports.setScrollLeft = function (scrollLeft) {
  return function (node) {
    return function () {
      node.scrollLeft = scrollLeft;
      return {};
    };
  };
};

exports.scrollWidth = function (el) {
  return function () {
    return el.scrollWidth;
  };
};

exports.scrollHeight = function (el) {
  return function () {
    return el.scrollHeight;
  };
};

exports.clientTop = function (el) {
  return function () {
    return el.clientTop;
  };
};

exports.clientLeft = function (el) {
  return function () {
    return el.clientLeft;
  };
};

exports.clientWidth = function (el) {
  return function () {
    return el.clientWidth;
  };
};

exports.clientHeight = function (el) {
  return function () {
    return el.clientHeight;
  };
};
