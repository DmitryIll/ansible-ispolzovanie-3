# count_vm = 0

vm=[
# ----------- vm0 ---------------------------------------------------------------
      {name = "ansible"
      image = "fd82nvvtllmimo92uoul"   # ubuntu 22.04
      cpu = 2
      core_fraction = 100
      ram = 4
      disk_size = 16
      allow_stopping = true
      platform = "standard-v1"
      zone = "ru-central1-a"
      preemptible = true
      nat = true
      cmd =[
        "chmod 600 /root/.ssh/id_ed25519",
        "ssh-keyscan -H click-srv >> /root/.ssh/known_hosts",
        "git clone https://github.com/DmitryIll/ansible-ispolzovanie-3.git",
        "sudo apt-add-repository -y ppa:ansible/ansible",
        "sudo apt update",
        "sudo apt install -y ansible",
      ]
      },
# ----------- vm1 ---------------------------------------------------------------
      {name = "click-srv"
      # image = "fd82nvvtllmimo92uoul"   # ubuntu 22.04
      image = "fd8bem6begolined4qjs"   # centos 7 login
      cpu = 2
      core_fraction = 100
      ram = 4
      disk_size = 16
      allow_stopping = true
      platform = "standard-v1"
      zone = "ru-central1-a"
      preemptible = true
      nat = true
      cmd =["echo hello",
      ]},
# ----------- vm2 ---------------------------------------------------------------
      {name = "vector"
      # image = "fd82nvvtllmimo92uoul"   # ubuntu 22.04
      image = "fd8bem6begolined4qjs"   # centos 7 login
      cpu = 2
      core_fraction = 100
      ram = 4
      disk_size = 16
      allow_stopping = true
      platform = "standard-v1"
      zone = "ru-central1-a"
      preemptible = true
      nat = true
      cmd =["echo hello",
      ]},
# ----------- vm3 ---------------------------------------------------------------
      {name = "lighthouse"
      # image = "fd82nvvtllmimo92uoul"   # ubuntu 22.04
      image = "fd8bem6begolined4qjs"   # centos 7 login
      cpu = 2
      core_fraction = 100
      ram = 4
      disk_size = 16
      allow_stopping = true
      platform = "standard-v1"
      zone = "ru-central1-a"
      preemptible = true
      nat = true
      cmd =["echo hello",
      ]}            
]





