FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Category #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 100.0...500.0) }
    
    #chama/cria factory game após construção do produto
    after :build do |product|
      product.productable = create(:game)
    end
  end
end
