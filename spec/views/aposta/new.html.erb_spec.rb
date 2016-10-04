require 'rails_helper'

RSpec.describe "aposta/new", type: :view do
  before(:each) do
    assign(:apostum, Apostum.new(
      :idSala => 1,
      :idUser => 1,
      :palpite => "MyString"
    ))
  end

  it "renders new apostum form" do
    render

    assert_select "form[action=?][method=?]", aposta_path, "post" do

      assert_select "input#apostum_idSala[name=?]", "apostum[idSala]"

      assert_select "input#apostum_idUser[name=?]", "apostum[idUser]"

      assert_select "input#apostum_palpite[name=?]", "apostum[palpite]"
    end
  end
end
