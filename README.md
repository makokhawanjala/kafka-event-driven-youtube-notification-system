
# Kafka Event-Driven YouTube Notification System
This project implements a real-time event notification system that monitors specific YouTube videos for changes (likes, views, comments) and sends alerts to a user via Telegram. The system uses Python for data collection and Apache Kafka for streaming and processing events.
---
# YouTube Watcher Project Setup

---

## Step 1: Setting Up Your Working Environment

---

### 1. Create a Project Directory
Open your terminal and run:
```bash
mkdir youtube_watcher_project
cd youtube_watcher_project
```
---

### 2. Set Up a Python Virtual Environment (ensure you have Python 3.8.10):
Install virtualenv if it’s not installed, Create a new virtual environment and Activate the virtual environment
```bash
pip install virtualenv 
virtualenv venv 
source venv/bin/activate
```
---

### 3. Install Necessary Packages:
```bash
pip install -r requirements.txt
```
---

### 4. Execute the Python Script
Run the Python Script. Execute the youtube_watcher.py script:
```bash
python youtube_watcher.py
```
---

### 4. Interacting with External Services

---

#### Login to Confluent Cloud

1. Open your web browser.
2. Go to [https://login.confluent.io/](https://login.confluent.io/).
3. Sign in with your Confluent credentials.


---

#### Like a YouTube Video

1. Go to the specified YouTube playlist:  
   [YouTube Playlist](https://www.youtube.com/watch?v=6LsvrlqLI1g&list=PLr3-bEi1N4khKZm2u6Q8pOLO-WNZrKDHn&index=8)

2. Like any video in the playlist to trigger a tracking event.

---

#### Check Telegram for Updates

1. Open the Telegram app or website.
2. Navigate to the bot link:  
   [https://t.me/Youtube_Event_Notification_bot](https://t.me/Youtube_Event_Notification_bot)
3. Check if a notification has been sent based on the video you liked.

---

For the full project deliverables, setup support, or custom modifications, feel free to reach out:

- **WhatsApp:** +254740231657  
- **Email:** amosmakokha084@gmail.com

