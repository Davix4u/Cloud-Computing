# What is Azure load Balancer services

Azure **Load Balancer** allows for efficient distribution of load or incoming network traffic across a group of backend resources of servers

## How does it work?
A scale set can be defined as a set of identical machines

The backend Pool is a group of VMs that will handle the incoming request. in the case of scale sets backend pool is updated automatically

A static public (virtual) IP can be assigned thus making it a public load balancer and for private IP it is an internal load balancer

### Load Balancer terms
1. Front IP Configuration - They are the private or public IP
2. Backend pools - a group of servers handling your request
3. Health probes - monitoring of backend pool health, which includes checking the server and redirecting the traffic from bad health to good health
4. Load balancing rules: This is how you specify traffic distribution to the backend pool. You can specify your IP address(ipv4 or ipv6), the Port you listening to TCP OR UDP,  which kind of server
5. you redirecting to, the type of backend pool
6. Inbound NAT rules: biding of specific IP/port to a specific instance in the backend pool. Classic load balancing will redirect to any load balancer pool
7. OutBound rules: Control outgoing traffic

### VM Scale set and Availability set
Availability Set: The backend pool has to be updated manually for each server
VM Scale Set: The scale set will update automatically

### DEMOS
Archetiture of demo

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/f6ebce6e-26e2-4f0f-8c0f-fe4f918687b4)

step 1
1. Create a virtual network and subnet
2. create a vm availabilty set

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/f791020e-762e-47d1-a703-db12520dcdb6)

Create a vm and attached the availabilty to it
y![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/76a3940a-3ebb-4d4e-a512-437d4edd6baf)

The vm created has no public ip address and port open. you can not connect to it. but you run this command on the powershell   curl localhost -usebasicparsing

Step B
1. create a load balancer ( select a statis IP address)

STEP C 
Configure the backend pool
1. select the virtual network in the right region
2. associate the IPV4  to the Virtual Machine for all vm 1-3 and click add

Configure Your health Probe
1. ![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/bf483f35-c427-4087-b4e0-85a29a888730)

configure loadbalancing rule

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/5ec811e6-36a5-41bb-9e33-2ed1d29c3cfe)










