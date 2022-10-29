# Typescript / Node / AWS Template
A template repository for getting up and running with Typescript, Node.js and AWS Lambda

## Prerequisites
You'll need the following installed:
- Yarn
- Node
- awscli (this is necessary as you'll need to be configured against a valid aws account/profile)

The easiest way to get setup is to install the above via a package manager
**Mac**:
```
// install homebrew  
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  

// install Yarn & Node  
brew install yarn  
brew install node  
brew install awscli // if not already installed  
```

**Windows**:  
Package manager install guide: https://chocolatey.org/install
```
// install Yarn & Node
choco install nodejs.install
choco install yarn
choco install awscli
```

Validate installation of prerequisites:
```
aws --version // Should return something like below
aws-cli/2.7.12 Python/3.9.11 Darwin/22.1.0 exe/x86_64 prompt/off

yarn --version // Should return something like below
1.22.19

node --version // Should return something like below
v18.11.0
```

## Package Commands
The package.json file wraps some useful commands as part of this template.

These commands are as follows:
- `yarn build` - Build the .ts files and transpile them into a .js file in build/ (Command used as part of  `yarn start`)
- `yarn start` - Build and run the index file at build/index.js
- `yarn start:dev` - start a local compilation which reruns the code in src/index.ts when a change in src/ to a .js or .ts file is recognized. Really good for continuous development


## Resouces
Initial repository setup: https://khalilstemmler.com/blogs/typescript/node-starter-project/