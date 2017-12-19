require 'rails_helper'

RSpec.describe "earthmoves_past_days/index", type: :view do
  before(:each) do
    assign(:earthmoves_past_days, [
      EarthmovesPastDay.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :depth => "9.99",
        :mag => "9.99"
      ),
      EarthmovesPastDay.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :depth => "9.99",
        :mag => "9.99"
      )
    ])
  end

  it "renders a list of earthmoves_past_days" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
