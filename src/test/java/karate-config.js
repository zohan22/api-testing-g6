function fn() {
    
    let env = karate.env;
    
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.log('karate.env property was:', env);

    if (!env) {
        env = 'dev';
    }

    var config = {
       env: env,
       baseUrl: 'https://fakerestapi.azurewebsites.net/api/v1/',
       user: 'juanito'
    }

    return config;
}