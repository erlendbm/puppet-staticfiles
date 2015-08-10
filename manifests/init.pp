# == Class: staticfiles
#
# Full description of class staticfiles here.
#
# === Parameters
#
# Document parameters here.
#
# [*staticfiles*]
#   This is an array of the Puppet "file" type, with parameters.
#
# === Variables
#
# An array of "file"s, with parameters as valid for that type.
#
# === Examples
#
#  class { 'staticfiles':
#    'root' => { path  => '/root',
#                owner => 'root',
#                group => 'root',
#                mode  => '0700',
#                ensure => 'directory', },
#    'root.dot.bashrc.ebm' => {
#                path  => '/root/.bashrc.ebm',
#                owner => 'root',
#                group => 'root',
#                mode  => '0644',
#                source:  'puppet:///staticfiles/root/dot.bashrc.ebm'
#  }
#
# === Authors
#
# Erlend Midttun <erlend.midttun@ntnu.no>
#
# === Copyright
#
# Copyright 2015 Erlend Midttun <erlend.midttun@ntnu.no>
#
class staticfiles (
  $staticfiles     = {},
) {

  create_resources ( file, $staticfiles::staticfiles )

}
