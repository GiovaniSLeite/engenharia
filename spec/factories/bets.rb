FactoryGirl.define do
  factory :bet do
    name "Fabio vai cair de uma escada"
    description "Qual escada?"
    ownerId 1
    url_photo "MyString"
    category "Personalizado"
    room_status 1
    room_type 1
    stake 1
    final_date "2016-10-25"
    final_answer "Titanic 1"
    answer_type "MyString"
  end
end
