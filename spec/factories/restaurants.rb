FactoryGirl.define do
  factory :restaurant do
    sequence(:name) { |n| "Generic Restaurant #{n}" }
    category 'Italian'
    address '123 Main St'
    city 'Boston'
    state 'MA'
    zip_code '02111'
    description 'Very tasty.'
  end
end
