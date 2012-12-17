require "jsduck/builtins/tag"

module JsDuck::Builtins
  class Var < Tag
    def initialize
      @pattern = "var"
    end

    # @var {Type} [name=default] ...
    def parse(p)
      p.add_tag(:css_var)
      p.maybe_type
      p.maybe_name_with_default
    end
  end
end
