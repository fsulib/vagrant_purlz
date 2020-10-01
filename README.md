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
Then download and build this repository with `git clone https://github.com/fsulib/vagrant_purlz`, `cd vagrant_purlz`, and `vagrant up`.
Once the machine is done building, you can access the PURLZ server at http://localhost:8080/docs/index.html with the username "admin"
and the password "password".

Note that the PURLZ server seems to have issues if you try to run it in a detached process, as it isn't able to pick back up where it
left off if you `halt` and then `up` the VM. For this reason, the server is set to run in a foregrounded process, meaning that after
running `vagrant up` the terminal fails to release after outputting `vagrant_purlz: Running: inline script` (the inline script is what
continues to run and keeps the terminal from releasing). Hit CTRL+C to kill the process and release the terminal, this will not kill
the PURL server, it only severs the link between the server's process output and Vagrant. After the terminal is released, you may SSH
inside the system or halt the process. The data entered into the server will persist if you halt the VM and bring it back up, but when
you bring it back up again you will again have to hit CTRL+C to get your terminal back.
