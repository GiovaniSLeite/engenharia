require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :name => "MyString",
      :email => "email@example.com", #modifiquei
      :access_token => "MyString",
      :uid => "MyString",
      :photo_url => "MyString",
      :provider => "MyString",
      :status => false,
      :reason => "MyString",
      :user_type => "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_name[name=?]", "usuario[name]"

      assert_select "input#usuario_email[name=?]", "usuario[email]"

      assert_select "input#usuario_access_token[name=?]", "usuario[access_token]"

      assert_select "input#usuario_uid[name=?]", "usuario[uid]"

      assert_select "input#usuario_photo_url[name=?]", "usuario[photo_url]"

      assert_select "input#usuario_provider[name=?]", "usuario[provider]"

      assert_select "input#usuario_status[name=?]", "usuario[status]"

      assert_select "input#usuario_reason[name=?]", "usuario[reason]"

      assert_select "input#usuario_user_type[name=?]", "usuario[user_type]"
    end
  end
end
