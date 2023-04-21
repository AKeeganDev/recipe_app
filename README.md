# README

# 📖 Recipe App
> This web app is designed to be a public use application that holds recipes for various users. Once a user creates an account using the signup link on the login screen, they can add recipes and even attach a photo to it. This app is hosted on a free-use version of Render's hosting service which wipes the database every 3 months. If the page appears blank then that is likely why. Sign in and post your favorite recipe!

# 🛠 Built With
- Ruby on Rails
- Devise
- Shrine
- Minimagik
- Cloudinary (in place of AWS)
- Render
- Actionmailer (synced to GMAIL)

# 🚀 Live Demo
https://recipe-app-public.onrender.com/

# 💻 Getting Started
To get a local copy up and running, follow these steps:
- Clone the repo using this url https://github.com/AKeeganDev/recipe_app.git
- Open in your favorite code editor and run $bundle install
- You may need to make a secret key for the database to work. Run $rails credentials:edit to generate a master.key and credentials.yml.enc files
- You will need to create a free account on https://cloudinary.com/ and create a gmail account
- To sync the app to your Cloudinary account then register for an account on their site and grab your cloud keys from your dashboard
- If you want the Actionmailer to send emails through gmail (for the devise gem to send the account confirmation link) then you will need to set an app password
 - Instructions here: https://support.google.com/mail/answer/185833?hl=en
- You will need to create a local_env.yml file to hold local environment variables for the application in order for it to run
  - In that file create the variables SECRET_CODE, CLOUD_NAME, CLOUD_KEY, CLOUD_SECRET, SENDMAIL_USERNAME, SENDMAIL_PASSWORD, MAIL_HOST
  - Set those variables to strings. The code can be anything you want (it is used to have a user request admin status on the application)
  - Set the CLOUD_NAME, CLOUD_KEY, and CLOUD_SECRET variables to the codes set in your Cloudinary account
  - Set the SENDMAIL_USERNAME and SENDMAIL_PASSWORD variables to the app keys set by your gmail account
  - Set the MAIL_HOST to whatever service you're running your app on. If you're running it locally then you can use 'localhost:3000'
- Create the database using $rails db:create, $rails db:migrate
- Lastly run the server using $rails s and have fun!

# Prerequisites
In order to run this project you need:
Rails 7.0.4.2

# 👥 Authors

👤 Author1

- GitHub: @https://github.com/AKeeganDev
- LinkedIn: https://www.linkedin.com/in/akeegandev/

👤 Author2

- GitHub: @https://github.com/emyrue
- LinkedIn: https://www.linkedin.com/in/emilyruthrobertson/

# 🤝 Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the issues page.

# ⭐️ Show your support
If you like this project please consider adding recommendations to the issue page. For all questions regarding the application and how we constructed it please contact us or submit an issue on the repository page.

# 🙏 Acknowledgments
I would like to thank my mother, who doesn't write down her recipes. This is to store all of those delicious meals!

# 📝 License
This project is MIT licensed.
