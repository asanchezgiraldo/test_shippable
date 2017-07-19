module.exports = function() {
    this.Given(/^I visit "([^"]*)"$/, function (uri) {
        browser.url(uri);
        browser.setViewportSize({ width: 320, height: 568 })
    });

    this.When(/^I search for "([^"]*)"$/, function (arg1) {
        browser.addValue("input[name=q]", arg1);
    });

    this.Then(/^I can see my results for "([^"]*)"$/, function (arg1) {
        browser.waitForVisible("a*=" + arg1, 5000);
    });

};

