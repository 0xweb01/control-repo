class profile::r10k {
  class {'r10k":
     remote => 'https://github.com/0xweb01/control-repo/',
  }
  class {'r10k::webhook::config'
     use_mcllective => false,
     enable_ssl     => false,
  }
  class {'r10k::webhook':
    user   => 'root',
    group  => 'root',
  }

}
