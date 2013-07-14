class CollectionsController < ApplicationController
  def show
  	@collection = Collection.find(params[:id])
  end

  def create
  	@collection = current_user.collections.build(params[:collections])
  	@collection.save!
  end

  def destroy
  end
end
