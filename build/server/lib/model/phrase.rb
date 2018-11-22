require 'json'

module Model
  Phrase = Struct.new(:id, :text, :expires) do
    def initialize(id, text, expires = nil)
      super(id, text, expires)
    end

    def to_json(*)
      h = {
        id: id,
        text: text
      }

      h[:expires] = expires unless expires.nil?
      h.to_json
    end
  end
end
