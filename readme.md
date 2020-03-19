## Create the resource

```
jeroenboot@YWCMac076 eve-ng-azure % time make ansible

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.http: version = "~> 1.1"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
data.http.my_public_ip: Refreshing state...
azurerm_resource_group.eve_rg: Creating...
azurerm_resource_group.eve_rg: Creation complete after 6s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng]
azurerm_virtual_network.eve_vnet: Creating...
azurerm_public_ip.eve_public_ip: Creating...
azurerm_managed_disk.eve_storage: Creating...
azurerm_network_security_group.eve_nsg: Creating...
azurerm_managed_disk.eve_storage: Creation complete after 7s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/disks/eve-storage]
azurerm_virtual_network.eve_vnet: Still creating... [10s elapsed]
azurerm_public_ip.eve_public_ip: Still creating... [10s elapsed]
azurerm_network_security_group.eve_nsg: Still creating... [10s elapsed]
azurerm_public_ip.eve_public_ip: Creation complete after 11s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/publicIPAddresses/eve-public-ip]
azurerm_network_security_group.eve_nsg: Creation complete after 11s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group]
azurerm_virtual_network.eve_vnet: Still creating... [20s elapsed]
azurerm_virtual_network.eve_vnet: Creation complete after 21s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet]
azurerm_subnet.eve_subnet: Creating...
azurerm_subnet.eve_subnet: Creation complete after 3s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_subnet_network_security_group_association.eve-nsga: Creating...
azurerm_network_interface.eve_nic: Creating...
azurerm_subnet_network_security_group_association.eve-nsga: Still creating... [10s elapsed]
azurerm_network_interface.eve_nic: Still creating... [10s elapsed]
azurerm_subnet_network_security_group_association.eve-nsga: Creation complete after 14s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_network_interface.eve_nic: Creation complete after 19s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkInterfaces/eve-nic]
azurerm_virtual_machine.eve_vm: Creating...
azurerm_virtual_machine.eve_vm: Still creating... [10s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [20s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [30s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [40s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [50s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m0s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m10s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m20s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m30s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m40s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [1m50s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m0s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m10s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m20s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m30s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m40s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [2m50s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m0s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m10s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m20s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m30s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m40s elapsed]
azurerm_virtual_machine.eve_vm: Still creating... [3m50s elapsed]
azurerm_virtual_machine.eve_vm: Provisioning with 'local-exec'...
azurerm_virtual_machine.eve_vm (local-exec): Executing: ["/bin/sh" "-c" "ssh-keygen -R eve.westeurope.cloudapp.azure.com"]
azurerm_virtual_machine.eve_vm (local-exec): # Host eve.westeurope.cloudapp.azure.com found: line 9
azurerm_virtual_machine.eve_vm (local-exec): /Users/jeroenboot/.ssh/known_hosts updated.
azurerm_virtual_machine.eve_vm (local-exec): Original contents retained as /Users/jeroenboot/.ssh/known_hosts.old
azurerm_virtual_machine.eve_vm: Creation complete after 3m53s [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/virtualMachines/eve-ng]

Apply complete! Resources: 9 added, 0 changed, 0 destroyed.

Outputs:

fqdn = eve.westeurope.cloudapp.azure.com

PLAY [all] *************************************************************************************************************************************************************************************************************************************

TASK [Wait for VM to be Available] *************************************************************************************************************************************************************************************************************
ok: [eve.westeurope.cloudapp.azure.com]

TASK [Gather Facts] ****************************************************************************************************************************************************************************************************************************
ok: [eve.westeurope.cloudapp.azure.com]

TASK [Update all Packages] *********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Create Partition of Data Disk] ***********************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Format Data Disk to ext4] ****************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Get Data Disk UUID] **********************************************************************************************************************************************************************************************************************
ok: [eve.westeurope.cloudapp.azure.com]

TASK [Create Mount path] ***********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Create Mount Entry] **********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Install all new Packages] ****************************************************************************************************************************************************************************************************************
ok: [eve.westeurope.cloudapp.azure.com] => (item=software-properties-common)
changed: [eve.westeurope.cloudapp.azure.com] => (item=python3-openssl)
changed: [eve.westeurope.cloudapp.azure.com] => (item=mysql-server)

TASK [Add EVE-NG Apt Key] **********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Add EVE-NG Repository] *******************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Add eve-ng schema] ***********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Fix database schema and checks] **********************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Install EVE-NG Packages] *****************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Restart MySQL] ***************************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Move /etc/rc.local to /etc/eve-setup.sh] *************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Update GRUB Config] **********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com] => (item={'regexp': 'GRUB_CMDLINE_LINUX_DEFAULT=.*', 'line': 'GRUB_CMDLINE_LINUX_DEFAULT=""'})
changed: [eve.westeurope.cloudapp.azure.com] => (item={'regexp': 'GRUB_CMDLINE_LINUX=.*', 'line': 'GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0 console=ttyS1,115200"'})

TASK [Update GRUB] *****************************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Finish Configuration] ********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Enable Apache2 SSL Module] ***************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Ensure SSL Directories Exist] ************************************************************************************************************************************************************************************************************
ok: [eve.westeurope.cloudapp.azure.com] => (item=/etc/ssl/private)
ok: [eve.westeurope.cloudapp.azure.com] => (item=/etc/ssl/certs)

TASK [Generate an OpenSSL Private Key] *********************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Generate an OpenSSL CSR] *****************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Generate a Self-Signed Certificate] ******************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Create Apache SSL Virtual Server] ********************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Restart Apache] **************************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Reboot] **********************************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Copy Images] *****************************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

TASK [Update Permissions] **********************************************************************************************************************************************************************************************************************
changed: [eve.westeurope.cloudapp.azure.com]

PLAY RECAP *************************************************************************************************************************************************************************************************************************************
eve.westeurope.cloudapp.azure.com : ok=29   changed=25   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

make ansible  25.96s user 5.74s system 3% cpu 16:28.43 total
jeroenboot@YWCMac076 eve-ng-azure % 
```









