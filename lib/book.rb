class Book
    attr_reader :title, :author

    def initialize(book_params)
        @title = book_params[:title]
        @author = "#{book_params[:author_first_name]} #{book_params[:author_last_name]}"
        @publication_date = book_params[:publication_date]
    end

    def publication_year
        @publication_date.split(" ")[-1]
    end
end