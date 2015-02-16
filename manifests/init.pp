# == Class: aw_gearman
#
# This module manages the job server Gearman.
#
# === Parameters
#
# === Examples

# === Authors
#
# Andreas Weber <code@andreas-weber.me>
#
# === Copyright
#
# Copyright 2015 Andreas Weber
#
class aw_gearman()
{
  package {
    [
      'gearman-job-server',
      'gearman-tools'
    ]:
      ensure  => 'latest'
  }

  service { 'gearman-job-server':
    ensure     => 'running',
    enable     => true,
    require    => Package['gearman-job-server']
  }
}
