require 'serverspec'
require 'yaml'

set :backend, :exec

# recipe.ymlから設定値を読み込む
def load_configuration (key)
  configuration = YAML.load_file 'recipe.yml'
  configuration[0]['vars'][key].map do |package|
    package.kind_of?(Hash) ? package['name'] : package
  end
end
 
# Homebrewパッケージリストを読み込む
def homebrew_packages
  load_configuration 'homebrew_packages'
end
 
# Homebrew Caskパッケージリストを読み込む
def homebrew_cask_packages
  load_configuration 'homebrew_cask_packages'
end
 
# Caskroomのパスを得る
def homebrew_caskroom
  env = Shellwords.shellsplit(ENV['HOMEBREW_CASK_OPTS'] || '').map do |option|
    option.split('=')
  end
  Hash[*env.flatten]['--caskroom'] || '/opt/homebrew-cask/Caskroom'
end

