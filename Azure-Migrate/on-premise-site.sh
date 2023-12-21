# install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools

# Create simple HTML website #

echo '<!doctype html>
<html>
   <head>
      <title>Cloud Genius E-commerce Website</title>
   </head>
   <body>
      <h1>Hello! Welcome to Cloud Genius</h1>
      <p>We provide cloud training courses to help you learn and master the latest cloud technologies.</p>
      <h2>Featured Courses:</h2>
      <ul>
         <li>Introduction to Expert Level Azure, AWS , GCP Cloud Computing</li>
         <li>Cloud Infrastructure and Services</li>
         <li>DEVOPS</li>
         <li>Cloud Security and Compliance</li>
      </ul>
      <p>Sign up for our courses and take the first step towards building your cloud expertise today!</p>
   </body>
</html>' > C:\inetpub\wwwroot\index.html
