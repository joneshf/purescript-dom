"use strict";

exports.document = function (window) {
  return function () {
    return window.document;
  };
};

exports.navigator = function (window) {
  return function () {
    return window.navigator;
  };
};

exports.location = function (window) {
  return function () {
    return window.location;
  };
};

exports.innerWidth = function (window) {
  return function () {
    return window.innerWidth;
  };
};

exports.innerHeight = function (window) {
  return function () {
    return window.innerHeight;
  };
};

exports.alert = function(window) {
  return function(str) {
    return function() {
      window.alert(str);
      return {};
    };
  };
};

exports.close = function(window) {
  return function() {
    window.close();
    return {};
  };
};

exports.closed = function(window) {
  return function() {
    return window.closed;
  };
};

exports.confirm = function(window) {
  return function(str) {
    return function() {
      return window.confirm(str);
    };
  };
};

exports.length = function(window) {
  return function() {
    return window.length;
  };
};

exports.minimize = function(window) {
  return function() {
    window.minimize();
    return {};
  };
};

exports.moveBy = function(window) {
  return function(xDelta) {
    return function(yDelta) {
      return function() {
        window.moveBy(xDelta, yDelta);
        return {};
      };
    };
  };
};

exports.moveTo = function(window) {
  return function(width) {
    return function(height) {
      return function() {
        window.moveTo(width, height);
        return {};
      };
    };
  };
};

exports._open = function(just) {
  return function(nothing) {
    return function(window) {
      return function(url) {
        return function(name) {
          return function(features) {
            return function() {
              var windowRef = window.open(url, name, features);
              return windowRef !== null ? just(windowRef) : nothing();
            };
          };
        };
      };
    };
  };
};

exports.outerHeight = function(window) {
  return function() {
    return window.outerHeight;
  };
};

exports.outerWidth = function(window) {
  return function() {
    return window.outerWidth;
  };
};

exports.print = function(window) {
  return function() {
    window.print();
    return {};
  };
};

exports._prompt = function(just) {
  return function(nothing) {
    return function(window) {
      return function(str) {
        return function() {
          var response = window.prompt(str);
          return response !== null ? just(response) : nothing();
        };
      };
    };
  };
};

exports.resizeBy = function(window) {
  return function(xDelta) {
    return function(yDelta) {
      return function() {
        window.resizeBy(xDelta, yDelta);
        return {};
      };
    };
  };
};

exports.resizeTo = function(window) {
  return function(width) {
    return function(height) {
      return function() {
        window.resizeTo(width, height);
        return {};
      };
    };
  };
};

exports.screenX = function(window) {
  return function() {
    return window.screenX;
  };
};

exports.screenY = function(window) {
  return function() {
    return window.screenY;
  };
};

exports.scroll = function(window) {
  return function(xCoord) {
    return function(yCoord) {
      return function() {
        window.scroll(xCoord, yCoord);
        return {};
      };
    };
  };
};

exports.scrollBy = function(window) {
  return function(xCoord) {
    return function(yCoord) {
      return function() {
        window.scrollBy(xCoord, yCoord);
        return {};
      };
    };
  };
};

exports.scrollX = function(window) {
  return function() {
    return window.scrollX;
  };
};

exports.scrollY = function(window) {
  return function() {
    return window.scrollY;
  };
};
