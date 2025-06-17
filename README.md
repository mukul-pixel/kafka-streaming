# 📡 Realtime Data Streaming Pipeline
---
## Introduction

This project serves as a comprehensive guide to building an end-to-end data engineering pipeline. 
It covers each stage from data ingestion to processing and finally to storage, utilizing a robust tech 
stack that includes Apache Airflow, Python, Apache Kafka, Apache Zookeeper, Apache Spark, and Cassandra. 
Everything is containerized using Docker for ease of deployment and scalability.

---

## 🏗️ System Architecture

![Data Engineering Architecture](https://github.com/user-attachments/assets/d8f7719c-10e6-4d1a-b35a-aad5db02406d)

---

## 🔧 Components

### 1. **Data Source**
- Uses the [`randomuser.me`](https://randomuser.me/) API to simulate real-time user data.

### 2. **Apache Airflow**
- Orchestrates the ETL pipeline.
- Ingests data from the API and stores it into a **PostgreSQL** staging database.

### 3. **Apache Kafka & Zookeeper**
- Streams data from PostgreSQL to the processing engine.
- **Zookeeper** manages the distributed nature of Kafka.

### 4. **Kafka Schema Registry & Control Center**
- Maintains schemas using Avro and manages Kafka topics.
- Offers real-time monitoring of stream activity.

### 5. **Apache Spark**
- Processes streamed data using its distributed architecture.
- Runs in a master-worker configuration for parallel processing.

### 6. **Cassandra**
- Stores the final, processed data optimized for fast reads in a NoSQL format.

---

## 🧰 Tech Stack

| Tool           | Role                             |
|----------------|----------------------------------|
| **Apache Airflow** | Pipeline orchestration          |
| **Python**         | Scripting & API integration     |
| **Apache Kafka**   | Real-time data streaming        |
| **Apache Zookeeper** | Kafka coordination          |
| **Apache Spark**   | Distributed data processing     |
| **Cassandra**      | Scalable NoSQL data storage     |
| **PostgreSQL**     | Staging layer for raw data      |
| **Docker**         | Containerization of all services |

---
