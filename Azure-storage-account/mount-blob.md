# Azure storage account
Azure storage offers a massively scalable object store for data objects, a file system service for the cloud, a messaging store for reliable messages, and an SQL database 

Azure storage is durable, secure, scalable, Managed, and accessible
### Type of storage account
1. Blob storage
2. Files share
3. Table
4. Queue

## Blob Storage

Again it is highly scalable for text and binary, which means any kind of file that can be put there has so many scenarios
1. Serving images or documents directly to a browser
2. storing files for distributed access
3. streaming videos and audio
4. recovery data for backup and restore disaster recovery
5. Helps to host websites

Blob storage is separated into something called containers, Containers are partitioned for a drive, they are entry points for data. Blob storage is based on usage which are 

1. Hot: This is for frequent/regular access to the object and the more cost you secure
2. Cold: This is for storing large amounts of data, which requires a minimum of 30 days to be granted access and you pay 
         a small fee to access it
3. Archive: You don't get to access this for the next 180days, they re cheap for larger data

### DEMO and steps

1. Create a Resource Group
2. Create a Storage account, select storagev2 for Accountkind

3. Create a Blob Storage
<img width="923" alt="azure-blob=storage" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/30165370-2513-46b8-bedc-97647bafbe0b">

*Note* 
**Private** means no anonymous Access. any client can't access it, through the URL because it is on a private
They need to provide an access key or share an access key for authentication

Blob or Container: This means it can be accessed on the URL no authentication is needed

4. upload your file
   <img width="935" alt="azure-blob-upload" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/1bb182bc-2c1a-4c26-bea3-7af299488bc4">

   <img width="957" alt="Screenshot 2023-11-23 155126" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/5b7a706b-7cf7-425e-ab47-554d3e249e19">

5. Click property and copy the URL of the file
   <img width="960" alt="Screenshot 2023-11-23 155235" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/2d81c70c-f43b-43e2-bc1b-17d4a608751c">

It will not show because it is on the Private 

<img width="960" alt="azure-blob-url-private" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/9bbf33d6-1e6a-4f42-bf40-7628df672c8e">

6. Create a new container and put it on public
   <img width="954" alt="Screenshot 2023-11-23 160535" src="https://github.com/Davix4u/Cloud-Computing/assets/130823585/29d3d9a0-ec5a-426a-82cb-dec8287ddec9">







   








### Heading

# H1
## H2
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

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/f0979b55-46f7-427f-a3d8-0aa879a633cb)


![alt text](https://www.markdownguide.org/assets/images/tux.png)

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
- [ ] Contact the media

### Emoji

That is so funny! :joy:

(See also [Copying and Pasting Emoji](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji))

### Highlight

I need to highlight these ==very important words==.

### Subscript

H~2~O

### Superscript

X^2^
