class Author
  def initialize(params)
    @first_name = params[0]
    @last_name = params[1]
    @homepage = params[2]
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def homepage
    @homepage
  end

  def name
    @first_name + " " + @last_name
  end
end
