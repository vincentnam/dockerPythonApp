import numpy as np
import sys
from PIL import Image
from keras.applications.resnet50 import preprocess_input
from keras.models import load_model, model_from_json

# architecture and weights from HDF5
#model = load_model('model.h5')

# architecture from JSON, weights from HDF5
#with open('architecture.json') as f:
#    model = model_from_json(f.read())
#model.load_weights('weights.h5')

validation_img_paths = []
for i in range(len(sys.argv)-1):
    validation_img_paths.append("../data/imagetoprocess/" + sys.argv[i+1])
print (sys.argv)
#img_list = [Image.open(img_path) for img_path in validation_img_paths]
#print( img_list)
#validation_batch = np.stack([preprocess_input(np.array(img.resize((255, 255))))
  #                           for img in img_list])

#pred_probs = model.predict(validation_batch)

#for i, img in enumerate(img_list):
 #   print(" {:.0f}% Alien, {:.0f}% Predator".format(100*pred_probs[i,0],100*pred_probs[i,1]))



