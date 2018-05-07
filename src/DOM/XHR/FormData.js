/* global FormData */
"use strict";

exports.newFormData = function () {
  return new FormData();
};

exports.appendStringImpl = function (form, key, val) {
  form.append(key, val);
  return {};
};

exports.appendWithNameImpl = function (form, key, val, name) {
  form.append(key, val, name);
  return {};
};
