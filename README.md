# VMware Tanzu Application Service for VMs [Windows] Documentation Book

This repository contains metadata for the VMware Tanzu Application Service for VMs [Windows] (TAS for VMs [Windows])
documentation. We publish the TAS for VMs [Windows] documentation at
https://docs.pivotal.io/application-service-windows/index.html

## How To Contribute

Please help us improve the accuracy and completeness of the TAS for VMs [Windows] documentation by contributing
content, editing, or expertise.

A common way to contribute is to file a pull request through GitHub.

Every topic in the TAS for VMs [Windows] documentation has a corresponding file in the
[https://github.com/pivotal-cf/docs-pcf-windows](https://github.com/pivotal-cf/docs-pcf-windows) content repository in
GitHub. To locate the source file for a topic, navigate to the topic on the documentation site and click "View the
source for this page in GitHub" at the bottom of the topic.

## Versions and Branching

| **Branch Name** | **Content** | **Location** |
|-----------------|-------------|--------------|
| `master` | TAS for VMs [Windows] v2.12 pre-release | http://docs-pcf-staging.cfapps.io/application-service-windows/2-12/index.html |
| `2.11`   | TAS for VMs [Windows] v2.11             | https://docs.pivotal.io/application-service-windows/2-11/index.html |
| `2.10`   | TAS for VMs [Windows] v2.10             | https://docs.pivotal.io/application-service-windows/2-10/index.html |
| `2.9`    | TAS for VMs [Windows] v2.9              | https://docs.pivotal.io/application-service-windows/2-9/index.html |
| `2.8`    | TAS for VMs [Windows] v2.8              | https://docs.pivotal.io/application-service-windows/2-8/index.html |
| `2.7`    | TAS for VMs [Windows] v2.7              | https://docs.pivotal.io/application-service-windows/2-7/index.html |

**master**: The `master` branch is used to publish the pre-release v2.12 version of the site. Create pull requests on
`master` to contribute bug fixes or correct technical inaccuracies in the pre-release v2.12 documentation.

**2.11**: The `2.11` branch is used to publish the live version of the v2.11 documentation. Create pull requests on
`2.11` to contribute or correct technical inaccuracies in the v2.11 documentation.

**2.10**: The `2.10` branch is used to publish the live version of the v2.10 documentation. Create pull requests on
`2.10` to contribute or correct technical inaccuracies in the v2.10 documentation.

**2.9**: The `2.9` branch is used to publish the live version of the v2.9 documentation. Create pull requests on `2.9`
to contribute or correct technical inaccuracies in the v2.9 documentation.

**2.8**: The `2.8` branch is used to publish the live version of the v2.8 documentation. Create pull requests on `2.8`
to contribute or correct technical inaccuracies in the v2.8 documentation.

**2.7**: The `2.7` branch is used to publish the live version of the v2.7 documentation. Create pull requests on `2.7`
to contribute or correct technical inaccuracies in the v2.7 documentation.

## How To Use Bookbinder To View Your Documentation

[Bookbinder](https://github.com/pivotal-cf/bookbinder/blob/main/README.md) is a command-line
utility for stitching Markdown documents into a hostable web app. The documentation team uses
Bookbinder to publish our documentation sites, but you can also use Bookbinder to view a live
version of your documentation on your local machine.

Bookbinder draws the content for the site from this repository, the left navigation menu ("subnav")
from [docs-book-windows](https://github.com/pivotal-cf/docs-book-windows), and various layout
configuration and assets from [docs-layout-repo](https://github.com/pivotal-cf/docs-layout-repo).

To use Bookbinder to view your documentation, perform the following steps:

1. Clone this repository to the `~/workspace` directory on your local machine.
1. Clone the [docs-pcf-windows](https://github.com/pivotal-cf/docs-pcf-windows) and
[docs-layout-repo](https://github.com/pivotal-cf/docs-layout-repo) repositories to the `~/workspace` directory on your
local machine.
1. Navigate into the `docs-book-windows` directory.
1. Run `bundle install` to install all of the necessary gems, including Bookbinder.
1. Run `bundle exec bookbinder bind local` to build a Rack web-app of the book. After the bind has completed, navigate
into the `final_app` directory and run `rackup`. Then navigate to
`localhost:9292/application-service-windows/index.html` in a browser.

## Continuous Integration and Continuous Delivery

We use Concourse pipelines to provide continuous integration and continuous delivery. Any change made to this repository
or the [https://github.com/pivotal-cf/docs-pcf-windows](https://github.com/pivotal-cf/docs-pcf-windows) content repository trigger a "bind" where the disparate parts of
the  TAS for VMs [Windows] documentation are assembled into a single web app. A successful bind triggers pushing the
app to the staging site,
[docs-pcf-staging.sc2-04-pcf1-apps.oc.vmware.com/application-service-windows/2-11](docs-pcf-staging.sc2-04-pcf1-apps.oc.vmware.com/application-service-windows/2-11).
After review, the staging site is manually pushed to the production site,
[https://docs.pivotal.io/application-service-windows](https://docs.pivotal.io/application-service-windows).

Concourse Pipelines:

* **2.12**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-current?group=windows-2-12
* **2.11**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-current?group=windows-2-11
* **2.10**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-current?group=windows-2-10
* **2.9**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-current?group=windows-2-9
* **2.8**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-current?group=windows-2-8
* **2.7**: https://runway-ci.eng.vmware.com/teams/mapbu-docs/pipelines/cf-previous-versions?group=windows-2-7
