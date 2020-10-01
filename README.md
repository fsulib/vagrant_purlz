# vagrant_purlz
This is a Vagrant VM for testing PURLZ v1.6.4 (latest release).

## Configuration  
- **Operating System:** Ubuntu 14.04 LTS "Trusty Tahr"  
- **Java Version:** OpenJDK 6   
- **Configuration File:** /vagrant/demo.config  
- **Installer File:** /vagrant/PURLZ-Server-1.6.4.jar  
- **Installation Directory:** /root/PURLZ-Server-1.6.4  

An older version of Ubuntu was chosen in order to gain access to an older version of Java, as Java 8+ deprecates the 
["Endorsed Standards Override Mechanism"](http://docs.oracle.com/javase/8/docs/technotes/guides/standards/) (`java.endorsed.dirs`)
which the application apparently makes use of; it fails to start when using more recent Java JDKs. 

## Usage
In order to use this VM, make sure you have [Vagrant](https://www.vagrantup.com/) installed and set up properly.
Then download and build this repository with `git clone https://github.com/fsulib/vagrant_purlz`, `cd vagrant_purlz`, and `vagrant up`. The machine does not release the terminal when it finishes building because it is running the PURLZ server process. Once you see `vagrant_purlz: Running: inline script`, the machine has finished building and you can access the PURLZ server at http://localhost:8080/docs/index.html with the username "admin"
and the password "password". You may release the terminal manually by typing CTRL+C twice.
