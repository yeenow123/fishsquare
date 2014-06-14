require 'rails_helper'

RSpec.describe "check_ins/show", :type => :view do
  before(:each) do
    @check_in = assign(:check_in, CheckIn.create!(
      :lat => 1.5,
      :lng => 1.5,
      :type => "Type",
      :fishing_type => "Fishing Type",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Fishing Type/)
    expect(rendered).to match(/MyText/)
  end
end
