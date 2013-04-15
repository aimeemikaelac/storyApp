class SharedStoriesController < ApplicationController
	def new
		@ids = 'hello'
		@shared_story = Shared_story.new
		#@ids = User.all(:select => user.id)
		#@ids = @ids.map{|user| user.id}
		
	end

  # GET /shared_stories
  # GET /shared_stories.json
  def index
    @shared_stories = SharedStory.all
		
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shared_stories }
    end
  end

  # GET /shared_stories/1
  # GET /shared_stories/1.json
  def show
    @shared_story = SharedStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shared_story }
    end
  end

  # GET /shared_stories/new
  # GET /shared_stories/new.json
  def new
    @shared_story = SharedStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shared_story }
    end
  end

  # GET /shared_stories/1/edit
  def edit
    @shared_story = SharedStory.find(params[:id])
  end

  # POST /shared_stories
  # POST /shared_stories.json
  def create
    @shared_story = SharedStory.new(params[:shared_story])

    respond_to do |format|
      if @shared_story.save
        format.html { redirect_to @shared_story, notice: 'Shared story was successfully created.' }
        format.json { render json: @shared_story, status: :created, location: @shared_story }
      else
        format.html { render action: "new" }
        format.json { render json: @shared_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shared_stories/1
  # PUT /shared_stories/1.json
  def update
    @shared_story = SharedStory.find(params[:id])

    respond_to do |format|
      if @shared_story.update_attributes(params[:shared_story])
        format.html { redirect_to @shared_story, notice: 'Shared story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shared_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_stories/1
  # DELETE /shared_stories/1.json
  def destroy
    @shared_story = SharedStory.find(params[:id])
    @shared_story.destroy

    respond_to do |format|
      format.html { redirect_to shared_stories_url }
      format.json { head :no_content }
    end
  end
end
