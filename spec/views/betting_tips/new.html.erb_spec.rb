require 'rails_helper'

RSpec.describe "betting_tips/new", type: :view do
  before(:each) do
    assign(:betting_tip, BettingTip.new(
      :date => "MyString",
      :time => "MyString",
      :gameid => 1
    ))
  end

  it "renders new betting_tip form" do
    render

    assert_select "form[action=?][method=?]", betting_tips_path, "post" do

      assert_select "input[name=?]", "betting_tip[date]"

      assert_select "input[name=?]", "betting_tip[time]"

      assert_select "input[name=?]", "betting_tip[gameid]"
    end
  end
end
