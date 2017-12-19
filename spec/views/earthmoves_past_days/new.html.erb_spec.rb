require 'rails_helper'

RSpec.describe "earthmoves_past_days/new", type: :view do
  before(:each) do
    assign(:earthmoves_past_day, EarthmovesPastDay.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :depth => "9.99",
      :mag => "9.99"
    ))
  end

  it "renders new earthmoves_past_day form" do
    render

    assert_select "form[action=?][method=?]", earthmoves_past_days_path, "post" do

      assert_select "input[name=?]", "earthmoves_past_day[latitude]"

      assert_select "input[name=?]", "earthmoves_past_day[longitude]"

      assert_select "input[name=?]", "earthmoves_past_day[depth]"

      assert_select "input[name=?]", "earthmoves_past_day[mag]"
    end
  end
end
