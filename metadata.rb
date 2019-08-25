name 'prl_base'
maintainer 'Preludian'
maintainer_email 'joepreludian@gmail.com'
license 'MIT'
description 'Installs/Configures prl_base'
long_description 'Installs/Configures prl_base'
version '0.2.1'
chef_version '>= 13.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/prl_base/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/prl_base'
#

depends 'openssh'
depends 'sudo'
depends 'docker'
