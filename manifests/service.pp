# cactos_modelupdater::service

class cactos_modelupdater::service inherits cactos_modelupdater{

  # Create modelupdater service 
  service { 'modelupdater-service':
    ensure   => running,
    require  => File['integration_cdosession.cfg'],
    start    => 'nohup /opt/RuntimeModelUpdater.gtk.linux.x86_64/RuntimeModelUpdater 2>&1 >> /var/log/modelupdater.log &',
    stop     => '/usr/bin/pkill -f RuntimeModelUpdater',
    pattern  => 'RuntimeModelUpdater', #TODO improve pattern to avoid ambiguity
    provider => 'base',
  }

}
