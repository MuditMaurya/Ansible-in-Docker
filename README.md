# Ansible-in-Docker
### Learn Ansible with Docker as Nodes and Controllers.

#### Backstory and Problem
I had been working with ansible for quite sometime and it takes quite a resources (VMs) for targets and controller to work with and learn ansible.
It was quite difficult to work with VMs as it burns hole in your wallet if you do not have free subscription to any cloud platform and you definitely need internet to work with VMs, in short couple of bottle-necks for not easy for begineers.

### Solution
My idea was to use docker containers as controllers and node/targets.
This might not be the best solution available but it definitel worked in my case.

- You will need **docker engine** installed on your machine
- You will also need **docker-compose** installed

### Commands
After your clone this repo on your local machine

- Change directory into this repository and run following commands:

```
docker-compose up -d
```

This will create required network, one controller node and two different target nodes

- Once the above command completes successfully, run the following

```
docker exec -it ansible-controller sh
```

This will get you in the controller container.

- Once above command completes, edit `/etc/ansible/hosts` file and add both the nodes as `node1` and `node2` as follows:

```
node1
node2
```

* Note: If you add more nodes in `docker-compose.yml` file, you will also have to add those node(s) in this same file as well.

- Save and Exit.

Now you all set, just run the following ad-hoc ansible command to test:

```
ansible all -m ping
```

You can also write playbooks and execute them.

#### Note

*Note that this is a just a basic approach to solve my above mentioned problem, please feel free to raise issues if you find any.*

I'll try to keep this project updated.
