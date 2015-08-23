/* global exports */
"use strict";

// module DOM.Node.Element

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

exports.namespaceURI = getProp("namespaceURI");
exports.prefix = getProp("prefix");
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

exports.getElementsByTagNameNS = function (ns) {
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

exports.setAttributeNS = function (ns) {
  return function (localName) {
    return function (value) {
      return function (element) {
        return function () {
          element.setAttribute(localName, value);
          return {};
        };
      };
    };
  };
};

exports.getAttribute = function (name) {
  return function (element) {
    return function () {
      return element.getAttribute(name);
    };
  };
};

exports.getAttributeNS = function (ns) {
  return function (localName) {
    return function (element) {
      return function () {
        return element.getAttribute(localName);
      };
    };
  };
};

exports.hasAttribute = function (name) {
  return function (element) {
    return function () {
      return element.hasAttribute(name);
    };
  };
};

exports.hasAttributeNS = function (ns) {
  return function (localName) {
    return function (element) {
      return function () {
        return element.hasAttribute(localName);
      };
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

exports.removeAttributeNS = function (ns) {
  return function (name) {
    return function (element) {
      return function () {
        element.removeAttribute(name);
        return {};
      };
    };
  };
};
