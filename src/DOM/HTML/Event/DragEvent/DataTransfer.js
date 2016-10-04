"use strict";

exports.filesImpl = function(just) {
  return function(nothing) {
    return function(dataTransfer) {
      if (dataTransfer.files) {
	return just(dataTransfer.files);
      }
      else {
	return nothing;
      }
    };
  };
};
