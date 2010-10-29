module Confetti
  class Config
    attr_accessor :package, :version, :description, :height, :width
    attr_reader :author, :viewmodes, :name, :license, 
                :content, :icon_set

    def initialize
      @author       = Author.new
      @name         = Name.new
      @license      = License.new
      @content      = Content.new
      @icon_set     = TypedSet.new Icon
      @viewmodes    = []
    end

    class Author
      attr_accessor :name, :href, :email
    end

    class Name
      attr_accessor :name, :shortname
    end

    class License
      attr_accessor :text, :href
    end

    class Content
      attr_accessor :src, :type, :encoding
    end

    class Icon
    end
  end
end
