class chefdk {
  include homebrew
  include brewcask

  homebrew::tap { 'caskroom/cask': }

  package { 'brew-cask':
    ensure => present,
    provider => 'brewcask'
  }

  $home = "/Users/${::boxen__user}"

  exec { "Install chefdk from cask":
    command => "brew cask install chefdk",
    cwd => $home,
    user => $::boxen_user
  }
}
