class ContributionsController < ApplicationController
  @@number_of_images = 67

  def new
    @story = Story.find(params[:story_id])
    @contribution = @story.contributions.new
    @randomImage1 = (1 + rand(@@number_of_images)).to_s + '.png'
    @randomImage2 = (1 + rand(@@number_of_images)).to_s + '.png'
  end

  def create
    @story = Story.find(params[:story_id])
    @image_urls_array = contribution_params[:image_urls_string].split(',')

    @our_params = {:user => contribution_params[:user],
                  :sentence => contribution_params[:sentence],
                  :image_urls => @image_urls_array}
    @contribution = @story.contributions.new(@our_params)

    if @contribution.save
      redirect_to story_path(@story)
    else
      @randomImage1 = (1 + rand(@@number_of_images)).to_s + '.png'
      @randomImage2 = (1 + rand(@@number_of_images)).to_s + '.png'
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
    params.require(:contribution).permit(:user, :sentence, :image_urls_string)
  end
end
