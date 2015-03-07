vagrantfile-go
==================

Vagrantfile (etc) for Go dev stack.

Features
--------

| Resource | Flavor |
| :------------ | ---------------: |
| OS | Ubuntu 14.04 LTS |
| Vagrant box | ubuntu/trusty32 |
| Go | Linux binary 32-bit  |
| godep | automatic via "go get" |



Contents
--------
* [Setup: Required](#required) ~ *You'll need to install these to use this repo.*
* [Setup: Personalize](#personalize) ~ *Set your synced folder, share your SSH keys.*
* [First Run](#first) ~ *A few likely first steps; clone git repo, run rake tasks.*
* [Vagrant Commands](#commands) ~ *Vagrant up/destroy/etc command reference.*
* [Notes](#notes) ~ *Misc additional info, if you care.*
* [Troubleshooting](#troubleshooting) ~ *Troubleshooting.*


<a name="required"></a>
Setup: Required
-----

See [Vagrantfiles](https://github.com/DreadPirateShawn/vagrantfiles)



<a name="personalize"></a>
Setup: Personalize
------------------

See [Vagrantfiles](https://github.com/DreadPirateShawn/vagrantfiles)



<a name="first"></a>
First Run
---------

```sh
cd /path/to/your/workspace   # quite likely this matches your synced folder path
git clone git@github.com:User/Repo.git
cd Repo
```


<a name="commands"></a>
Vagrant Commands
--------

See [Vagrantfiles](https://github.com/DreadPirateShawn/vagrantfiles)



<a name="notes"></a>
Notes
-----

#### General startup times
* Initial `vagrant up` = approx 3 minutes
* Subsequent `vagrant provision` = approx 3 minutes

  *Note: Obviously this will vary extensively based on your system. This is just a rough idea. May take notably longer on very first `vagrant up` since apt-get data is not yet cached.*

#### General provision actions
* install various apt packages
* enable SSH forwarding, copy `~/.gitconfig` into VM

  *Note: All provision actions can be run repeatedly -- `vagrant provision` on a running system is expected to succeed.*
  


<a name="troubleshooting"></a>
Troubleshooting
---------------

See [Vagrantfiles](https://github.com/DreadPirateShawn/vagrantfiles)

