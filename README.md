gitlab-ci-runner-via-vagrant-with-puppet
========================================

*So far futile attempt to automatize whole gitlab-ci-runner at least for php testing*

Runner class is in separate repo [gitlab-ci-runner puppet module](https://github.com/mishak87/puppet-gitlab-ci-runner).

Target
------
- by cloning this repo and changing manifest/param.pp you should be able to launch new gitlab ci runner
- variations for different php version
- provide base for different and not only php runners

Accomplishments
---------------
- nasty but working setup for all dependencies
- installation of ruby via rvm
- generating ssh key
- registering ssh key and token via curl

Known Issues
------------
- composer package is really pretty but useless now with current php package due to bugged suhoshin dependency (is unpossible to set whitelist_phar: On)
- init service script must be modified to launch via `rvm 1.9.3-p392@gitlab_ci_runner exec ...`

[Guide](https://gist.github.com/mishak87/6611233) for successful installation of vagrant and librarian-puppet on Windows 7.

Installation
------------
Requirements installed ruby, puppet, librarian-puppet and vagrant (use this guide if you are on windows).

```sh
git clone https://github.com/mishak87/gitlab-ci-runner-via-vagrant-with-puppet
librarian-puppet install
git clone https://github.com/mishak87/puppet-gitlab-ci-runner modules/gitlab_ci_runner
vagrant up
```

Update
------
```sh
git pull
librarian-puppet install
cd modules/gitlab-ci-runner
git pull
cd ../..
vagrant provision
```

Note: Tested under Windows 7 with Ruby 2.0.0 (x86)
