class chefdk {
  exec { 'Install chefdk from cask':
    command => 'brew cask install chefdk',
    user => $::boxen_user
  }
}
