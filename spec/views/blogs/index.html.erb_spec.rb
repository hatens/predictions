require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :date => "Date",
        :time => "Time",
        :text => "Text",
        :title => "Title"
      ),
      Blog.create!(
        :date => "Date",
        :time => "Time",
        :text => "Text",
        :title => "Title"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
