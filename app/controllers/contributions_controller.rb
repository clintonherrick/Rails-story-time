class ContributionsController < ApplicationController
  @@number_of_images = 81

  def new
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new
    @randomImages = [Image.find(1 + rand(@@number_of_images)), Image.find(1 + rand(@@number_of_images))]
  end

  def create
    @story = Story.find(params[:story_id])
    @image_ids = contribution_params[:image_ids_string].split(',')

    @our_params = {:user => contribution_params[:user],
                  :sentence => contribution_params[:sentence]}
    @contribution = @story.contributions.new(@our_params)
    @image_ids.each do |image_id|
      @contribution.images.push(Image.find(image_id))
    end

    if @contribution.save
      redirect_to story_path(@story)
    else
      @randomImages = [Image.find(1 + rand(@@number_of_images)), Image.find(1 + rand(@@number_of_images))]
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
  end

  def update
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
    @our_params = {:user => contribution_params[:user],
                  :sentence => contribution_params[:sentence]}
    if @contribution.update(@our_params)
      redirect_to story_contribution_path(@story, @contribution)
    else
      render :edit
    end
  end

  def show
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
  end

  def destroy
    @story = Story.find(params[:story_id])
    @contribution = Contribution.find(params[:id])
    @contribution.destroy

    redirect_to story_path(@story)
  end


  private
  def contribution_params
    params.require(:contribution).permit(:user, :sentence, :image_ids_string)
  end
end
