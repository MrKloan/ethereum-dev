# ethereum-dev

Docker image for Ethereum development purposes.

## Install

```bash
$ docker pull mrkloan/ethereum-dev
```

## Tooling

The following tools are included:

 - [Node.js](https://nodejs.org/) / [npm](https://www.npmjs.com/)
 - [testrpc](https://github.com/ethereumjs/testrpc)
 - [truffle](https://github.com/trufflesuite/truffle)
 - [IPFS](https://ipfs.io/) v0.4.7

The image is provided with all these tools installed, but **not configured**.

It is up to you to configure your environment as you wish (init `IPFS`, run `testrpc` at startup...), or simply use this
image to run a simple Ethereum container in order to start coding fast!