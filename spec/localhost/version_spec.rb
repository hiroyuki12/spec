
# gem
describe package('serverkit') do
  it { should be_installed.by('gem').with_version('0.6.9') }
end

describe package('serverspec') do
  it { should be_installed.by('gem').with_version('2.39.1') }
end



describe command('ruby -v') do
  its(:stdout) { should match /2.4.1/ }
end

describe command('bundler -v') do
  its(:stdout) { should match /1.15.1/ }
end

describe command('brew -v') do
  its(:stdout) { should match /1.2.3/ }
end

describe command('rake --version') do
  its(:stdout) { should match /12.0.0/ }
end

describe command('rbenv --version') do
  its(:stdout) { should match /1.1.0/ }
end

describe command('git --version') do
  its(:stdout) { should match /2.11.0/ }
end

describe command('vim --version') do
  its(:stdout) { should match /7.4/ }
end

describe command('peco --version') do
  its(:stdout) { should match /0.5.1/ }
end

describe command('wget --version') do
  its(:stdout) { should match /1.19.1/ }
end

describe command('mas version') do
  its(:stdout) { should match /1.3.1/ }
end

describe command('go version') do
  its(:stdout) { should match /1.8.3/ }
end

describe command('sphinx-build -v') do
  its(:stdout) { should match /1.6.2/ }
end

#describe command('java -version') do
#  its(:stdout) { should match /1.8/ }
#end

describe command('mysql --version') do
  its(:stdout) { should match /14.14/ }
end

describe command('catalina version') do
  its(:stdout) { should match /8.5.15/ }
end

#describe command('python --version') do
#  its(:stdout) { should match /2.7.13/ }
#end

#describe command('ansible --version') do
#  its(:stdout) { should match /2.3.1.0/ }
#end



describe command('mas list') do
  its(:stdout) { should match /Wunderlist/ }
end

describe command('mas list') do
  its(:stdout) { should match /Pocket/ }
end

describe command('mas list') do
  its(:stdout) { should match /CotEditor/ }
end




#describe "ruby version, gem package'" do
#  it "should match /2.4.1/" do
#    expect(check_ruby_version).to include("2.4.1")
#  end
#  it "should be_install serverspec" do
#    expect(check_packages("serverspec")).to include("serverspec")
#  end

#  def check_ruby_version
#    command("ruby -v").stdout
#  end
#  def check_packages(package)
#    command("bundle exec gem list | grep #{package}").stdout
#  end
#end
