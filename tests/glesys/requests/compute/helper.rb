class Glesys
  module Compute
    module Formats
      module Servers

        LIST = {
          'debug' => {
            'input' => []
          },
          'servers' => [{
            'serverid' => String,
            'hostname' => String,
            'datacenter' => String,
            'platform' => String
          }],
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

        DETAILS = {
          'debug' => {
            'input' =>  {
              'serverid'  =>  Fog::Nullable::String
            }
          },
          'server' => {
            'managedhosting'  => String,
            'cost'            => {
              'amount'      =>  Float,
              'timeperiod'  => String,
              'currency'    => String
            },
            'serverid'      => String,
            'datacenter'    => String,
            'memorysize'    => Integer,
            'cpucores'      => Integer,
            'transfer'      => Integer,
            'templatename'  => String,
            'iplist'        =>  [{
              'cost'      => Integer,
              'ipversion' => Fog::Nullable::Integer,
              'ipaddress' => Fog::Nullable::String,
              'currency'  => String
            }], 
            'description' => String,
            'hostname'    => String,
            'disksize'    => Integer,
            'platform'    => String
          },
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

        STOP = DETAILS.merge(
          'debug' => {
            'input' =>  {
              'serverid'  => Fog::Nullable::String,
              'type'      => String
            }
          }
        )

        CREATE = DETAILS.merge(
          'debug' => {
            'input' =>  {
              'serverid'      => Fog::Nullable::String,
              'hostname'      => String,
              'rootpassword'  => String,
              'datacenter'    => String,
              'platform'      => String,
              'templatename'  => String,
              'disksize'      => String,
              'memorysize'    => String,
              'cpucores'      => String,
              'transfer'      => String,
              'description'   => String
            }
          }
        )

        STATUS = {
          'debug' => {
            'input' => {
              'serverid' => String
            }
          },
          'server' => {
            'memory'    => {
              'usage' => Fog::Nullable::Integer,
              'max'   => Fog::Nullable::Integer,
              'unit'  => Fog::Nullable::String
            },
            'transfer'  => {
              'usage' => Fog::Nullable::Integer,
              'max'   => Fog::Nullable::Integer,
              'unit'  => Fog::Nullable::String
            },
            'disk'      => {
              'usage' => Fog::Nullable::Integer,
              'max'   => Fog::Nullable::Integer,
              'unit'  => Fog::Nullable::String
            },
            'state'     => String,
            'transfer'  => {
              'usage' => Fog::Nullable::Integer,
              'max'   => Fog::Nullable::Integer,
              'unit'  => Fog::Nullable::String
            },
            'cpu'       => [],
            'uptime'    => {
              'current' => Fog::Nullable::Integer,
              'unit'    => String
            }
          },
          'status' => {
            'code' => Integer,
            'text' => String
          }
       }

        DESTROY = {
          'debug' => {
            'input' => {
              'serverid' => String,
              'keepip'   => String
            }
          },
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

      end
      module Ips

        IPLIST = {
          'debug' => {
            'input' => []
          },
          'iplist' => [{
            'price' => {
              'amount'      => String,
              'timeperiod'  => String,
              'currency'    => String
            },
            'datacenter'  => String,
            'serverid'    => Fog::Nullable::String,
            'platform'    => String,
            'ip'          => String,
            'version'     => String,
            'PTR'         => String
          }],
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

        IPLIST_ALL = {
          'debug' => {
            'input' => {
              'datacenter'  => String,
              'ipversion'   => String,
              'platform'    => String
            }
          },
          'iplist' => [],
          'status' => {
            'code' => Integer,
            'text' => String
          },
          'ipinfo' => {
            'datacenter' => String,
            'ipversion'  => Integer,
            'platform'   => String
          }
        }

        IPLIST_CATCH_RELEASE = {
          'debug' => {
            'input' => {
              'ipaddress' => String,
            }
          },
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

      end
      module Templates

        LIST = {
          'debug' => {
            'input' => []
          },
          'templates' =>  {
            'Xen' => [{
              'name'              => String,
              'operatingsystem'   => String,
              'minimummemorysize' => Integer,
              'minimumdisksize'   => Integer,
              'platform'          => String
            }],
            'OpenVZ' => [{
              'name'              => String,
              'operatingsystem'   => String,
              'minimummemorysize' => Integer,
              'minimumdisksize'   => Integer,
              'platform'          => String
            }]
          },
          'status' => {
            'code' => Integer,
            'text' => String
          }
        }

      end
    end
  end
end
