class TagsController < ApplicationController
  def index
    @tags = Tag.all.order(name: :asc)

    render("tags/index.html.erb")
  end

  def new
    @tag = Tag.new

    render("tags/new.html.erb")
  end

  def create
    @tag = Tag.new

    @tag.name = params[:name]

    save_status = @tag.save

    if save_status == true
      redirect_to("/tags", :notice => "Tag created successfully.")
    else
      render("tags/new.html.erb")
    end
  end

  end
