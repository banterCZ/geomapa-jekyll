module Geomapa

class ImageTag < Liquid::Tag

    def initialize(tag_name, path, tokens)
      super
      @path = path
    end

    def render(context)
      # TODO strip whitespace
      "<img src=\"#{@path}?nf_resize=fit&w=800\"
            srcset=\"#{@path}?nf_resize=fit&w=400 400w,#{@path}?nf_resize=fit&w=600 600w,#{@path}?nf_resize=fit&w=800 800w,#{@path}?nf_resize=fit&w=1000 1000w\">"
    end
  end
end

Liquid::Template.register_tag('image', Geomapa::ImageTag)