require ("rspec")
require ("rock_paper_scissors")
require ("pry")

describe('rock_paper_scissors') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq("player 1"))
  end
  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq("player 1"))
  end
  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq("player 1"))
  end
  it("returns false if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq("player 2"))
  end
  it("returns 'tie' if rock is the object and rock is the argument") do
    expect("rock".beats?("rock")).to(eq('tie'))
  end
end
