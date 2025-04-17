function fn() {
  var env = karate.env || 'chrome'; // default to chrome if no env is set
  karate.log('Running with browser:', env);

  if (env === 'firefox') {
    karate.configure('driver', {
      type: 'geckodriver',
      executable: 'C:/gecko/geckodriver.exe',
      binary: 'C:/Program Files/Mozilla Firefox/firefox.exe',
      headless: false,
      showDriverLog: true
    });
  } else if (env === 'chrome') {
    karate.configure('driver', {
      type: 'chrome',
      headless: false,
      showDriverLog: true,
      timeout: 30000,
      addOptions: [
        '--incognito'
      ]
    });
  }

  return {
    baseUrl: 'https://www.saucedemo.com/v1'
  };
}
