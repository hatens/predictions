require 'rails_helper'

RSpec.describe "bet_tips/show", type: :view do
  before(:each) do
    @bet_tip = assign(:bet_tip, BetTip.create!(
      :date => "Date",
      :time => "Time",
      :gameid => 2,
      :teams => "Teams",
      :odds => "Odds",
      :selection => "Selection"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Teams/)
    expect(rendered).to match(/Odds/)
    expect(rendered).to match(/Selection/)
  end
end