## And destroy

```
jeroenboot@YWCMac076 eve-ng-azure % time make destroy

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.http: version = "~> 1.1"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
data.http.my_public_ip: Refreshing state...
azurerm_resource_group.eve_rg: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng]
azurerm_managed_disk.eve_storage: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/disks/eve-storage]
azurerm_virtual_network.eve_vnet: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet]
azurerm_public_ip.eve_public_ip: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/publicIPAddresses/eve-public-ip]
azurerm_network_security_group.eve_nsg: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group]
azurerm_subnet.eve_subnet: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_subnet_network_security_group_association.eve-nsga: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_network_interface.eve_nic: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkInterfaces/eve-nic]
azurerm_virtual_machine.eve_vm: Refreshing state... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/virtualMachines/eve-ng]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_managed_disk.eve_storage will be destroyed
  - resource "azurerm_managed_disk" "eve_storage" {
      - create_option        = "Empty" -> null
      - disk_iops_read_write = 500 -> null
      - disk_mbps_read_write = 60 -> null
      - disk_size_gb         = 32 -> null
      - id                   = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/disks/eve-storage" -> null
      - location             = "westeurope" -> null
      - name                 = "eve-storage" -> null
      - resource_group_name  = "eve-ng" -> null
      - storage_account_type = "Standard_LRS" -> null
      - tags                 = {} -> null
      - zones                = [] -> null
    }

  # azurerm_network_interface.eve_nic will be destroyed
  - resource "azurerm_network_interface" "eve_nic" {
      - applied_dns_servers           = [] -> null
      - dns_servers                   = [] -> null
      - enable_accelerated_networking = false -> null
      - enable_ip_forwarding          = false -> null
      - id                            = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkInterfaces/eve-nic" -> null
      - location                      = "westeurope" -> null
      - mac_address                   = "00-0D-3A-AC-9C-41" -> null
      - name                          = "eve-nic" -> null
      - private_ip_address            = "10.0.1.10" -> null
      - private_ip_addresses          = [
          - "10.0.1.10",
        ] -> null
      - resource_group_name           = "eve-ng" -> null
      - tags                          = {} -> null
      - virtual_machine_id            = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/virtualMachines/eve-ng" -> null

      - ip_configuration {
          - name                          = "eve-nic-config" -> null
          - primary                       = true -> null
          - private_ip_address            = "10.0.1.10" -> null
          - private_ip_address_allocation = "Static" -> null
          - private_ip_address_version    = "IPv4" -> null
          - public_ip_address_id          = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/publicIPAddresses/eve-public-ip" -> null
          - subnet_id                     = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet" -> null
        }
    }

  # azurerm_network_security_group.eve_nsg will be destroyed
  - resource "azurerm_network_security_group" "eve_nsg" {
      - id                  = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group" -> null
      - location            = "westeurope" -> null
      - name                = "eve-network-security-group" -> null
      - resource_group_name = "eve-ng" -> null
      - security_rule       = [
          - {
              - access                                     = "Allow"
              - description                                = ""
              - destination_address_prefix                 = "10.0.1.10"
              - destination_address_prefixes               = []
              - destination_application_security_group_ids = []
              - destination_port_range                     = "22"
              - destination_port_ranges                    = []
              - direction                                  = "Inbound"
              - name                                       = "SSH"
              - priority                                   = 510
              - protocol                                   = "Tcp"
              - source_address_prefix                      = "185.150.69.181"
              - source_address_prefixes                    = []
              - source_application_security_group_ids      = []
              - source_port_range                          = "*"
              - source_port_ranges                         = []
            },
          - {
              - access                                     = "Allow"
              - description                                = ""
              - destination_address_prefix                 = "10.0.1.10"
              - destination_address_prefixes               = []
              - destination_application_security_group_ids = []
              - destination_port_range                     = "32769-32897"
              - destination_port_ranges                    = []
              - direction                                  = "Inbound"
              - name                                       = "consoles_pod1"
              - priority                                   = 515
              - protocol                                   = "Tcp"
              - source_address_prefix                      = "185.150.69.181"
              - source_address_prefixes                    = []
              - source_application_security_group_ids      = []
              - source_port_range                          = "*"
              - source_port_ranges                         = []
            },
          - {
              - access                                     = "Allow"
              - description                                = ""
              - destination_address_prefix                 = "10.0.1.10"
              - destination_address_prefixes               = []
              - destination_application_security_group_ids = []
              - destination_port_range                     = "443"
              - destination_port_ranges                    = []
              - direction                                  = "Inbound"
              - name                                       = "HTTPS"
              - priority                                   = 500
              - protocol                                   = "Tcp"
              - source_address_prefix                      = "185.150.69.181"
              - source_address_prefixes                    = []
              - source_application_security_group_ids      = []
              - source_port_range                          = "*"
              - source_port_ranges                         = []
            },
          - {
              - access                                     = "Allow"
              - description                                = ""
              - destination_address_prefix                 = "10.0.1.10"
              - destination_address_prefixes               = []
              - destination_application_security_group_ids = []
              - destination_port_range                     = "80"
              - destination_port_ranges                    = []
              - direction                                  = "Inbound"
              - name                                       = "HTTP"
              - priority                                   = 505
              - protocol                                   = "Tcp"
              - source_address_prefix                      = "185.150.69.181"
              - source_address_prefixes                    = []
              - source_application_security_group_ids      = []
              - source_port_range                          = "*"
              - source_port_ranges                         = []
            },
          - {
              - access                                     = "Deny"
              - description                                = ""
              - destination_address_prefix                 = "10.0.1.10"
              - destination_address_prefixes               = []
              - destination_application_security_group_ids = []
              - destination_port_range                     = "*"
              - destination_port_ranges                    = []
              - direction                                  = "Inbound"
              - name                                       = "deny"
              - priority                                   = 4096
              - protocol                                   = "*"
              - source_address_prefix                      = "*"
              - source_address_prefixes                    = []
              - source_application_security_group_ids      = []
              - source_port_range                          = "*"
              - source_port_ranges                         = []
            },
        ] -> null
      - tags                = {} -> null
    }

  # azurerm_public_ip.eve_public_ip will be destroyed
  - resource "azurerm_public_ip" "eve_public_ip" {
      - allocation_method       = "Static" -> null
      - domain_name_label       = "eve" -> null
      - fqdn                    = "eve.westeurope.cloudapp.azure.com" -> null
      - id                      = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/publicIPAddresses/eve-public-ip" -> null
      - idle_timeout_in_minutes = 4 -> null
      - ip_address              = "52.166.182.10" -> null
      - ip_version              = "IPv4" -> null
      - location                = "westeurope" -> null
      - name                    = "eve-public-ip" -> null
      - resource_group_name     = "eve-ng" -> null
      - sku                     = "Basic" -> null
      - tags                    = {} -> null
      - zones                   = [] -> null
    }

  # azurerm_resource_group.eve_rg will be destroyed
  - resource "azurerm_resource_group" "eve_rg" {
      - id       = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng" -> null
      - location = "westeurope" -> null
      - name     = "eve-ng" -> null
      - tags     = {} -> null
    }

  # azurerm_subnet.eve_subnet will be destroyed
  - resource "azurerm_subnet" "eve_subnet" {
      - address_prefix                                 = "10.0.1.0/24" -> null
      - enforce_private_link_endpoint_network_policies = false -> null
      - enforce_private_link_service_network_policies  = false -> null
      - id                                             = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet" -> null
      - name                                           = "eve-subnet" -> null
      - resource_group_name                            = "eve-ng" -> null
      - service_endpoints                              = [] -> null
      - virtual_network_name                           = "eve-vnet" -> null
    }

  # azurerm_subnet_network_security_group_association.eve-nsga will be destroyed
  - resource "azurerm_subnet_network_security_group_association" "eve-nsga" {
      - id                        = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet" -> null
      - network_security_group_id = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group" -> null
      - subnet_id                 = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet" -> null
    }

  # azurerm_virtual_machine.eve_vm will be destroyed
  - resource "azurerm_virtual_machine" "eve_vm" {
      - delete_data_disks_on_termination = false -> null
      - delete_os_disk_on_termination    = false -> null
      - id                               = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/virtualMachines/eve-ng" -> null
      - location                         = "westeurope" -> null
      - name                             = "eve-ng" -> null
      - network_interface_ids            = [
          - "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkInterfaces/eve-nic",
        ] -> null
      - resource_group_name              = "eve-ng" -> null
      - tags                             = {} -> null
      - vm_size                          = "Standard_D1_v2" -> null
      - zones                            = [] -> null

      - os_profile {
          - admin_username = "eve" -> null
          - computer_name  = "eve-ng" -> null
        }

      - os_profile_linux_config {
          - disable_password_authentication = true -> null

          - ssh_keys {
              - key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9u69Su0+B8+RQ5GM3Hig2SDhRL60iYa13ENvIsIFNQn0XA9EuF/lQYBsX+pYbwHzzmxqdyNmPESP4KAHBt0K38XP6dyW5OW39MjCQYn5CWqz1xJfM9MFNqfohXL30OBhPDkCXmdtd+BkcCs9KlQ2emb4NS4SeKRZCzHeDFSwutkFHKVJADkO57G8sP1WkYGPU+hQ8G+MMA1xa4vTa3DQ8wGeDir6VcPrLXa0QTQM7GzaPvGFnjZrdELOu2YJru7NjK1aZ9CBkqIsB1y0aX7QrddEX+FbtNyvkydMWA0yTzpZ9y3zs2p4eH+MezQ1KnMO2B6+luYY4HN6Bk7Est/X/ jeroenbootjeroenboot@YWCMac076.local" -> null
              - path     = "/home/eve/.ssh/authorized_keys" -> null
            }
        }

      - storage_data_disk {
          - caching                   = "None" -> null
          - create_option             = "Attach" -> null
          - disk_size_gb              = 32 -> null
          - lun                       = 1 -> null
          - managed_disk_id           = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/disks/eve-storage" -> null
          - managed_disk_type         = "Standard_LRS" -> null
          - name                      = "eve-storage" -> null
          - write_accelerator_enabled = false -> null
        }

      - storage_image_reference {
          - offer     = "UbuntuServer" -> null
          - publisher = "Canonical" -> null
          - sku       = "16.04-LTS" -> null
          - version   = "latest" -> null
        }

      - storage_os_disk {
          - caching                   = "ReadWrite" -> null
          - create_option             = "FromImage" -> null
          - disk_size_gb              = 30 -> null
          - managed_disk_id           = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/EVE-NG/providers/Microsoft.Compute/disks/eve-os" -> null
          - managed_disk_type         = "Standard_LRS" -> null
          - name                      = "eve-os" -> null
          - os_type                   = "Linux" -> null
          - write_accelerator_enabled = false -> null
        }
    }

  # azurerm_virtual_network.eve_vnet will be destroyed
  - resource "azurerm_virtual_network" "eve_vnet" {
      - address_space       = [
          - "10.0.0.0/23",
        ] -> null
      - dns_servers         = [] -> null
      - id                  = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet" -> null
      - location            = "westeurope" -> null
      - name                = "eve-vnet" -> null
      - resource_group_name = "eve-ng" -> null
      - tags                = {} -> null

      - subnet {
          - address_prefix = "10.0.1.0/24" -> null
          - id             = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet" -> null
          - name           = "eve-subnet" -> null
          - security_group = "/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group" -> null
        }
    }

Plan: 0 to add, 0 to change, 9 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

azurerm_subnet_network_security_group_association.eve-nsga: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_virtual_machine.eve_vm: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/virtualMachines/eve-ng]
azurerm_subnet_network_security_group_association.eve-nsga: Destruction complete after 2s
azurerm_network_security_group.eve_nsg: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkSecurityGroups/eve-network-security-group]
azurerm_network_security_group.eve_nsg: Destruction complete after 2s
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 10s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 20s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 30s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 40s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 50s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 1m0s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 1m10s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 1m20s elapsed]
azurerm_virtual_machine.eve_vm: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...crosoft.Compute/virtualMachines/eve-ng, 1m30s elapsed]
azurerm_virtual_machine.eve_vm: Destruction complete after 1m33s
azurerm_managed_disk.eve_storage: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Compute/disks/eve-storage]
azurerm_network_interface.eve_nic: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/networkInterfaces/eve-nic]
azurerm_managed_disk.eve_storage: Destruction complete after 2s
azurerm_network_interface.eve_nic: Destruction complete after 2s
azurerm_subnet.eve_subnet: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet/subnets/eve-subnet]
azurerm_public_ip.eve_public_ip: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/publicIPAddresses/eve-public-ip]
azurerm_subnet.eve_subnet: Destruction complete after 1s
azurerm_virtual_network.eve_vnet: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng/providers/Microsoft.Network/virtualNetworks/eve-vnet]
azurerm_virtual_network.eve_vnet: Destruction complete after 6s
azurerm_public_ip.eve_public_ip: Still destroying... [id=/subscriptions/ea98c2e6-c105-4ca2-b7ba-...etwork/publicIPAddresses/eve-public-ip, 10s elapsed]
azurerm_public_ip.eve_public_ip: Destruction complete after 12s
azurerm_resource_group.eve_rg: Destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 10s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 20s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 30s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 40s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 50s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m0s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m10s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m20s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m30s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m40s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 1m50s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m0s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m10s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m20s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m30s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m40s elapsed]
azurerm_resource_group.eve_rg: Still destroying... [id=/subscriptions/xxxxxxxxx-xxxxxxxxx-xxxxxxxxx/resourceGroups/eve-ng, 2m50s elapsed]
azurerm_resource_group.eve_rg: Destruction complete after 2m54s

Destroy complete! Resources: 9 destroyed.
make destroy  3.86s user 0.97s system 1% cpu 5:00.15 total
jeroenboot@YWCMac076 eve-ng-azure % 
```