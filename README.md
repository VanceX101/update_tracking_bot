# Amazon Tracking Automation for Fado & GiaoNhan247

## Project Overview

This project is designed to automate the process of extracting tracking information from Amazon orders and updating it across the internal platforms of **Fado** and **GiaoNhan247**. The system integrates multiple technologies to ensure reliable and efficient tracking data management, using AI-driven browsers and workflow automation tools.

## Technologies Stack Used

- **AI Browser**: Automates the extraction of tracking information from Amazon, simulating user actions like logging into accounts and navigating through emails or order pages to gather the required tracking data.
  
- **n8n**: Workflow automation platform used to orchestrate tasks like retrieving emails, extracting data, updating internal platforms, and scheduling regular updates.

- **Git**: Version control for managing the project code, scripts, and configurations, ensuring smooth collaboration and easy updates.

## System Workflow

1. **Order Tracking Retrieval**:
   - The AI Browser automates login to Amazon accounts, navigates to the "Orders" page, and extracts tracking numbers from the relevant shipments.

2. **n8n Workflow**:
   - The extracted tracking data is processed and passed through a series of workflows in n8n.
   - n8n handles API calls and automation to update the internal databases of **Fado** and **GiaoNhan247** with the latest tracking numbers.
   - The system also schedules regular checks and updates to ensure timely tracking information is delivered.

3. **Platform Integration**:
   - The tracking data is automatically updated in real-time across Fado's e-commerce platform and GiaoNhan247's logistics tracking system.

## Key Features

- **Automation**: No manual intervention is needed for tracking updates.
- **Real-time Updates**: Tracking information is synced in real-time between Amazon, Fado, and GiaoNhan247.
- **Scalability**: The system can handle multiple Amazon accounts and orders simultaneously.
- **Error Handling**: Integrated error-handling mechanisms to ensure data integrity during the update process.

## Installation and Setup

### Prerequisites

- **n8n**: Install n8n from the [official websit](https://n8n.io/) or via Docker.
- **AI Browser**: Ensure the AI Browser automation scripts are correctly set up to log into Amazon and extract tracking information power by Conductify 

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/amazon-tracking-bot.git
   cd amazon-tracking-automation
2. Configure the Amazon login credentials and API keys for Fado and GiaoNhan247.

3. Set up the n8n workflows as per the configuration files in the /workflows directory.

4. Run the n8n instance:
   ```bash
   n8n start

5. Set up the AI Browser to run on a schedule or trigger it based on order status updates.

## Project Structure

```bash
amazon-tracking-automation/
├── README.md
├── ai-browser-scripts/
│   └── amazon-tracking.js
├── workflows/
│   ├── fado-tracking-update.json
│   └── giaonhan247-tracking-update.json
└── config/
    └── credentials.json

Project Owner: Vance Nguyen
Email: vance.nguyen@example.com
