class ArticleForm < ROM::Model::Form
  input do
    set_model_name 'Article'

    # define form input attributes
    attribute :title, String
    attribute :content, String

    # timestamps
  end

  validations do
    relation :articles

    # Add form validations
    validates :title, presence: true
  end
end
