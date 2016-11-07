# cactos_modelupdater::params

class cactos_modelupdater::params {
  $repositoryName = 'repo1'
  $cdoEndpoint = 'example.com:2038'
  $optimisationPlanResource = '/plans'
  $logicalModelResource = '/logical'
  $physicalModelResource = '/physical'
  $logicalLoadResource = '/logical_load'
  $physicalLoadResource = '/physical_load'
  $architectureTypeResource = '/architecturetype'
  $hypervisorResource = '/hypervisor'

  $cactoOptUser = 'CactoOpt'
  $cactoOptPassword = 'secret'
  $cactoScaleUser = 'CactoScale'
  $cactoScalePassword = 'secure'
  $cactoSimUser = 'CactoSim'
  $cactoSimPassword = 'secure'

  $chukwaCollectorHost = '127.0.0.1'
  $zookeeperHost = '127.0.0.1'
  $filteredComputeNodes= 'computenode01;computenode02;computenode03;computenode04;computenode05;computenode07;computenode08;computenode11;computenode12;computenode14;computenode18'


}
