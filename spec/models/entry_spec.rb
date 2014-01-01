require 'spec_helper'

describe Entry do
  it { should validate_presence_of :title }
  it { should validate_presence_of :employee_id }
  it { should validate_presence_of :quantity }

  it { should belong_to :employee }

end
