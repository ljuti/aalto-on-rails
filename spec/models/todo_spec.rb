require 'spec_helper'

describe Todo do
  describe "#title" do
    it { should validate_presence_of :title }
    it { should ensure_length_of(:title).is_at_least(5) }
  end

  describe "#done?" do
    let(:todo) { Factory(:todo) }

    it "is not done by default" do
      todo.should_not be_done
    end

    it "is done after it's marked completed" do
      todo.completed = true
      todo.should be_done
    end
  end
end
