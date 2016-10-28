FactoryGirl.define do
  factory :guess do
    bet_id 1
    usuario_id 1
    won_status false
    guess_text "MyString"
    guess_status 1
  end
end
