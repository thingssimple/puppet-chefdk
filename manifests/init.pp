class chefdk {
  include brewcask

  package { 'chefdk':
    ensure => present,
    provider => 'brewcask'
  }
}
