# CKB Explorer

[![TravisCI](https://travis-ci.com/nervosnetwork/ckb-explorer-frontend.svg?branch=develop)](https://travis-ci.com/nervosnetwork/ckb-explorer-frontend)

CKB Explorer is a [Nervos CKB](https://github.com/nervosnetwork/ckb) blockchain explorer built with React and Ruby on Rails.

It supports searching block, transaction, address and includes two parts: [frontend](https://github.com/nervosnetwork/ckb-explorer-frontend) and [backend server](https://github.com/nervosnetwork/ckb-explorer).

## CKB Explorer Frontend

### Prerequisite

* Node.js 11.10 or later

### Edit .env file

You need to edit .env.develop to set your own api url as ckb explorder server.

``` shell
REACT_APP_API_URL = 'http://your-api-url'   # Set your own api url
```

### Installation

``` shell
git clone https://github.com/nervosnetwork/ckb-explorer-frontend.git
cd ckb-explorer-frontend
yarn install   # install dependency libraries
yarn start     # run ckb explorer frontend on localhost
```

### Development

``` shell
yarn build    # build ckb explorer frontend project
yarn test     # run project test cases
```

## License

CKB Explorer Frontend is released under the terms of the MIT license. See [COPYING](COPYING) for more information or see [https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT).
