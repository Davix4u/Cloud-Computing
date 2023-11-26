# Azure Storage Account (SMB)

Azure Files provides fully managed cloud file shares accessible through the industry-standard Server Message Block (SMB) protocol, Network File System (NFS) protocol, and Azure Files REST API. These file shares can be mounted simultaneously in the cloud or on-premises. SMB shares work on Windows, Linux, and macOS, while NFS shares are accessible from Linux clients. Moreover, SMB shares can be cached on Windows servers using Azure File Sync, ensuring fast access to data where it's needed.


## Project Name: CloudFlex Storage Integration

The CloudFlex Storage Integration project focuses on optimizing storage utilization within the Azure environment. By creating a Windows Virtual Machine (VM) and establishing a dedicated Storage account named "cloud genius," the project aims to enhance efficiency and flexibility in data management.

This initiative involves mapping the Azure file share to the Windows VM, strategically leveraging cloud-based storage resources. The resulting solution, aptly named CloudFlex, showcases a forward-thinking approach to storage architecture, minimizing reliance on local storage and maximizing the benefits of Azure's robust file-sharing capabilities

## Architecture Diagram
![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/a132789b-dfd5-4639-8213-c2428b4f6d4f)

## Mounting on windows machine
 
1. Create a Storage account on Azure

<img width="782" alt="Screenshot 2023-11-13 173750" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/26f4bfb2-b1ce-42e5-88dc-f65213b08ffa">

2. create a file share (smbtest)

<img width="748" alt="Screenshot 2023-11-13 163627" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/d143dd25-e931-4656-a78a-54e197a17ebb">

3.Upload your file inside the fileshare (smbtest)

<img width="661" alt="Screenshot 2023-11-13 170136" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/54b0041e-24a1-414b-8531-b69d05aeac18">

### Step 2
1. create a WINDOWS VM and Mount the drive. The Virtual machine and VM must be on the same subnet 

<img width="753" alt="Screenshot 2023-11-13 163016" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/95101d5d-81cb-4313-8ff0-7ac44425eb2e">

2. connect the file share with the script from Azure for Windows . just copy it

  ![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/53f440ee-36b9-4927-837d-4f4dd3fd0fb9)


### step3
1. power on the virtual machine and Paste the script copied and run it on powershell

  ![power-smbt](https://github.com/Davix4u/Cloud-Computing/assets/130823585/21a00129-c0eb-4991-b1c3-39d204139197)

 2.  Go to the VM driver folder, You should see your storage

  ![smb-proof](https://github.com/Davix4u/Cloud-Computing/assets/130823585/de2295e5-5780-40ed-8b90-9407e04e3c93)

 3.  view the content in the folder

  ![smb-proof2](https://github.com/Davix4u/Cloud-Computing/assets/130823585/05095382-6473-46d1-9354-15c32d0d99ad)


## Mounting on a Linux machine
1. create a linux virtual machine on the same subnet
2. Connect the Storage with the Linux script provided by Azure. just copy
    <img width="542" alt="linux-stroage-smb" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/cfe84fa3-3bba-44b7-a179-3334bf642acf">
3. paste the Script
4. ls /mnt/smbtest/
   <img width="944" alt="linux-storage-mount2" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/54d78a43-ab66-4337-adb8-3329a1217ca6">

    


6. 
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

[Markdown Guide](https://www.markdownguide.org)

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

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

### Heading ID

### My Great Heading {#custom-id}

### Definition List

term
: definition

### Strikethrough

~~The world is flat.~~

### Task List

- [ ] Write the press release
- [ ] Update the website
- [ ] Contact the m
