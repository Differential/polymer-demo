(function () {

  'use strict';

  var assert = require('assert');

  module.exports = function () {

    var helper = this;

    this.Given(/^I am on the home page$/, function (callback) {
      helper.world.browser.
        url(helper.world.cucumber.mirror.rootUrl).
        call(callback);
    });

    this.When(/^I navigate to "([^"]*)"$/, function (relativePath, callback) {
      helper.world.browser.
        url(helper.world.cucumber.mirror.rootUrl + relativePath).
        call(callback);
    });

    this.Then(/^I should see the headline of "([^"]*)"$/, function (expectedText, callback) {

      helper.world.browser.
        execute(function(){
          Session.set("polymer-ready", true);
        }).
        getText('h1', function (err, text) {
          if (err) {
              callback.fail(err.message);
          }
          assert.equal(text, expectedText);
          callback();
        });
    });



  };

})();
