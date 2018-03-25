require 'rails_helper'

RSpec.describe "betting_tips/index", type: :view do
  before(:each) do
    assign(:betting_tips, [
      BettingTip.create!(
        :date => "Date",
        :time => "Time",
        :gameid => 2
      ),
      BettingTip.create!(
        :date => "Date",
        :time => "Time",
        :gameid => 2
      )
    ])
  end

  it "renders a list of betting_tips" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
