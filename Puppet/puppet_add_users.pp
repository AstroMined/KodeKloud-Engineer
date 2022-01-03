class user_creator {
  user { 'siva':
    ensure   => present,
    uid => 1933,
  }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include user_creator
}
