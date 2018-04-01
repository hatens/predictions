require 'rails_helper'

RSpec.describe "bet_tips/new", type: :view do
  before(:each) do
    assign(:bet_tip, BetTip.new(
      :date => "MyString",
      :time => "MyString",
      :gameid => 1,
      :teams => "MyString",
      :odds => "MyString",
      :selection => "MyString"
    ))
  end

  it "renders new bet_tip form" do
    render

    assert_select "form[action=?][method=?]", bet_tips_path, "post" do

      assert_select "input[name=?]", "bet_tip[date]"

      assert_select "input[name=?]", "bet_tip[time]"

      assert_select "input[name=?]", "bet_tip[gameid]"

      assert_select "input[name=?]", "bet_tip[teams]"

      assert_select "input[name=?]", "bet_tip[odds]"

      assert_select "input[name=?]", "bet_tip[selection]"
    end
  end
end
