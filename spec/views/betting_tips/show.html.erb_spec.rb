require 'rails_helper'

RSpec.describe "betting_tips/show", type: :view do
  before(:each) do
    @betting_tip = assign(:betting_tip, BettingTip.create!(
      :date => "Date",
      :time => "Time",
      :gameid => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/2/)
  end
end
