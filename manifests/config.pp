# cactos_modelupdater::config 

class cactos_modelupdater::config inherits cactos_modelupdater{

  file { 'integration_cdosession.cfg':
    ensure  => file,
    path    => '/opt/RuntimeModelUpdater.gtk.linux.x86_64/configuration/eu.cactosfp7.configuration/integration_cdosession.cfg',
    owner   => root,
    group   => root,
    mode    => '0644',
    content => epp('cactos_modelupdater/integration_cdosession.cfg'),
  }

  file { 'cactoscale_model_updater.cfg':
    ensure  => file,
    path    => '/opt/RuntimeModelUpdater.gtk.linux.x86_64/configuration/eu.cactosfp7.configuration/cactoscale_model_updater.cfg',
    owner   => root,
    group   => root,
    mode    => '0644',
    content => epp('cactos_modelupdater/cactoscale_model_updater.cfg'),
  }

}
