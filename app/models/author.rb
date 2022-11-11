class Author
  def initialize(first_name, last_name, homepage)
    @first_name = first_name
    @last_name = last_name
    @homepage = homepage
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
