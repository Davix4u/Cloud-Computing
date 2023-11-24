# MULTI-FACTOR AUTHENTICATION ON LINUX

In the World of IT and security! Today, we're going to talk about a cool and crucial concept: MFA Authentication on a Linux machine. Imagine it as your computer's security layers just like the network layers you know

So, first things first, let's break it down. MFA stands for Multi-Factor Authentication. It's like having not one, not two, but THREE secret handshakes to protect your digital fortress. It is a basic security skill

## IMPORTANT OF MFA ON A LINUX MACHINE

MFA of AUTHENTICATION on a Linux Machine.  and for this to take effect,  one of the most important tools you will need is your mobile phone. Yes, your mobile device. You won't be using it just for calls, Snapchat, or taking selfies anymore but it serves as one of the authentication methods (The GOOGLE AUTHENTICATION APP), Password, and RSA.  With this in practice, it will be a little bit difficult to get access to your OS without you.  You can give it a try,  but I will take you through the steps.

# STEPS TO ACTIVATE MFA

### Implement the Google Authentication module
First, install the Google Authentication module on a Linux machine. To do so, open a Terminal window and run the following command:

$ sudo dnf install google-authenticator -y
Next, configure google-authenticator to generate OTP codes. Run the following command to begin the configuration process:

sudo google-authenticator
This tool asks a series of questions. For most of these questions, answer yes (y), unless you need something other than the default.

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/6e90291a-552f-478e-84c8-449bb706f92a)

## Edit a couple of SSH configuration files to ask for an OTP code as a second-factor authentication.

Using your favorite text editor, open /etc/pam.d/sshd for editing
 sudo nano /etc/pam.d/sshd
Add the following lines of configuration: @include common-session at the end of the file
auth required pam_google_authenticator.so 

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/83b5a742-812c-45b7-a233-3a3d2e2925ab)


Edit your SSH Configuration file
sudo nano /etc/ssh/sshd_config
scroll down and enable this #ChallenegResponseAuthentication =Yes

### To be asked for password ,ssh key pair and OTP
edit sudo nano /etc/pam.d/sshd
uncomment (auth substack password-auth)

next open sudo nano /etc/ssh/sshd_config
edit Authentication Method. Publickey, Password , Keyboard-interactive

Restart ssh = sudo systemctl restart sshd

### Final Result
![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/50aad7ee-0e8e-4837-8ba2-b046b67387f8)

This can work on a Cloud Linux machine and Premises , it was deployed on cloud

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/72f6f5ea-c366-4ce6-942d-08717f6703f2)


### MFA ON CONSOLE
Edit sudo nano /etc/pam,d/common-session
at the end of the file add this "auth required pam-google-authenticator.so"

![image](https://github.com/Davix4u/Cloud-Computing/assets/130823585/5c67536b-ac47-4e95-90ac-2e8bdb7db1d6)


**bold text**

### MFA for Sudo Authentication
Edt sudo  /etc/pam.d/common-auth
add to the end of the file  auth required pam_google_authentication

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

![i


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

This is a `test` please don't come for `me`
