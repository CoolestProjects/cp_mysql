# Coolest Projects Mysql Chef Cookbook Wrapper

Wrap the community mysql recipe to enable an sql script to be ran after mysql is installed.

## Default Recipe

Runs
 * mysql::server
 * cp_mysql::runscript

Requirements
------------
* Chef 11 or higher

Platforms
------------
Tested on

* CentOs 6

Attributes
----------

````default['cp_mysql']['run_script'] ```` - This is the location path of a file you want to run as part of the cp_mysql recipe.  

License & Authors
-----------------
- Author:: Noel King (<coolestprojects@coderdojo.com>)

