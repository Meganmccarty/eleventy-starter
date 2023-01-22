# Eleventy Starter Template

This is an Eleventy template that can be used to jumpstart an Eleventy project. I built it following [Dustin Whisman's tutorial series](https://sparkbox.com/foundry/series/building_an_eleventy_starter_template), though I added a few tweaks. Please do check out his articles, as well as his version of the [starter template on GitHub](https://github.com/dustin-jw/eleventy-starter).

This template comes packed with tons of features, including:
- Some sample pages written in Nunjucks and plain HTML (though you can mix and match other formats like Markdown as well)
- Configuration for Sass and TailwindCSS; you can choose to use one, the other, or even both together
- JavaScript and TypeScript support; much like the CSS, you can decide if you want to use one option or both together
- Support for older browsers with a legacy JavaScript build
- Linters set up for HTML, CSS, and JavaScript
- Unit tests (jest) and end-to-end tests (Cypress) configured with some simple examples
- Basic accessibility linting (pa11y-ci) and testing (cypress-axe) configured
- CI/CD configured with GitHub Actions
- Configuration for meeting PWA (progressive web app) requirements
- A service worker to pre-cache URLs and assets; falls back to the network if something is not in the cache
- Support for Dependabot so dependencies are kept up-to-date
- Docker support

## Wait, Why Docker for an SSG?
While using Docker may seem like overkill for a static-site generator like Eleventy, I use an 8+ year-old laptop that cannot run the latest version of Node.js; using Docker, I can skirt this limitation. You can opt to install Node.js and npm locally and use the scripts in `package.json` to get the app running, but I find Docker makes things easier. :) Included in this template repo is a `Makefile` for making it even easier to run Docker commands.

## Getting Started
You can either clone this repo onto your local machine, or click the "Use this template" button to generate a copy of this repo on GitHub (from which you can then clone your newly-created repo).

Once you have a local copy, build the Docker image by running:
```
make run build
```

Then, install the dependencies:
```
make run install
```

After that, get the Eleventy site up and running by executing:
```
make run start
```

Your site should be accessible at http://localhost:8080/

If you want to run any of the other scripts in `package.json`, you simply use `make run [COMMAND]` to execute the command using Docker.

### Troubleshooting
You may get this error when attempting to run `make run start`:
```
/app/node_modules/.bin/esbuild: line 1: syntax error: unexpected end of file (expecting ")")
ERROR: "js:dev" exited with 2.
```
If this happens, just run `make run rebuild esbuild` to resolve the issue.

Similarily, if you choose not to use Docker, and you get the following error when attempting to run `npm start`:
```
sh: ~/eleventy-starter/node_modules/.bin/esbuild: cannot execute binary file
```
...execute `npm rebuild esbuild` to resolve the issue.

## Make the Template Your Own
There are some placeholder items in the template that you'll want to update. They include the following:
- Your name, app name, and license in `package.json` (located in the root directory)
- Your site's information and color theme in the `manifest.json` file (located under `src/public`)
- Several icons, including `favicon.png`, `favicon.svg`, `maskable_icon.png`, and `splash_icon.png` (located under `src/public`)

And, of course, you'll want to update the templates, CSS, and JavaScript for your own content. :)