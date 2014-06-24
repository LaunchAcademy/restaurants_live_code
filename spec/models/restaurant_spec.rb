require 'rails_helper'

describe Restaurant do

  it { should have_valid(:zip_code)
    .when('02111', '12345') }

  it { should_not have_valid(:zip_code)
    .when('021110', 'fdafdsa', '012AB') }


end
