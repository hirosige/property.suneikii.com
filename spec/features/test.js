this.demoTest = function (browser) {
  browser.url('http://google.co.jp');
  browser .saveScreenshot('./reports/homepage.png');
  browser.waitForElementVisible('body', 1000);
  browser.assert.containsText('body', "Google");
  browser.end();
};
