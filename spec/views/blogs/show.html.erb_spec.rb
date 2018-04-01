require 'rails_helper'

RSpec.describe "blogs/show", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :date => "Date",
      :time => "Time",
      :text => "Text",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Title/)
  end
end
