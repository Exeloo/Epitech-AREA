---
outline: deep

prev:
  text: Home
  link: '/'

next:
  text: API
  link: '/api'
---

# Aether tutorial

## Application platforms

| ![PC Icon](images/pc.svg)                                                                     | ![Mobile Icon](images/mobile.svg)                                                                                                              |
|-----------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Access the web application here: [Click here to access the webapp](https://aether-area.fr/).  | Download the mobile app here: [Download the mobile app](https://aether-area.fr/client.apk). Once downloaded, click on the file to install it.  |

## Log in

### **There are 3 ways to connect to Aether:**
- **Sign up**: For your first connection.
- **Log in**: If you have already signed up.
- **Google account**: Use your Google account to connect.

| ![PC Icon](images/pc.svg)                                                        | ![Mobile Icon](images/mobile.svg)                                                  |
|----------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| <div align="center"><img src="./image/signup_web.png" alt="Sign Up"/></div>      | <div align="center"><img src="./image/signup_mobile.png" alt="Sign Up"/></div>     |
| <div align="center"><img src="./image/login_web.png" alt="Log In"/></div>        | <div align="center"><img src="./image/login_mobile.png" alt="Log In"/></div>       |
| <div align="center"><img src="./image/google_sign_web.png" alt="Google"/></div>  | <div align="center"><img src="./image/google_sign_mobile.png" alt="Google"/></div> |


## Applets

This is the first page you will see when you **log in**.

It contains all the applets you have created or will create with your account.  
You can interact with the applets by clicking on them to view their details, including triggers and actions.

On **mobile**, if you don't have any applets, you will see a button that allows you to directly create an applet.

![Button to Create Applet](image/button_create_applet_mobile.png)

---

| ![PC Icon](images/pc.svg)                                                                               | ![Mobile Icon](images/mobile.svg)                                                                         |
|---------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| <div align="center"><img src="./image/applets_web.png" alt="Applet"/><br/>Applets page</div>            | <div align="center"><img src="./image/applets_mobile.png" alt="Applet"/><br/>Applets page</div>           |
| <div align="center"><img src="./image/details_applet_web.png" alt="Details"/><br/>Details applet</div>  | <div align="center"><img src="./image/details_applet_mobile.png" alt="Details"/><br/>Details applet</div> |

## Providers

This page contains all the services that can be used on Aether.

### Available Services

Aether supports **14 services**, listed below:
- **Discord**
- **Twitch**
- **Google**
- **GitHub**
- **Microsoft**
- **LinkedIn**
- **VisualCrossing**
- **Tracker.gg** (Currently unavailable)
- **Riot**
- **Christmas**
- **Bluesky**
- **Patreon**
- **Cron**
- **ImpactCO2**

Clicking on a service allows you to explore all the triggers and actions that can be performed with it.

---

| ![PC Icon](images/pc.svg)                                                                                  | ![Mobile Icon](images/mobile.svg)                                                                            |
|------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| <div align="center"><img src="./image/providers_web.png" alt="Provider"/><br/>Services page</div>          | <div align="center"><img src="./image/providers_mobile.png" alt="Provider"/><br/>Services page</div>         |
| <div align="center"><img src="./image/details_provider_web.png" alt="Details"/><br/>Details service</div>  | <div align="center"><img src="./image/details_provider_mobile.png" alt="Details"/><br/>Details service</div> |


## Applet Creation

Here is a typical path for creating an applet on Aether:

To access the applet creation page, simply click on this button:
<div align="center">
  <img src="./images/button_create_applet.png" alt="Create Applet" />
</div>

You're now on the applet creation page, divided into two parts: **Triggers** and **Actions**.

- At the top, **"If This"** represents the condition that will activate the lower part, **"Then"**, which corresponds to the **Actions** executed if the condition is validated.
- By pressing both buttons, you can choose from the various services mentioned earlier in this tutorial and utilize their associated **Triggers** and **Actions**.
- You'll need to provide the necessary information requested in the parameter fields for each Action or Trigger.  
  For example, for Discord, you might need to input the ID of a channel to detect when a message is created in that channel.

### Ingredients Feature
Actions allow you to use **ingredients**, which are pieces of information available from the trigger and actions previously used during your applet creation.

#### Example:
Suppose your trigger is related to a Discord message. You can use the message creator's name in your action with a syntax like this:  
`$[0]{author.username}`
- `0`: Corresponds to the applet index (0 for the trigger, 1 for the first action, 2 for the second action, etc.).
- `author.username`: Represents a piece of information available from the trigger.

Finally, give your applet a **name** and a **description**. Congratulations, you have successfully created your applet, and it is now functional!

---

| ![PC Icon](images/pc.svg)                                                                                                       | ![Mobile Icon](images/mobile.svg)                                                                                                  |
|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| <div align="center"><img src="./image/creation_page_applet_web.png" alt="Applet Creation Page"/><br/>Applet creation page</div> | <div align="center"><img src="./image/creation_page_applet_mobile.png" alt="Applet Creation Page"/><br/>Applet creation page</div> |
| <div align="center"><img src="./image/provider_selection_web.png" alt="Provider Selection"/><br/>Provider selection</div>       | <div align="center"><img src="./image/provider_selection_mobile.png" alt="Provider Selection"/><br/>Provider selection</div>       |
| <div align="center"><img src="./image/trigger_selection_web.png" alt="Trigger Selection"/><br/>Trigger selection</div>          | <div align="center"><img src="./image/trigger_selection_mobile.png" alt="Trigger Selection"/><br/>Trigger selection</div>          |
| <div align="center"><img src="./image/action_selection_web.png" alt="Action Selection"/><br/>Action selection</div>             | <div align="center"><img src="./image/action_selection_mobile.png" alt="Action Selection"/><br/>Action selection</div>             |
| <div align="center"><img src="./image/result_applet_web.png" alt="Result Applet"/><br/>Result applet</div>                      | <div align="center"><img src="./image/result_applet_mobile.png" alt="Result Applet"/><br/>Result applet</div>                      |