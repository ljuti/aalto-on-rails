require 'spec_helper'

describe Todo do
  describe "#title" do
    it { should validate_presence_of :title }
    it { should ensure_length_of(:title).is_at_least(5) }
  end
end
