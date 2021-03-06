class PublicSearchesController < SavedSearchesController
  skip_load_and_authorize_resource
  skip_before_filter :authenticate_user!

  def new
    @saved_search = SavedSearch.new
  end

  def create
    @saved_search = SavedSearch.new(params[:saved_search].slice("name").to_h)
    @results = SimpleSearch.new(@saved_search.name).results
    render :show
  end
end
