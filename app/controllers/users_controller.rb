class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
  	if current_user
  		redirect_to :action => "show", :id => session[:user_id]
  	else
  		redirect_to sign_up_path
  	end
    #@user = User.new
  end
  
  #GET /users/:name
  def name
  	@log_in_name = params[:name]
  	redirect_to log_in_path
  end
	
	def list_stories
		@user = User.find(params[:id])
		
		respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
	end
  
  def list
  	@users = User.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
  #	if(!is_number(params[:id]) )
  #		redirect_to log_in_path, :name => params[:id]
  #	else
		  @user = User.find(params[:id])

		  respond_to do |format|
		    format.html # show.html.erb
		    format.xml  { render :xml => @user }
		  end
	#	end
  end
  
  def is_number(string)
  	true if Float(self) rescue false
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @user }
#    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

#    respond_to do |format|
      if @user.save
      	redirect_to root_url, :notice => "Signed up!"
#        format.html { redirect_to(users_url,
#          :notice => "User #{@user.name} was successfully created.") }
#        format.xml  { render :xml => @user,
#          :status => :created, :location => @user }
      else
      	render "new"
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @user.errors,
#          :status => :unprocessable_entity }
      end
#    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(users_url,
          :notice => "User #{@user.name} was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    if @user.id == session[:user_id]
    	session[:user_id] = nil
    end
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
