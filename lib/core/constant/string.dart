// App
const String appTitle = 'Urban Word';
const String themePath = 'assets/json/app_theme.json';

// Networking and APIs
const String baseUrl =
    'https://mashape-community-urban-dictionary.p.rapidapi.com/define';

const String paramName = 'term';

const Map<String, String> headers = {
  'X-RapidAPI-Key': '<YOUR KEY HERE>',
  'X-RapidAPI-Hos': '<YOUR HOS HERE>',
};

// Routes
const String initRoute = '/init';
const String skeletonRoute = '/skeleton';
const String notFoundRoute = '/not-found';

// Hive Boxs
const String urbanWordBox = 'urbanWordBox';
const String recentSearchBox = 'recentSearchBox';

// App Info
const String warningText = 'Something went wrong 😵';
const String hintText = 'Try search something!';
const String noSearchResult = 'Nothing has found 🤔📄';
