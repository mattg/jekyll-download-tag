# JekyllDownloadTag

This [Jekyll](https://jekyllrb.com/) plugin creates a `download` Liquid Template tag. I use it to download external resources for inlining.

## Installation

1. Add `_plugins/download.rb` to your Jekyll site's `_plugins` directory

## Usage

The `download` tag downloads the specified URL and returns the content. On my personal site, I use it to add Google Fonts CSS to my inlined CSS:

```
{% capture styles %}
  {% download https://fonts.googleapis.com/css?family=Arvo %}
  {% download https://fonts.googleapis.com/css?family=Open+Sans %}
  {% include main.scss %}
{% endcapture %}
<style>{{ styles | scssify | strip }}</style>
```

I'm sure you'll think of other ways to use it.
