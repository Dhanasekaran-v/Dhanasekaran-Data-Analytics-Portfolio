# 1.🧠 Customer Churn Prediction Model Using Machine Learning

## 📌 Project Overview

This project develops an end-to-end Customer Churn Prediction system to identify customers likely to leave a subscription-based service. 

The workflow integrates:
- Data preprocessing
- Exploratory Data Analysis (EDA)
- Supervised Machine Learning models
- Hyperparameter tuning
- Customer segmentation using K-Means clustering

The goal is to help businesses proactively retain high-value customers.

---

## 🎯 Objectives

- Predict customer churn using ML algorithms
- Analyze churn patterns
- Segment customers using clustering
- Generate actionable business insights

---

## 🛠️ Technologies Used

- Python
- Pandas & NumPy
- Matplotlib & Seaborn
- Scikit-learn
- K-Means Clustering

---

## 🔎 Project Workflow

### 1️⃣ Data Loading
Customer dataset loaded using pandas for structured analysis.

### 2️⃣ Exploratory Data Analysis
- Statistical summary
- Missing value detection
- Churn class distribution analysis
- Feature relationship visualization

### 3️⃣ Data Cleaning & Preprocessing
- Handling missing values
- Encoding categorical variables
- Feature scaling
- Train-test split (80/20)

### 4️⃣ Model Training
Baseline models tested:
- Logistic Regression
- Decision Tree
- Random Forest
- Gradient Boosting

Evaluation Metrics:
- Accuracy
- Precision
- Recall
- F1-score
- ROC-AUC

### 5️⃣ Hyperparameter Tuning
Used GridSearchCV for optimizing model performance.

### 6️⃣ Customer Segmentation (K-Means)
- Applied Elbow Method for optimal cluster selection
- Segmented customers based on behavioral patterns
- Compared churn rates per cluster

---

## 📊 Key Insights

- Certain customer segments show significantly higher churn probability.
- Class imbalance observed in churn distribution.
- Behavioral features strongly influence churn likelihood.
- Clustering helps identify high-risk customer groups.

---

## 💼 Business Impact

This model enables businesses to:
- Identify high-risk customers
- Launch targeted retention campaigns
- Improve customer lifetime value
- Reduce revenue loss

---

## 🚀 Future Improvements

- Deploy as a real-time prediction API
- Integrate with CRM systems
- Use deep learning models for enhanced performance
  

# 2.🚦 Road Sign Classification Using CNN

## 📌 Project Overview

This project builds a Road Sign Classification system using Convolutional Neural Networks (CNN) to classify traffic sign images into 43 categories.

The system includes:
- Data preprocessing
- Image augmentation
- CNN model training
- Model evaluation
- Streamlit-based user interface

It is designed to support intelligent transportation systems and autonomous driving applications.

---

## 🎯 Objectives

- Classify road signs into 43 categories
- Achieve high test accuracy
- Build a complete deep learning pipeline
- Deploy a user-friendly prediction interface

---

## 📊 Dataset Details

- 43 road sign classes
- 33,337 training images
- 5,872 validation images
- 12,630 test images

Images varied in lighting, size, and orientation.

---

## 🛠️ Technologies Used

- Python
- TensorFlow / Keras
- NumPy
- Matplotlib
- ImageDataGenerator
- Streamlit

---

## 🔎 Project Workflow

### 1️⃣ Data Preprocessing
- Resized images to 64×64
- Normalized pixel values (0–1)
- Corrected test image paths
- One-hot encoded labels

### 2️⃣ Data Augmentation
Applied:
- Rotation
- Zoom
- Width & height shift
- Shear transformation
- Horizontal flipping

Improved model generalization and reduced overfitting.

### 3️⃣ CNN Architecture

- 3 Convolutional Blocks:
  Conv2D → BatchNormalization → MaxPooling
- Flatten Layer
- Dense Layer (256 units) with Dropout
- Output Layer (Softmax – 43 classes)

Total Parameters: ~1.28M

---

## ⚙️ Model Training

- Optimizer: Adam
- Loss: Categorical Crossentropy
- Metric: Accuracy
- Trained for 15 epochs

Training & validation accuracy showed strong convergence.

---

## 📈 Model Performance

- ~96% test accuracy
- High precision & recall across classes
- Confusion matrix used for detailed evaluation

The model demonstrated strong generalization capability.

---

## 🖥️ Streamlit Deployment

Built an interactive web app with features:

- Upload road sign image
- Display prediction result
- Show confidence score
- Display probability distribution chart

The system is ready for real-world demonstration and deployment.

---

## 🚀 Future Enhancements

- Add class name labels instead of numeric output
- Deploy app to cloud platform
- Implement real-time webcam detection
- Use Transfer Learning (ResNet / MobileNet)
