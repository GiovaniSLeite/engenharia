require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :name => "Name",
        :email => "email@example.com", #modifiquei
        :access_token => "Access Token",
        :uid => "Uid",
        :photo_url => "Photo Url",
        :provider => "email",
        :status => false,
        :reason => "Reason",
        :user_type => "2"
      ),
      Usuario.create!(
        :name => "Name",
        :email => "email@example.com", #modifiquei
        :access_token => "Access Token",
        :uid => "Uid",
        :photo_url => "Photo Url",
        :provider => "email",
        :status => false,
        :reason => "Reason",
        :user_type => "2"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "email@example.com".to_s, :count => 2 #modifiquei "" era "Email"
    assert_select "tr>td", :text => "E-mail".to_s, :count => 2
    assert_select "tr>td", :text => "Inativo".to_s, :count => 2
    assert_select "tr>td", :text => "Apostador".to_s, :count => 2
  end
end
