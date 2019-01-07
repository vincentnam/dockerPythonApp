import numpy as np
from PIL import Image
from keras.applications.resnet50 import preprocess_input
from keras.models import load_model, model_from_json
import sys

# architecture and weights from HDF5
model = load_model('models/keras/model.h5')

# architecture from JSON, weights from HDF5
with open('models/keras/architecture.json') as f:
    model = model_from_json(f.read())
model.load_weights('models/keras/weights.h5')


validation_img_paths = ["../data/"]
for i in range(len(sys.argv)-1):
    validation_img_paths.append("../data/imagetoprocess/" + sys.argv[i+1])

img_list = [Image.open(img_path) for img_path in validation_img_paths]

validation_batch = np.stack([preprocess_input(np.array(img.resize((255, 255))))
                             for img in img_list])

pred_probs = model.predict(validation_batch)

for i, img in enumerate(img_list):
    print(img + " {:.0f}% Alien, {:.0f}% Predator".format(100*pred_probs[i,0],100*pred_probs[i,1]))
