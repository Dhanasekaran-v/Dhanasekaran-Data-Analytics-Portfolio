import streamlit as st
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing.image import load_img, img_to_array
import numpy as np
import matplotlib.pyplot as plt

# -----------------------------------------
# Load Model
# -----------------------------------------
MODEL_PATH = "roadsigns_cnn_model.h5"
model = load_model(MODEL_PATH)

st.set_page_config(page_title="Road Sign Classifier", layout="centered")
st.title("🚦 Road Sign Classification App")
st.write("Upload a road sign image to classify it using your trained CNN model.")

# -----------------------------------------
# File Uploader
# -----------------------------------------
uploaded_file = st.file_uploader("Upload an image...", type=["jpg", "jpeg", "png"])

if uploaded_file is not None:
    
    # Display uploaded image
    image = load_img(uploaded_file, target_size=(64, 64))
    st.image(image, caption="Uploaded Image", width=300)
    st.write("Image successfully uploaded and processed!")

    # Preprocess the image
    img_array = img_to_array(image) / 255.0
    img_array = np.expand_dims(img_array, axis=0)

    # Predict
    prediction = model.predict(img_array)
    predicted_class = np.argmax(prediction)
    confidence = np.max(prediction) * 100

    st.subheader("🔍 Prediction Result:")
    st.success(f"Predicted Class Number: {predicted_class}")
    st.info(f"Model Confidence: {confidence:.2f}%")

    # -----------------------------------------
    # Probability Chart
    # -----------------------------------------
    st.subheader("📊 Prediction Probability Distribution")

    fig, ax = plt.subplots(figsize=(10, 4))
    ax.bar(range(len(prediction[0])), prediction[0])
    ax.set_xlabel("Class Number")
    ax.set_ylabel("Probability")
    ax.set_title("Prediction Probability for All Classes")
    
    st.pyplot(fig)