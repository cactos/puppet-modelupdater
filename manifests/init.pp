# Class: cactos_modelupdater
# ===========================
#
# Installs and configures the cactos modelupdater
#
# Parameters
# ----------
#
#
# * `repositoryName`
#   The CDO repository name
#
# * `cdoEndpoint`
#   The CDO host:port
#
# * `*****Resource`
#   Path to this resource
#   
# * `cactoOptUser`
#   CactoOpt Username
#
# * `cactoOptPassword`
#   CactoOpt Password
#
# * `cactoSimUser`
#   CactoSim Username
#
# * `cactoSimPassword`
#   CactoSim Password
#
# * `cactoScaleUser`
#   CactoScale Username
#
# * `cactoScalePassword`
#   CactoScale Password
#
# * `chukwaCollectorHost`
#   Host of the chukwaCollector
#
# * `zookeeperHost`
#   Host of the zookeeper
#
# * `filteredComputeNodes`
#   Semicolon separated list of computenodes to filter for
#
#
# Examples
# --------
#
# @example
#    class { 'cactos_modelupdater':
#      repositoryName => 'repo1'
#      cdoEndpoint => 'example.com:2038'
#      optimisationPlanResource => '/plans'
#      logicalModelResource => '/logical'
#      physicalModelResource => '/physical'
#      logicalLoadResource => '/logical_load'
#      physicalLoadResource => '/physical_load'
#      architectureTypeResource => '/architecturetype'
#      hypervisorResource => '/hypervisor'
#    
#      cactoOptUser => 'CactoOpt'
#      cactoOptPassword => 'secret'
#      cactoScaleUser => 'CactoScale'
#      cactoScalePassword => 'secure'
#      cactoSimUser => 'CactoSim'
#      cactoSimPassword => 'secure'
#    
#      chukwaCollectorHost => '127.0.0.1'
#      zookeeperHost => '127.0.0.1'
#      filteredComputeNodes=> 'computenode01;computenode02;computenode03;computenode04;computenode05;computenode07;computenode08;computenode11;computenode12;computenode14;computenode18'
#   }
#
# Authors
# -------
#
# Simon volpert <simon.volpert@uni-ulm.de>
#
class cactos_modelupdater (

  String $repositoryName = $cactos_modelupdater::params::repositoryName,
  String $cdoEndpoint = $cactos_modelupdater::params::cdoEndpoint,
  String $optimisationPlanResource = $cactos_modelupdater::params::optimisationPlanResource,
  String $logicalModelResource = $cactos_modelupdater::params::logicalModelResource,
  String $physicalModelResource = $cactos_modelupdater::params::physicalModelResource,
  String $logicalLoadResource = $cactos_modelupdater::params::logicalLoadResource,
  String $physicalLoadResource = $cactos_modelupdater::params::physicalLoadResource,
  String $architectureTypeResource = $cactos_modelupdater::params::architectureTypeResource,
  String $hypervisorResource = $cactos_modelupdater::params::hypervisorResource,

  String $cactoOptUser = $cactos_modelupdater::params::cactoOptUser,
  String $cactoOptPassword = $cactos_modelupdater::params::cactoOptPassword,
  String $cactoScaleUser = $cactos_modelupdater::params::cactoScaleUser,
  String $cactoScalePassword = $cactos_modelupdater::params::cactoScalePassword,
  String $cactoSimUser = $cactos_modelupdater::params::cactoSimUser,
  String $cactoSimPassword = $cactos_modelupdater::params::cactoSimPassword,

  String $chukwaCollectorHost =  $cactos_modelupdater::params::chukwaCollectorHost,
  String $zookeeperHost = $cactos_modelupdater::params::zookeeperHost,
  String $filteredComputeNodes= $cactos_modelupdater::params::filteredComputeNodes,
)inherits cactos_modelupdater::params {


  contain cactos_modelupdater::install
  contain cactos_modelupdater::config
  contain cactos_modelupdater::service

  Class['::cactos_modelupdater::install']->
  Class['::cactos_modelupdater::config']~>
  Class['::cactos_modelupdater::service']



  # TODO: Fix Nullpointer exception

}
