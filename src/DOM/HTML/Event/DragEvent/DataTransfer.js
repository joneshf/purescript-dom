"use strict";

exports.filesImpl = function(just, nothing, dataTransfer) {
  if (dataTransfer.files) {
    return just(dataTransfer.files);
  }
  else {
    return nothing;
  }
};
