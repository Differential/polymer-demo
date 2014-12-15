# Differential Polymer Demo

## AS SEEN ON THE [YOUTUBES](https://www.youtube.com/watch?v=DsATeVvMIm4)

## Installation
1. Clone the repository
  - `git clone https://github.com/Differential/polymer-demo`
2. Go to the directory in your terminal and run `bower install`
  - This will install Polymer, web components, & vulcanize
  - Also, includes some custom elements we made so you can see how that works
3. Start the Meteor server: `meteor`
4. WEB COMPONENTS!

## Things to note
- In the `client/templates/layout/head.html` file, there is a line that looks like this:
```
<script src="/components/webcomponentsjs/webcomponents.js"></script>
```
This is very important because it includes the web components polyfill
- The HTML imports are various web components from polymer core, paper polymer, and custom components.
They are located at `client/templates/layout/imports.html` and all of these are compiled down with [Vulcanize](https://github.com/Polymer/vulcanize) to concatenate sets of web components into one file.
- After running `bower install`, your components will appear in `public/components` which you can see in the `.bowerrc` file
- There are customized polymer overrides in the `client/stylesheets/components` folder
