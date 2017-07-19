module.exports = {
    webdriverio: {
        desiredCapabilities: {
            chromeOptions: {
                args: ["--enable-automation", "headless", "disable-gpu"]
            }
        }
    }
};