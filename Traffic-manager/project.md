# Azure Traffic Manager Services

Azure Traffic Manager is a DNA based Load Balancer, used to distribute traffic optimally to service while providing availability, and responsiveness

### How it Works ?
Traffic manager register endpoints. Endpoint is any internet-facing services hosted inside or outside azure

Traffic Manager User DNS to direct traffic to the endpoint based on .Traffic routing methods and Health of the endpoint 

## Routing Methods
PERFORMANCE: designed for endpoint in different geographical locations and you want end users to use the **closet** endpoint in terms of lowest network latency
WEIGTHED: Designed to distribute services across a set of endpoints, either evenly, or according to weight, which you defined
GEOGRAPHICAL: Designed to route users based on geographic location their **DNS** query originate from
PRIORITY: Designed to route users traffic based on pirority based. to the highest piriority server, if it is healthy and when not healthy its moves to the second
Multvalue: based on getting multiple endpoints in a single DNS query response

### Traffic Manager Additionally provide
1. Endpoint Monitoring
2. Azure inetegrated endpoints
3. Nested endpoints
4. Traffic View
5. Real user measurement
6. Metrics and Alert

### Architecture of Demo

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/648dea77-3555-4c79-93de-bb9a9107e034)

### Demo Steps
Steps A
1. Create an 2 App Service in different region
2. Create a Resource group
3. create to two vm

 ![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/4ba863c1-61c9-482a-87e0-10e10c10322a)
  

Step B
visit the default domain of the App Service , you should get a default page of this 

   ![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/38958a3a-878f-4f33-8bb0-d7f8e22fdcd9)

change default page
edit the website with kudu (microsoft kudus) eg.demo-web-eastus2.scm.azurewebsites.net
select debug and go to the powershell
click site ,then click www.root
copy and paste the **html file* and click save next

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/bbc5cde3-95be-4297-9e8f-ee275c7e1986)

Steps 3
create a traffic Manger at a new resource group (Provide a name and intiate traffic method

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/5008e853-d1a8-44eb-9adc-42e31476de66)

Configuration of Traffic Manager
1. Select your endpoint ( Azure endpoitn , external endpoint nested point) i choose azure 
2. type of service (choose app service)
3. target result (pick from existing app service)
4. Add endpoint for the second appservies

Testing
Connect to the VM that was jsut created with Remote Desktop Connection Manager 
Copy and paste the Url from the traffic manager inside the Vm running 

prove
![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/265cb3e3-315b-47a0-a611-7caeb5a32793)
















## 


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

### Lin

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
- [ ] Contact the media

### Emoji

That is so funny! :joy:



### Highlight

I need to highlight these ==very important words==.

### Subscript

H~2~O

### Superscript

X^2^
cg
