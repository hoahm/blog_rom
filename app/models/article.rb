# app/models/article.rb

# Isolate the Virtus API behind a domain-specific object
ValueObject = Virtus.value_object(coerce: false)

class Article
  include ValueObject

  values do
    attribute :id, Integer
    attribute :title, String
    attribute :content, String
  end
end
