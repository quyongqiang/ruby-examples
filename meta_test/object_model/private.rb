class C
  def public_method
    # self.private_method
    private_method
  end

  private
  def private_method
    p "private_method called"
  end
end

C.new.public_method