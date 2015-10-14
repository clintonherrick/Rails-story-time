class ContributionsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new
  end

  def create
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new(contribution_params)

    if @contribution.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  private
  def contribution_params
    params.require(:contribution).permit(:user, :sentence, :image_url)
  end
end
