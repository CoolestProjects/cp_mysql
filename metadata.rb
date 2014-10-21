name             'cp_mysql'
maintainer       'Coolest Projects'
maintainer_email 'coolestprojects@coderdojo.com'
description      'Installs and configures our mysql'
version          '0.0.1'

recipe 'default', 'Installs mysql and runs custom script'

depends 'mysql'
