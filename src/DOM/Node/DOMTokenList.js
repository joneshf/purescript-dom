/* global exports */
"use strict";

// module DOM.Node.DOMTokenList

exports.length = function (list) {
  return function () {
    return list.length;
  };
};

exports.item = function (index) {
  return function (list) {
    return function () {
      return list.item(index);
    };
  };
};

exports.contains = function(token) {
  return function (list) {
    return function () {
      return list.contains(token);
    }
  }
}

exports.add = function(tokens) {
  return function (list) {
    return function () {
      return list.add.apply(list, tokens);
    }
  }
}

exports.remove = function(tokens) {
  return function (list) {
    return function () {
      return list.remove.apply(list, tokens);
    }
  }
}

exports.toggle = function(token) {
  return function (list) {
    return function () {
      return list.toggle(token);
    }
  }
}

exports.replace = function(token) {
  return function (newToken) {
    return function (list) {
      return function () {
        return list.replace(token, newToken);
      }
    }
  }
}

exports.supports = function(token) {
  return function (list) {
    return function () {
      return list.supports(token);
    }
  }
}

