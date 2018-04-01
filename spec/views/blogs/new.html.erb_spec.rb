require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :date => "MyString",
      :time => "MyString",
      :text => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input[name=?]", "blog[date]"

      assert_select "input[name=?]", "blog[time]"

      assert_select "input[name=?]", "blog[text]"

      assert_select "input[name=?]", "blog[title]"
    end
  end
end
