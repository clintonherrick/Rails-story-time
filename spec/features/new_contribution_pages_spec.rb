require 'rails_helper'


describe "it adds a new contribution process" do
  before do
    @story = Story.create(:title => 'New Story')
  end

  it "adds a new contribution" do
    visit story_path(@story)
    click_link "Add Contribution"
    fill_in "sentence", :with => "Jargen"
    fill_in "user", :with => "Von-Toney"
    click_on 'Submit'
    expect(page).to have_content "Jargen"
    expect(page).to have_content "Von-Toney"
  end
end
