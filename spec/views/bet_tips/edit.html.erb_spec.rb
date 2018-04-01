require 'rails_helper'

RSpec.describe "bet_tips/edit", type: :view do
  before(:each) do
    @bet_tip = assign(:bet_tip, BetTip.create!(
      :date => "MyString",
      :time => "MyString",
      :gameid => 1,
      :teams => "MyString",
      :odds => "MyString",
      :selection => "MyString"
    ))
  end

  it "renders the edit bet_tip form" do
    render

    assert_select "form[action=?][method=?]", bet_tip_path(@bet_tip), "post" do

      assert_select "input[name=?]", "bet_tip[date]"

      assert_select "input[name=?]", "bet_tip[time]"

      assert_select "input[name=?]", "bet_tip[gameid]"

      assert_select "input[name=?]", "bet_tip[teams]"

      assert_select "input[name=?]", "bet_tip[odds]"

      assert_select "input[name=?]", "bet_tip[selection]"
    end
  end
end
