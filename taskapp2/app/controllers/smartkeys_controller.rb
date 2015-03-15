class SmartkeysController < ApplicationController

  before_action :set_action, only: [:destroy, :update, :show, :edit]

  def index
    @smartkeys = Smartkey.all
  end

  def show
  end

  def new
    @smartkey = Smartkey.new
  end

  def edit
  end

  def destroy
    @smartkey.destroy
    redirect_to smartkeys_path
  end

  def create
    @smartkey = Smartkey.new(smartkey_params)
    if @smartkey.save
      redirect_to smartkeys_path
    else
      render 'new'
    end
  end

  def update
    if @smartkey.update(smartkey_params)
      redirect_to smartkeys_path
    else
      render 'edit'
    end
  end

  private
    def smartkey_params
      params[:smartkey].permit(:head)
    end

    def set_action
      @smartkey = Smartkey.find(params[:id])
    end

end
