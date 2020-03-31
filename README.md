# Vitrina

[![License](https://img.shields.io/badge/license-MIT-informational.svg)](https://opensource.org/licenses/MIT)

A general purpose theme for Jekyll made with Bulma.

**NOTE**: This theme still in development phase and the documentation below may not cover everything.

This theme was made with the purpose of being able to generate a site just by editing a few JSON files (this was something I needed for creating pages using scripts).

## General layout

The file at `_data/general.json` can be used to change the site's layout (navbar and footer).
Each one of these have their on `structure`, see below on how they are divided:

**NOTE**: See the file at `_data/general.json` for examples, you may want only to edit what is already there.

### Header

The header is divided into two element, `brand` and `menu`:

**brand** -> Has the following attributes:
+ **name**: brand name.
+ **image**: brand logo image path.
+ **link**: brand's link.

**menu** -> This is divided in two structures `start` and `end` both are lists to elements, including:

**NOTE**: See [Elements attributes](##elements-attributes)

**buttons** -> A list of buttons to be generated:
+ **content**: list of buttons, each with the following attributes:
  - **link**: link to be used with the button.
  - **content**: text to be put inside the button.

**link** -> A link:
+ **link**: link to be used.
+ **content**: text to be used with the link.

**text** -> A text paragraph:
+ **content**: text to be used.

**dropdown** -> A dropdown of links:
+ **links**: list of buttons, each with the following attributes:
  - **link**: link to be used.
  - **divider**: whether this is a link divider.

### Footer layout

The footer is divided in columns, to use them you need to add a Bulma style. Each column is defined with `content` attribute, which is a list with any elements defined in [Structure content](##structure-content).

An example of column would be:
```json
{
  // colum size (Bulma class)
  "style": "is-3",
  "content": [
    // elements here...
  ]
}
```

## Home page layout

Right now there is only one page you may generate using its JSON file, the home page `_data/home.json`.
The idea is that you can use as many `structures` to generate that page, see each of them below:

**NOTE**: See [Elements attributes](##elements-attributes)

**hero** -> The same as a Bulma hero, has the following attributes:
+ **name**: hero name (use for alt HTML attribure)
+ **background**: image to be used in the background.
+ **content**: content of this structure (see [Structure content](##structure-content))
+ **style**: CSS class to use for style, can be a Bulma one.

**level** -> A horizontal list of elements:
+ **content**: content of this structure (see [Structure content](##structure-content))
+ **style**: CSS class to use for style, can be a Bulma one.

**section** -> A section that can be used for any kind of content (good for text):
+ **title**: title of this section
+ **content**: content of this structure (see [Structure content](##structure-content))
+ **style**: CSS class to use for style, can be a Bulma one.

**grid** -> A grid of cards that is similar to Pinterest's boards:
+ **title**: title of this grid
+ **cards**: list of cards of this grid (see [Cards content](##cards-content))
+ **style**: CSS class to use for style, can be a Bulma one.

Take a look at `_data/home.json` for examples.

## Structure content

A structure `content` is a list of elements that can be generated, below is a list of each of them:

**NOTE**: See [Elements attributes](##elements-attributes)

**buttons** -> A list of buttons to be generated:
+ **content**: list of buttons, each with the following attributes:
  - **link**: link to be used with the button.
  - **content**: text to be put inside the button.

An example:
```json
{
"type": "buttons",
  "content": [
    {
      "style": "is-primary is-outlined",
      "content": "See more",
      "link": ""
    }
  ]
}
```

**link** -> A link:
+ **link**: link to be used.
+ **content**: text to be used with the link.

An example:
```json
{
  "style": "is-primary",
  "content": "See my resume",
  "link": "resume"
}
```

**image** -> An image:
+ **link**: link to be used with the image.
+ **file**: path to the image.
+ **name**: image name.
+ **width**: image width.
+ **height**: image height.

An example:
```json
{
  "type": "image",
  "name": "Made with Bulma",
  "link": "https://bulma.io",
  "file": "assets/img/made-with-bulma.png",
  "width": "128",
  "height": "24"
}
```

**text** -> A text paragraph:
+ **content**: text to be used.

An example:
```json
{
  "type": "text",
  "content": "Except"
}
```

**icons** -> A list of icons:
+ **content**: list of icons, each with the following attributes:
  - **name**: ForkAwesome icon name

An example:
```json
{
  "style": "is-large",
  "type": "icons",
  "content": [
    {
      "style": "fa-stack-2x",
      "name": "fa-university"
    }
  ]
}
```

## Cards contents

Each card has the following attributes:

+ **image**: path to card image.
+ **title**: title of the card.
+ **content**: any element at [Structure content](#structure-content) can be used.

An example:
```json
{
  "title": "Pellentesque vitae ligula sem.",
  "image": "assets/img/card.png",
  "content": [
    {
      "type": "text",
      "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "buttons",
      "content": [
        {
          "style": "is-primary is-outlined",
          "content": "See more",
          "link": ""
        }
      ]
    }
  ]
}
```

## Elements attributes

All elements have the following attributes:

All elements have the **style** attribute, which is any CSS class to be use for styling, can be a Bulma one.

**icon** -> attribute, which is any ForkAwesome icon in the following format:
```json
{
  "type": "text",
  "icon": {
    "style": "has-text-info",
    // ForkAwesome icon name
    "name": "fa-feed"
  }
}
```

---

## Contributions

Feel free to leave your contribution here, I would really appreciate it!
Also, if you have any doubts or troubles using this package just contact me or leave an issue.
