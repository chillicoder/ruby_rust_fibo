RSpec.describe Fib do
  it "has a version number" do
    expect(Fib::VERSION).not_to be nil
  end

  describe "ruby fib" do
    it "calculates fibonacci" do
      expect(Fib::fibonacci(10)).to eq(55)
    end
  end
end
