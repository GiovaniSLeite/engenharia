require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :name => "Name",
      :email => "email@example.com",
      :access_token => "Access Token",
      :uid => "Uid",
      :photo_url => "Photo Url",
      :provider => "Provider",
      :status => false,
      :reason => "Reason",
      :user_type => "User Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match("email@example.com")
    expect(rendered).to match(/Access Token/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Photo Url/)
    expect(rendered).to match(/Provider/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/User Type/)
  end
end
