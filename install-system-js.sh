
#!/bin/bash

mkdir -m 777 .github
mkdir -m 777 server

mkdir -m 777 server/src

mkdir -m 777 server/src/controllers
mkdir -m 777 server/src/database
mkdir -m 777 server/src/models
mkdir -m 777 server/src/utils

cd server
npm init -y
npm install express
npm install helmet
npm install cors
npm install body-parser
npm install cookie-parser

touch .gitignore
echo "
node_modules
" >> .gitignore

cd src
touch server.js
touch routes.js

echo "
const express = require('express');
const helmet = require('helmet');
const http = require('http');
const cors = require('cors');
const bodyParser = require('body-parser');

const cookieParser = require('cookie-parser');
const routes = require('./routes');

const app = express();

app.use(helmet());
app.use(cookieParser());
app.use(cors());

app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

app.use(routes);


const server = http.createServer(app);
server.listen(3333);
console.log('Servidor escutando na porta 3333...');
" >> server.js

echo "
const express = require('express');

const routes = express.Router();

//controller endereço:
//const Controller = require(' ');


//Metodos de roteamento do HTTP mais utilizados:
//routes.get()
//routes.post()
//routes.put();
//routes.delete();
//routes.head();
//routes.options();
//routes.connect();

module.exports = routes;

" >> routes.js

cd ..
cd ..

npx create-react-app web

#mkdir -m 777 web/public
#mkdir -m 777 web/src
cd web
npm install axios
npm install react-router-dom

rm -r src
rm -r public
cd ..

mkdir -m 777 web/src
mkdir -m 777 web/public

mkdir -m 777 web/src/assets
mkdir -m 777 web/src/components
mkdir -m 777 web/src/pages
mkdir -m 777 web/src/services

mkdir -m 777 web/src/assets/images
mkdir -m 777 web/src/assets/images/icons

mkdir -m 777 web/src/assets/styles
cd web
touch .gitignore

echo "
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

" >> .gitignore

cd public
touch index.html

echo "

<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    
    <meta name='viewport' content='width=device-width, initial-scale=1' />
    <meta name='theme-color' content='#000000' />

    <link href='https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&family=Poppins&display=swap' rel='stylesheet'>
    
    <title>Proffy</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id='root'></div>
  </body>
</html>

" >> index.html

cd ..
cd src
touch routes.js
touch index.js
touch App.js

echo "

import React from 'react';
import { BrowserRouter, Route } from 'react-router-dom';



function Routes() {
  return (
    <BrowserRouter>
      <Route path='' exact component={''} />
      <Route path='' component={''} />
      <Route path='' component={''} />
    </BrowserRouter>
  );
}

export default Routes;


" >> routes.js


echo "

import React from 'react';

import Routes from './routes';

import './assets/styles/global.css';


function App() {
  return (
    <Routes />
  );
}

export default App;

" >> App.js

echo "

import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

" >> index.js


cd assets/styles
touch global.css

echo " 

:root {
  font-size: 60%;

  --color-background: #F0F0F7;
  --color-primary-lighter: #9871F5;
  --color-primary-light: #916BEA;
  --color-primary: #8257E5;
  --color-primary-dark: #774DD6;
  --color-primary-darker: #6842C2;
  --color-secundary: #04D361;
  --color-secundary-dark: #04BF58;
  --color-title-in-primary: #FFFFFF;
  --color-text-in-primary: #D4C2FF;
  --color-text-title: #32264D;
  --color-text-complement: #9C98A6;
  --color-text-base: #6A6180;
  --color-line-in-white: #E6E6F0;
  --color-input-background: #F8F8FC;
  --color-button-text: #FFFFFF;
  --color-box-base: #FFFFFF;
  --color-box-footer: #FAFAFC;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body, #root {
  height: 100vh;
}

body {
  background: var(--color-background);
}

#root {
  display: flex;
  align-items: center;
  justify-content: center;
}

body,
input,
button,
textarea {
  font: 500 1.6rem Poppins;
  color: var(--color-text-base);
}

.container {
  width: 90vw;
  max-width: 700px;
}

@media (min-width: 700px) {
  :root {
    font-size: 62.5%;
  }
}

" >> global.css

cd .. 
cd src
cd services
touch api.js

echo "

import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:3333',
});

export default api;

" >> api.js

cd ..
cd ..
cd ..

npm install -g expo-cli
expo init mobile

expo init mobile
mkdir -m 777 mobile/src
mkdir -m 777 mobile/src/components
mkdir -m 777 mobile/src/pages
mkdir -m 777 mobile/src/routes
mkdir -m 777 mobile/src/services

cd mobile
npm install axios

cd src
cd services
touch api.js

echo "

import axios from 'axios';

const api = axios.create({
  baseURL: 'endereço da api'
});

export default api;

" >> api.js

#####################
 
