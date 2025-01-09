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

    def write(title, date)
        Book.new({
            title: title,
            author_first_name: @first_name,
            author_last_name: @last_name,
            publication_date: date
        })
    end
end