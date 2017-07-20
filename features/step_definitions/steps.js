var window_handler = require('../utils/window_handler');


module.exports = function() {
    this.Given(/^I visit "([^"]*)"$/, function (uri) {
        browser.url(uri);
        var window = new window_handler();
        window.windowResize("mobile portrait");
    });

    this.When(/^I search for "([^"]*)"$/, function (arg1) {
        browser.addValue("input[name=q]", arg1);
    });

    this.Then(/^I can see my results for "([^"]*)"$/, function (arg1) {
        browser.waitForVisible("a*=" + arg1, 5000);
    });

};

