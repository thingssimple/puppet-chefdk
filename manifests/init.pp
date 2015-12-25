class chefdk {
  include homebrew

  homebrew::tap { 'caskroom/cask': }

  package { 'brew-cask':
    ensure => present,
    user => 'root'
  }

  $home = "/Users/${::boxen__user}"

  exec { "Install chefdk from cask":
    command => "brew cask install chefdk",
    cwd => $home,
    user => $::boxen_user
  }
}
