describe package('peco') do
  it { should be_installed }
end
describe package('ansible') do
  it { should be_installed }
end
describe package('wget') do
  it { should be_installed }
end

describe package('serverkit') do
  it { should be_installed.by('gem') }
end
