# simple hash , e.g.
# '8.8.8.0/24' => '192.168.1.1'
# will add a rule:
# 8.8.8.0/24 via 192.168.1.1
#
default['static_routes']['via'] = {}
