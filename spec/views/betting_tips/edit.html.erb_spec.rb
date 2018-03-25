require 'rails_helper'

RSpec.describe "betting_tips/edit", type: :view do
  before(:each) do
    @betting_tip = assign(:betting_tip, BettingTip.create!(
      :date => "MyString",
      :time => "MyString",
      :gameid => 1
    ))
  end

  it "renders the edit betting_tip form" do
    render

    assert_select "form[action=?][method=?]", betting_tip_path(@betting_tip), "post" do

      assert_select "input[name=?]", "betting_tip[date]"

      assert_select "input[name=?]", "betting_tip[time]"

      assert_select "input[name=?]", "betting_tip[gameid]"
    end
  end
end
