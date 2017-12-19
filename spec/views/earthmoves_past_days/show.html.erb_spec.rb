require 'rails_helper'

RSpec.describe "earthmoves_past_days/show", type: :view do
  before(:each) do
    @earthmoves_past_day = assign(:earthmoves_past_day, EarthmovesPastDay.create!(
      :latitude => 2.5,
      :longitude => 3.5,
      :depth => "9.99",
      :mag => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
