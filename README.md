gitlab-ci-runner-via-vagrant-with-puppet
========================================

*So far futile attempt to automatize whole gitlab-ci-runner at least for php testing*

Target
------
- by cloning this repo and changing manifest

Accomplishments
---------------
- nasty but working setup for all dependencies
- installation of ruby via rvm
- generating ssh key
- registering ssh key and token via curl

Known Issues
------------
- composer package is really pretty but useless now with current php package due to bugged suhoshin dependency (is unpossible to set whitelist_phar: On)
- init service script must be modified to include rvm 1.9.3-p392@gitlab_ci_runner exec ...

[Guide](https://gist.github.com/mishak87/6611233) for successful installation of vagrant and librarian-puppet on windows.
