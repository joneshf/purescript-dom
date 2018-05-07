"use strict";

exports.emptySTFormData = function () {
  return new FormData();
};

exports.appendSTFormDataImpl = function (formData, name, value) {
  formData.append(name, value);
  return {};
};

exports.setSTFormDataImpl = function (formData, name, value) {
  formData.set(name, value);
  return {};
};

exports.freezeImpl = function (formData) {
  var result = new FormData();

  formData.forEach(function (value, key) {
    result.append(key, value);
  });

  return result;
};

exports.thawImpl = exports.freeze;
