# @barsoom/eslint-config-barsoom

Based on [StandardJS](https://standardjs.com/).

Some differences:

* Specific configuration for test files
* Disable all rules that are fixed by [prettier](https://prettier.io)

## Why prettier?

StandardJS is non-configurable, and we want trailing commas.
[Read about the benefits.](https://medium.com/@nikgraf/why-you-should-enforce-dangling-commas-for-multiline-statements-d034c98e36f8#82f7)

StandardJS will complain whenever we make a simple mistake. Missing spaces, semicolons, trailing commas.

Prettier will let us make mistakes, and fixes our code after.

It allows us to work without fighting with the linter about stylistic things, and lets us focus on writing working code instead.

# How to use?

Configure npm for our private GitHub packages: <https://github.com/barsoom/auctionet/blob/master/developer_documentation/configuring_npm_for_github_packages.md>

Then:

    npm install --save-dev @barsoom/eslint-config-barsoom

Then add to your eslintrc:

```json
{
  "extends": ["@barsoom/barsoom"]
}
```

For a browser environment you might want to add:

```json
{
  "extends": ["@barsoom/barsoom"],
  "env": {
    "browser": true
  }
}
```

Or if you're running in pure nodejs without react:

```json
{
  "extends": ["@barsoom/barsoom/node"]
}
```

Use this with our [prettier config](https://github.com/barsoom/prettier-config).
