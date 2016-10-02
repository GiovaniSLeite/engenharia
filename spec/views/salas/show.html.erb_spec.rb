require 'rails_helper'

RSpec.describe "salas/show", type: :view do
  before(:each) do
    @sala = assign(:sala, Sala.create!(
      :name => "Name",
      :description => "Description",
      :idOwner => 2,
      :sala_type => 3,
      :reward => "Reward",
      :stake => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Reward/)
    expect(rendered).to match(/4/)
  end
end
