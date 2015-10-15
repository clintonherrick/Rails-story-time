require 'rails_helper'

describe "the edit a contribution process" do
  before do
    @story = Story.create(:title => 'New Story')
    @contribution = Contribution.create(:sentence => 'New Sentence', :user => 'Me', :story_id => @story.id)
  end

  it "edits the contribution" do
    visit story_contribution_path(@story, @contribution)
    click_on 'Edit'
    fill_in 'sentence', :with => 'Newer Sentence'
    click_on 'Update Contribution'
    expect(page).to have_content 'Newer Sentence'
  end

  it "gives an error message when description is not entered" do
    visit story_contribution_path(@story, @contribution)
    click_on "Edit"
    fill_in "user", :with => ""
    click_button "Update Contribution"
    expect(page).to have_content "error"
  end



end
