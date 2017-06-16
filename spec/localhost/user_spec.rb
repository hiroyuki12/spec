# user
describe user('hiroyuki') do
  it { should exist }
end

describe command('ls -al /') do
  its(:stdout) { should match /bin/ }
end



describe command('ruby -v') do
  its(:stdout) { should match /2.4.1/ }
end

describe command('git --version') do
  its(:stdout) { should match /2.11.0/ }
end


describe command('mas list') do
  its(:stdout) { should match /Wunderlist/ }
end

describe command('mas list') do
  its(:stdout) { should match /Pocket/ }
end

describe command('mas list') do
  its(:stdout) { should match /CotEditor/ }
end




describe "Command 'ruby -v'" do
  it "should match /2.4.1/" do
    expect(check_ruby_version).to include("2.4.1")
  end

  def check_ruby_version
    command("ruby -v").stdout
  end
end
