require 'rails_helper'

RSpec.describe "bets/edit", type: :view do
  before(:each) do
    @bet = assign(:bet, Bet.create!(
      :name => "MyString",
      :description => "MyString",
      :usuario_id => 1,
      :url_photo => "MyString",
      :category => "MyString",
      :room_status => 1,
      :room_type => 1,
      :stake => 1,
      :final_answer => "MyString",
      :answer_type => "MyString"
    ))
  end

  it "renders the edit bet form" do
    render

    assert_select "form[action=?][method=?]", bet_path(@bet), "post" do

      assert_select "input#bet_name[name=?]", "bet[name]"

      assert_select "input#bet_description[name=?]", "bet[description]"

      assert_select "input#bet_usuario_id[name=?]", "bet[usuario_id]"

      assert_select "input#bet_url_photo[name=?]", "bet[url_photo]"

      assert_select "input#bet_category[name=?]", "bet[category]"

      assert_select "input#bet_room_status[name=?]", "bet[room_status]"

      assert_select "input#bet_room_type[name=?]", "bet[room_type]"

      assert_select "input#bet_stake[name=?]", "bet[stake]"

      assert_select "input#bet_final_answer[name=?]", "bet[final_answer]"

      assert_select "input#bet_answer_type[name=?]", "bet[answer_type]"
    end
  end
end
