# Azure Storage Account ( NFS)

## Project Name: CloudFlex Storage Integration

The CloudFlex Storage Integration project focuses on optimizing storage utilization within the Azure environment. By creating a Windows Virtual Machine (VM) and establishing a dedicated Storage account named "cloudgenius," the project aims to enhance efficiency and flexibility in data management.

This initiative involves mapping the Azure file share to the Windows VM, strategically leveraging cloud-based storage resources. The resulting solution, aptly named CloudFlex, showcases a forward-thinking approach to storage architecture, minimizing reliance on local storage and maximizing the benefits of Azure's robust file-sharing capabilities.

This can be accessed, only when the premium version of SMB is chosen on Azure. You would be allowed to mount NFS

###  Network file system
Network file system If you work with computers and store data, you might come across the meaning of NFS. A network file system is a digital folder hosted on a single network where all the people on the network store and share files.

## 
## Architecture of the Project

<img width="608" alt="Screenshot 2023-11-25 231826" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/a07eb872-d0b6-47f8-aa8e-40cf7446407b">

## Mount of NFS 
Either create a private endpoint (recommended) or restrict access to your public endpoint

To enable hybrid access to an NFS Azure file share, use one of the following networking solutions:

1. Configure a Point-to-Site (P2S) VPN on Linux for use with Azure Files.
2. Configure a Site-to-Site VPN for use with Azure Files.
3. Configure ExpressRoute

### Step A
1. Create a Resource Group
2. Create a Storage account 
3. Create a File storage and Choose a **premium** not standard or basic 
4. Select NFS

 images

1. <img width="955" alt="azure-nfs-demo" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/63fb3ee0-779f-4dad-a365-4a9a900c0318">


2. <img width="946" alt="demo-nfs2" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/aeca0f9c-cab4-4a52-8a40-7bdb8c9959d4">

### STEP B
1. Create a Linux Virtual Machine, and put it on the same Virtual Network and same Resource Group because i will be using a private endpoint
2. Select Configuration.
3. Select Disabled for Secure transfer required.
4. Select Save.

<img width="882" alt="Screenshot 2023-11-25 211229" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/40225110-653e-49a5-a43e-248841ba8134">

### steps 
1. Connect from your Linux Machines
2. Connect to your client and use the provided mounting script.

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/1b1829e3-82a8-46b5-84e6-0632c058485f)

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/ba368843-9ac1-4fe2-ac43-601526fb87c4)

### Automatically  Mount Of The NFS
If you want the NFS file share to automatically mount every time the Linux server or VM boots, create a record in the /etc/fstab file for your Azure file share. Replace YourStorageAccountName and FileShareName with your information.

You can run this **BASH** script
Bash
<YourStorageAccountName>.file.core.windows.net:/<YourStorageAccountName>/<FileShareName> /media/<YourStorageAccountName>/<FileShareName> nfs vers=4,minorversion=1,sec=sys 0 0

e.g 
<nfs-demo>.file.core.windows.net:/<nfs-demo>/<demonfs> /media/<nfs-demo>/<demonfs> nfs vers=4,minorversion=1,sec=sys 0 0








 




   

### H3

### Bold

**bold text**

### Italic

*italicized text*

### Blockquote

> blockquote

### Ordered List

1. First item
2. Second item
3. Third item

### Unordered List

- First item
- Second item
- Third item

### Code

`code`

### Horizontal Rule

---

### Link


### Image






## Extended Syntax

These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

### Table

| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |

### Fenced Code Block

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

### Footnote

