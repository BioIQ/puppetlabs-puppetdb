# All in one class for setting up a PuppetDB instance. See README.md for more
# details.
class puppetdb (
  $listen_address           = $puppetdb::params::listen_address,
  $listen_port              = $puppetdb::params::listen_port,
  $open_listen_port         = $puppetdb::params::open_listen_port,
  $ssl_listen_address       = $puppetdb::params::ssl_listen_address,
  $ssl_listen_port          = $puppetdb::params::ssl_listen_port,
  $disable_ssl              = $puppetdb::params::disable_ssl,
  $open_ssl_listen_port     = $puppetdb::params::open_ssl_listen_port,
  $ssl_dir                  = $puppetdb::params::ssl_dir,
  $ssl_set_cert_paths       = $puppetdb::params::ssl_set_cert_paths,
  $ssl_cert_path            = $puppetdb::params::ssl_cert_path,
  $ssl_key_path             = $puppetdb::params::ssl_key_path,
  $ssl_ca_cert_path         = $puppetdb::params::ssl_ca_cert_path,
  $ssl_deploy_certs         = $puppetdb::params::ssl_deploy_certs,
  $ssl_key                  = $puppetdb::params::ssl_key,
  $ssl_cert                 = $puppetdb::params::ssl_cert,
  $ssl_ca_cert              = $puppetdb::params::ssl_ca_cert,
  $ssl_protocols            = $puppetdb::params::ssl_protocols,
  $manage_dbserver          = $puppetdb::params::manage_dbserver,
  $manage_package_repo      = $puppetdb::params::manage_pg_repo,
  $postgres_version         = $puppetdb::params::postgres_version,
  $database                 = $puppetdb::params::database,
  $database_host            = $puppetdb::params::database_host,
  $database_port            = $puppetdb::params::database_port,
  $database_username        = $puppetdb::params::database_username,
  $database_password        = $puppetdb::params::database_password,
  $database_name            = $puppetdb::params::database_name,
  $database_ssl             = $puppetdb::params::database_ssl,
  $database_listen_address  = $puppetdb::params::postgres_listen_addresses,
  $database_validate        = $puppetdb::params::database_validate,
  $node_ttl                 = $puppetdb::params::node_ttl,
  $node_purge_ttl           = $puppetdb::params::node_purge_ttl,
  $report_ttl               = $puppetdb::params::report_ttl,
  $gc_interval              = $puppetdb::params::gc_interval,
  $log_slow_statements      = $puppetdb::params::log_slow_statements,
  $conn_max_age             = $puppetdb::params::conn_max_age,
  $conn_keep_alive          = $puppetdb::params::conn_keep_alive,
  $conn_lifetime            = $puppetdb::params::conn_lifetime,
  $puppetdb_package         = $puppetdb::params::puppetdb_package,
  $puppetdb_version         = $puppetdb::params::puppetdb_version,
  $puppetdb_service         = $puppetdb::params::puppetdb_service,
  $puppetdb_service_status  = $puppetdb::params::puppetdb_service_status,
  $puppetdb_user            = $puppetdb::params::puppetdb_user,
  $puppetdb_group           = $puppetdb::params::puppetdb_group,
  $read_database            = $puppetdb::params::read_database,
  $read_database_host       = $puppetdb::params::read_database_host,
  $read_database_port       = $puppetdb::params::read_database_port,
  $read_database_username   = $puppetdb::params::read_database_username,
  $read_database_password   = $puppetdb::params::read_database_password,
  $read_database_name       = $puppetdb::params::read_database_name,
  $read_database_ssl        = $puppetdb::params::read_database_ssl,
  $read_database_validate   = $puppetdb::params::read_database_validate,
  $read_log_slow_statements = $puppetdb::params::read_log_slow_statements,
  $read_conn_max_age        = $puppetdb::params::read_conn_max_age,
  $read_conn_keep_alive     = $puppetdb::params::read_conn_keep_alive,
  $read_conn_lifetime       = $puppetdb::params::read_conn_lifetime,
  $confdir                  = $puppetdb::params::confdir,
  $manage_firewall          = $puppetdb::params::manage_firewall,
  $java_args                = $puppetdb::params::java_args,
  $max_threads              = $puppetdb::params::max_threads,
) inherits puppetdb::params {
  
  class { '::puppetdb::server':
    listen_address            => $listen_address,
    listen_port               => $listen_port,
    open_listen_port          => $open_listen_port,
    ssl_listen_address        => $ssl_listen_address,
    ssl_listen_port           => $ssl_listen_port,
    disable_ssl               => $disable_ssl,
    open_ssl_listen_port      => $open_ssl_listen_port,
    ssl_dir                   => $ssl_dir,
    ssl_set_cert_paths        => $ssl_set_cert_paths,
    ssl_cert_path             => $ssl_cert_path,
    ssl_key_path              => $ssl_key_path,
    ssl_ca_cert_path          => $ssl_ca_cert_path,
    ssl_deploy_certs          => $ssl_deploy_certs,
    ssl_key                   => $ssl_key,
    ssl_cert                  => $ssl_cert,
    ssl_ca_cert               => $ssl_ca_cert,
    ssl_protocols             => $ssl_protocols,
    database                  => $database,
    database_host             => $database_host,
    database_port             => $database_port,
    database_username         => $database_username,
    database_password         => $database_password,
    database_name             => $database_name,
    database_ssl              => $database_ssl,
    database_validate         => $database_validate,
    node_ttl                  => $node_ttl,
    node_purge_ttl            => $node_purge_ttl,
    report_ttl                => $report_ttl,
    gc_interval               => $gc_interval,
    log_slow_statements       => $log_slow_statements,
    conn_max_age              => $conn_max_age,
    conn_keep_alive           => $conn_keep_alive,
    conn_lifetime             => $conn_lifetime,
    puppetdb_package          => $puppetdb_package,
    puppetdb_version          => $puppetdb_version,
    puppetdb_service          => $puppetdb_service,
    puppetdb_service_status   => $puppetdb_service_status,
    confdir                   => $confdir,
    java_args                 => $java_args,
    max_threads               => $max_threads,
    read_database             => $read_database,
    read_database_host        => $read_database_host,
    read_database_port        => $read_database_port,
    read_database_username    => $read_database_username,
    read_database_password    => $read_database_password,
    read_database_name        => $read_database_name,
    read_database_ssl         => $read_database_ssl,
    read_database_validate    => $read_database_validate,
    read_log_slow_statements  => $read_log_slow_statements,
    read_conn_max_age         => $read_conn_max_age,
    read_conn_keep_alive      => $read_conn_keep_alive,
    read_conn_lifetime        => $read_conn_lifetime,
    puppetdb_user             => $puppetdb_user,
    puppetdb_group            => $puppetdb_group,
    manage_firewall           => $manage_firewall,
  }

  if ($database == 'postgres') {
    $puppetdb_data_dir = hiera('puppetdb_data_dir','/var/lib/pgsql/data')
    
    file { '/etc/sysconfig/pgsql' :
      ensure  => 'directory',
    }
    
    file { '/etc/sysconfig/pgsql/postgresql' :
      ensure  => 'present',
      content => "PGDATA=$puppetdb_data_dir",
      before  => Package['postgresql-server'],
    }
    
    if (hiera('puppetdb_data_dir_mount', 'false') == 'true') {
      $puppetdb_data_dir_device = hiera('puppetdb_data_dir_device')
      $puppetdb_data_mount_point = hiera('puppetdb_data_mount_point')

      file { "$puppetdb_data_mount_point" :
        owner  => 'postgres',
        group  => 'postgres',
        ensure => directory,
      }
      mount { $puppetdb_data_mount_point :
        ensure  => 'mounted',
        atboot  => true,
        fstype  => 'ext4',
        device  => $puppetdb_data_dir_device,
        options => 'defaults',
        require => File[$puppetdb_data_mount_point]
      }
    }
    
    class { '::puppetdb::database::postgresql':
      listen_addresses    => $database_listen_address,
      database_name       => $database_name,
      database_username   => $database_username,
      database_password   => $database_password,
      manage_server       => $manage_dbserver,
      manage_package_repo => $manage_package_repo,
      postgres_version    => $postgres_version,
      datadir             => $puppetdb_data_dir,
      require             => File["$puppetdb_data_dir"],
      before              => [Class['::puppetdb::server'], Class['::puppetdb::server::validate_db']],
    }
  }
    
  package { 'gunicorn' :
    provider => 'pip',
  }    

  package { 'puppetboard' :
    provider => 'pip',
  }

  $puppetboard_proxy_url = hiera('puppetboard_proxy_url')
  file { '/etc/init.d/puppetboard' :
    content => template("puppetdb/etc/init.d/puppetboard.erb"),
    mode    => 0755, 
  }
  
  service { 'puppetboard' :
    enable  => true,
    ensure  => 'running',
    require => File['/etc/init.d/puppetboard'], 
  }
}
