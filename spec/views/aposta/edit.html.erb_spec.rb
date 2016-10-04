require 'rails_helper'

RSpec.describe "aposta/edit", type: :view do
  before(:each) do
    @apostum = assign(:apostum, Apostum.create!(
      :idSala => 1,
      :idUser => 1,
      :palpite => "MyString"
    ))
  end

  it "renders the edit apostum form" do
    render

    assert_select "form[action=?][method=?]", apostum_path(@apostum), "post" do

      assert_select "input#apostum_idSala[name=?]", "apostum[idSala]"

      assert_select "input#apostum_idUser[name=?]", "apostum[idUser]"

      assert_select "input#apostum_palpite[name=?]", "apostum[palpite]"
    end
  end
end
