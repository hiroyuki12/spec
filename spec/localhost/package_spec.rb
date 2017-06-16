
# gem
describe package('serverkit') do
  it { should be_installed.by('gem').with_version('0.6.9') }
end

describe package('serverspec') do
  it { should be_installed.by('gem') }
end
