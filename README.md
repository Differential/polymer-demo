# Differential Polymer Demo

## AS SEEN ON THE [YOUTUBES](https://www.youtube.com/watch?v=DsATeVvMIm4)

## Installation

1. Clone the repository `git clone https://github.com/Differential/polymer-demo`
2. From the root directory of the meteor app, run `bower install`
  - This will install Polymer, web components, & vulcanize
  - Also, includes some custom elements we made so you can see how that works
  - Too lazy to completely remove the USERcycle branding :) PRs accepted.
3. Start the Meteor server `meteor`
4. WEB COMPONENTS!

## Important concepts:

### Including webcomponents.js

In the `client/templates/layout/head.html` file, there is a line that looks like this:

```
<script src="/components/webcomponentsjs/webcomponents.js"></script>
```

This is very important because it includes the web components polyfill.

### imports.html

* This is where you list what Polymer components you want to load, from polymer core, paper-elements, and even your own custom components. We put these tags in a specific file `client/templates/layout/imports.html` which is then compiled with [Vulcanize](https://github.com/Polymer/vulcanize) and the [`differential-vulcanize`](https://github.com/Differential/meteor-vulcanize) package to concatenate the web components into one file.

* After running `bower install`, your components will placed into the `public/components` directory, which you can see in the `.bowerrc` file

* There are customized polymer overrides in the `client/stylesheets/components` folder

## Deploying to production

* Run your production deploy command with a `VULCANIZE=true` environment variable. i.e.. `VULCANIZE=true modulus deploy`
