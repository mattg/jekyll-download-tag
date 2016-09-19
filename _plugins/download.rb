module Jekyll
  class DownloadTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      require 'open-uri'
      open(@text).read
    end
  end
end

Liquid::Template.register_tag('download', Jekyll::DownloadTag)
