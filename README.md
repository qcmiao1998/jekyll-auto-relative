# jekyll-auto-relative

This is a plugin for converting urls in markdown files to relative paths required by Jekyll. 

In Jekyll, you can set `site.baseurl` when your site hosted in a subfolder. It is recommended to use `{{ "/assets/style.css" | relative_url }}` to link assets. This is inconvenient when writing posts and prevents us from checking the content through the editor's markdown preview. This plugin can convert links from `[name](/path/to/file)` to `[name]({{ "/path/to/file" | relative_url }})` and is compatible with images and reference links.

## Usage

Add the following to your site's `Gemfile`

```ruby
gem 'jekyll-auto-relative'
```

And add the following to your site's `_config.yml`

```yml
plugins:
  - jekyll-auto-relative
```

After that, the plugin can be toggled in site's `_config.yml` and post's front matter. The logic of the switch can be simply displayed with a table.

| `_config.yml`          | Post's header          | Convert the post? |
| ---------------------- | ---------------------- | ----------------- |
| `auto-relative: true`  | `auto-relative: true`  | **YES**           |
| `auto-relative: true`  | `auto-relative: false` | NO                |
| `auto-relative: true`  | BLANK                  | **YES**           |
| `auto-relative: false` | `auto-relative: true`  | NO                |
| `auto-relative: false` | `auto-relative: false` | NO                |
| `auto-relative: false` | BLANK                  | NO                |
| BLANK                  | `auto-relative: true`  | **YES**           |
| BLANK                  | `auto-relative: false` | NO                |
| BLANK                  | BLANK                  | NO                |

All links (including images) starting with `/` will be converted, but links in manually entered html will not be changed. If there is a wrong conversion, you can temporarily turn off the plugin in the post, open an issue, and I will try to answer or fix it. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/qcmiao1998/jekyll-auto-relative.

## License

The plugin is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
