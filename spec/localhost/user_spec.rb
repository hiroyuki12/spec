# user
describe user('hiroyuki') do
  it { should exist }
end



describe command('ruby -v') do
  its(:stdout) { should match /2.4.1/ }
end

describe command('bundler -v') do
  its(:stdout) { should match /1.15.1/ }
end

describe command('git --version') do
  its(:stdout) { should match /2.11.0/ }
end

describe command('vim --version') do
  its(:stdout) { should match /7.4/ }
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




describe "ruby version, gem package'" do
  it "should match /2.4.1/" do
    expect(check_ruby_version).to include("2.4.1")
  end
  it "should be_install serverspec" do
    expect(check_packages("serverspec")).to include("serverspec")
  end

  def check_ruby_version
    command("ruby -v").stdout
  end
  def check_packages(package)
    command("bundle exec gem list | grep #{package}").stdout
  end
end
