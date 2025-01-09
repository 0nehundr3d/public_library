class Author
    attr_reader :books

    def initialize(author_params)
        @first_name = author_params[:first_name]
        @last_name = author_params[:last_name]
        @books = []
    end

    def name
        @first_name << " " << @last_name
    end
end