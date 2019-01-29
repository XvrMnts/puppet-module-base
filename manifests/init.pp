class base {

  package { ['tree','wget','git','unzip','ntp','software-properties-common']:
    ensure=> present,
    require => Exec['apt-get_update']
  }

  notify {'Executing base sw install':}

  exec { 'apt-get_update':
    command => "/usr/bin/apt-get update"
  }

}
