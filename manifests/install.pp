# cactos_modelupdater::install

class cactos_modelupdater::install inherits cactos_modelupdater{
  ensure_packages(['zip'])
  archive { 'modelupdater.zip':
    path         => '/opt/modelupdater.zip',
    source       => 'https://sdqweb.ipd.kit.edu/eclipse/cactos/cactoscale/runtimemodelupdater/binary_nightly/RuntimeModelUpdater.gtk.linux.x86_64.zip',
    extract      => true,
    extract_path => '/opt',
    creates      => '/opt/RuntimeModelUpdater.gtk.linux.x86_64',
  }
}
