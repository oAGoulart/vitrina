# Vitrina

[![License](https://img.shields.io/badge/license-MIT-informational.svg)](https://opensource.org/licenses/MIT)

A general purpose theme for Jekyll made with Bulma.

This theme was made with the purpose of being able to generate a site just by editing a few JSON files, this was something I needed for creating multiple pages using scripts.

**NOTE**: This theme is still in development phase and the documentation below may not cover everything.

## Usage

To use this theme you can use as a template for creating another one or use it as a *Ruby* gem in your project (just like a plugin):

```sh
gem install vitrina --vendor
```

If you just want to use this theme in for a web site all you need to do is to change the layout and use Jekyll to build it:

```sh
bundle exec jekyll build
```

If you need something else the scripts inside `scripts/` may help you out.

This theme may be exacly what you need or exacly what you're trying to avoid. So if using JSON or learning this theme's layout is not what you want, here's some alternatives:

+ [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes)
+ [beautiful-jekyll](https://github.com/daattali/beautiful-jekyll)

## About the layout

The layout is made by many elements, all elements have global attributes, while some have specific one.

Any element *CAN* have the following global attributes:

`style`: any CSS class to be used for styling, can be a Bulma one.
```jsonc
"style": "has-text-danger", // Bulma CSS class
```

`icon`: is any ForkAwesome icon in the following format:
```jsonc
"icon": {
  "style": "has-text-info", // global attribute
  "name": "fa-feed"         // ForkAwesome icon name
}
```

## General layout

The file at `_data/general.json` can be used to change the site's layout (navbar and footer).
The `header` is a JSON `object` and the `footer` is an array, see below on how they are structured:

**NOTE**: See the file at `_data/general.json` for examples, you may want to edit what is already there.

### Header

The `header` is divided into two JSON objects, `brand` and `menu`, see their usage below:

`brand`: Has the following structure:
```jsonc
{
  "brand": {
    "name": "Brand",                 // brand name
    "image": "assets/img/logo.png",  // path to brand logo
    "link": ""                       // brand link
  }
}
```

`menu`: This is divided in two arrays `start` and `end` both are lists to elements, the first one is the left side of the navbar, while the second is the right side of the navbar.
These arrays can have the following elements:

**buttons:** A list of buttons to be generated.
```jsonc
{
  "type": "buttons",                   // define this element as being of type buttons
  "content": [                         // array of buttons
    {
      "style": "is-info",              // global attribute
      "content": "Donate",             // button text
      "link": "donate",                // button link
      "icon": {                        // global attribute
        "style": "has-text-success",
        "name": "fa-money"
      }
    }
  ]
}
```

**link:** A navbar link:
```jsonc
{
  "style": "has-text-light",   // global attribute
  "type": "link",              // define this element as link
  "content": "Blog",           // link text
  "link": "blog",              // link reference
  "icon": {                    // global attribute
    "style": "has-text-info",
    "name": "fa-feed"
  }
}

```

**text:** A text paragraph:
```jsonc
{
  "style": "has-text-light",   // global attribute
  "type": "text",              // define this element as text
  "content": "Some potatos",   // text to be shown
}

```

**dropdown:** A dropdown with links:
```jsonc
{
  "type": "dropdown",       // define dropdown element
  "content": "More",        // dropdown name
  "links": [                // array of links (see above)
    {
      "content": "Contact",
      "link": "contact",
    },
    {
      "divider": true       // navbar divider
    }
    // ... more links here ...
  ]
}

```

### Footer layout

The `footer` is an array that can generate columns, to use them you need to add a Bulma style. Each column has a `content` attribute, which is an array with any elements defined in [Structure content](##structure-content).

An example of footer would be:
```jsonc
"footer": [
  {
    "style": "is-3",     // column of size 3 (see Bulma docs)
    "content": [
      // ... put the elements here ...
    ]
  }
  // ... put other columns here ...
]
```

## Home page layout

Right now there is only one page you may generate using a JSON file, the home page `_data/home.json`, this file has an array of structure. Those structures are pre-defined elements that can contain many more elements (but not other structures).

**hero:** The same as a Bulma hero.
```jsonc
{
  "structure": "hero",         // define this structure as a hero
  "name": "Vitrina",           // structure name
  "background": "potato.png",  // background image
  "content": [
    // ... put the elements here ...
  ]
}
```

**level:** A horizontal list of elements:
```jsonc
{
  "structure": "level",     // define level structure
  "content": [              // array of items array
    {
      "style": "some-class" // global attribute
      "items": [            // array of elements
        // ... put elements here ...
      ]
    }
    // ... put other items arrays here ...
  ]
}
```

**section:** A section that can be used for any kind of content (good for text):
```jsonc
{
  "structure": "section",  // define section structure
  "title": "About",        // section title
  "content": [
    // ... put elements in here ...
  ]
}
```

**grid:** A grid of cards that is similar to Pinterest's boards:
```jsonc
{
  "structure": "grid",          // define the grid
  "title": "Featured",          // grid title
  "cards": [                    // array of cards
    {
      "title": "Potatoes",      // card title
      "image": "card.png",      // card image
      "content": [
        // ... put any elements in here ...
      ]
    }
    // ... put other cards in here ...
  ]
}
```

Take a look at `_data/home.json` for better examples.

## Structure content

The elements below can be used inside any structure and inside a few other elements (see above):

**buttons:** A list of buttons to be generated.
```jsonc
{
  "type": "buttons",         // define buttons element
  "content": [               // array of buttons
    {
      "style": "is-button",  // global attribute
      "content": "See more", // button text
      "link": ""             // button link
    }
    // ... put more buttons here ...
  ]
}
```

**link:** A link:
```jsonc
{
  "style": "is-primary",      // global attribute
  "type:" "link"              // define link element
  "content": "See my resume", // link text
  "link": "resume"            // link reference
}
```

**image:** An image:
```jsonc
{
  "type": "image",            // define image element
  "name": "Made with Bulma",  // image name
  "link": "https://bulma.io", // image link
  "file": "bulma.png",        // image file
  "width": "128",             // image width
  "height": "24"              // image height
}
```

**text:** A text paragraph:
```jsonc
{
  "type": "text",        // define text element
  "content": "Except"    // text to be shown
}
```

**icons:** A list of icons:
```jsonc
{
  "style": "is-large",         // global attribute
  "type": "icons",             // define icons element
  "content": [                 // icons array
    {
      "style": "fa-stack-2x",  // global attribute
      "name": "fa-university"  // ForkAwesome icon
    }
    // ... put more icons here ...
  ]
}
```

---

## Contributions

Feel free to leave your contribution here, I would really appreciate it!
Also, if you have any doubts or troubles using this package just contact me or leave an issue.
