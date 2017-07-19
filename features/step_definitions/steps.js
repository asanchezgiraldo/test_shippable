module.exports = function() {
    this.Given(/^I visit "([^"]*)"$/, function (uri) {
        browser.url(uri);
    });

    this.When(/^I search for "([^"]*)"$/, function (arg1) {
        browser.addValue("input[name=q]", arg1);
    });

    this.Then(/^I can see my results for "([^"]*)"$/, function (arg1) {
        browser.waitForVisible("a*=" + arg1, 5000);
    });

};

