require 'rails_helper'

RSpec.describe "bet_tips/index", type: :view do
  before(:each) do
    assign(:bet_tips, [
      BetTip.create!(
        :date => "Date",
        :time => "Time",
        :gameid => 2,
        :teams => "Teams",
        :odds => "Odds",
        :selection => "Selection"
      ),
      BetTip.create!(
        :date => "Date",
        :time => "Time",
        :gameid => 2,
        :teams => "Teams",
        :odds => "Odds",
        :selection => "Selection"
      )
    ])
  end

  it "renders a list of bet_tips" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Teams".to_s, :count => 2
    assert_select "tr>td", :text => "Odds".to_s, :count => 2
    assert_select "tr>td", :text => "Selection".to_s, :count => 2
  end
end
