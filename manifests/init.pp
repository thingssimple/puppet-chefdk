class chefdk {
  include homebrew

  homebrew::tap { 'caskroom/cask': }

  package { 'brew-cask':
    ensure => present
  }

  exec { "Install chefdk from cask":
    command => "brew cask install chefdk",
    user => $::boxen_user
  }
}
