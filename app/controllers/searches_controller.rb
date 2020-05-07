class SearchesController < ApplicationController

  def index
    @searches = Search.all
    @search_str = ["abcd"]

    if current_user
      @searches.each do |search|
        if search.user_id === current_user.id
          @search_str.replace([search.name])
        else
          @search_str.replace([search.name])
        end
      end
      else
        @searches.each do |search|
            @search_str.replace([search.name])
        end
      end

      if current_user
        @user_searches = current_user.searches
    end

    @words = Word.all
    @noun = "noun"
    @verb = "verb"
    @article = "article"

    @noun_arr = []
    @verb_arr = []
    @article_arr = []
    @input = @search_str.last
    @input_array = @input.chars
    @output = []
    num_arr = 0

     @words.each do |word|
       if word.category === @noun
         @noun_arr << word.spelling
       elsif word.category === @verb
         @verb_arr << word.spelling
       elsif word.category === @article
         @article_arr << word.spelling
       else
       end
     end
    while num_arr < @input_array.length
      @noun_arr.each do |noun|
        if noun.start_with?(@input_array[num_arr]) && @input.include?(noun)
          @output << noun
        end
      end
      @verb_arr.each do |verb|
        if verb.start_with?(@input_array[num_arr]) && @input.include?(verb)
          @output << verb
        end
      end
      @article_arr.each do |article|
        if article.start_with?(@input_array[num_arr]) && @input.include?(article)
          @output << article
        end
      end
      num_arr += 1
    end
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    @search.user = current_user
    if @search.save
      flash[:notice] = "Search was successfully created"
      redirect_to root_path
    else
      render new_search_path
    end
  end

  def edit
    @search = Search.find(params[:id])
    @user = User.find(@search.user_id)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

  private

  def search_params
    params.require(:search).permit(:name)
  end
end
