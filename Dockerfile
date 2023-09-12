# Use the base image with PyTorch and CUDA support
FROM tensorflow/tensorflow:latest-gpu-jupyter

# Install additional Python packages like scikit-learn, seaborn, tqdm, opencv-python
RUN pip install scikit-learn seaborn tqdm opencv-python

# Install system libraries required by OpenCV and graphical support
RUN apt-get update && apt-get install -y libgl1-mesa-glx libgtk2.0-0 libsm6 libxext6

# Set the working directory
WORKDIR /tf/notebooks
