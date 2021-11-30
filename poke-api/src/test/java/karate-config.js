function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = { // base config JSON
    appId: 'id.do.app',
    appSecret: 'segredo.do.app',
    urlBase: 'https://pokeapi.co/api/v2/'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
  } else if (env == 'e2e') {}
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}