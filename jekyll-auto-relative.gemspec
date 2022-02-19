# frozen_string_literal: true

require_relative "lib/jekyll-auto-relative/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-auto-relative"
  spec.version = Jekyll::AutoRelative::VERSION
  spec.authors = ["Qucheng Miao"]

  spec.summary = "This is a plugin for converting urls in markdown files to relative paths required by Jekyll."
  spec.homepage = "https://github.com/qcmiao1998/jekyll-auto-relative"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = ["lib/jekyll-auto-relative.rb"]

  spec.add_dependency "jekyll"
end
