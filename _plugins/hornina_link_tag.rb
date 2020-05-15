module Geomapa

class HorninaLinkTag < Liquid::Tag

    def initialize(tag_name, id, tokens)
      super
      @id = id
    end

    def render(context)
      "[kámen číslo #{@id}](#{@id})"
    end
  end
end

Liquid::Template.register_tag('hornina_link', Geomapa::HorninaLinkTag)