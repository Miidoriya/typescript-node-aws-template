# Typescript / Node / AWS Template
A template repository for getting up and running with Typescript, Node.js and AWS Lambda

## Prerequisites
You'll need the following installed:
- Yarn
- Node
- Terraform
- awscli (this is necessary as you'll need to be configured against a valid aws account/profile)

For aws/awscli ensure you have a default profile setup locally configured to your secret write key and account in aws

The easiest way to get setup is to install the above via a package manager
**Mac**:
```
// install homebrew  
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  

// install Yarn & Node  
brew install yarn  
brew install node
brew install terraform  
brew install awscli // if not already installed  
```

**Windows**:  
Package manager install guide: https://chocolatey.org/install
```
// install Yarn & Node
choco install nodejs.install
choco install yarn
choco install terraform
choco install awscli // if not already installed  
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
NOTE: before doing anything within this repository make sure to run the command 'yarn' or 'yarn install' to install all dependencies locally. Please reframe from using `npm` commands as this will generate a package.json.lock will which will misalign the management of dependencies that `yarn` performs.


The package.json file wraps some useful commands as part of this template.

These commands are as follows:
- `yarn build` - Build the .ts files and transpile them into a .js file in build/ (Command used as part of  `yarn start`)
- `yarn build:zip` - Build the .ts files and transpile them into a .js files in the build/ directory whilst bundling into an index.zip
- `yarn start` - Build and run the index file at build/index.js
- `yarn start:dev` - start a local compilation which reruns the code in src/index.ts when a change in src/ to a .js or .ts file is recognized. Really good for continuous development
- `release:terraform` - Runs `yarn build:zip` underlying commands to create a minified bundled .zip file of src/* files with the handler as the root and deploys the code as a lambda AWS via terraform

Please note:
~~As these commands are set to run the index.ts file from the root of the src/ directory we'll need an index.ts available at that level. For examples sake i've included a index.ts file in the src/ root as the handler.ts is lambda specific (and cannot be ran locally). A pattern of development for working with lambdas that I like to use is to confirm functionality in an index.ts script for locally built functions, and then to wrap this code in a handler function (and place in a handler.ts) when ready to release as a lambda. Alternatively, a user could build the lambda, write spec tests against modular functions built for the lambda and test end-to-end in AWS with a full deployment of the code as a lambda (This approach confirms functionality on AWS but is more arduous).~~

The above can be ignored as the handler can be called locally. It needs an explicit call to the handler function AFTER the handler is defined as shown in src/handler.ts.

Uncommenting the last line in the file will make the handler execute locally when running `yarn start` or for continuous development with feedback and recompilation `yarn start:dev`


## Resouces
Initial repository setup: https://khalilstemmler.com/blogs/typescript/node-starter-project/