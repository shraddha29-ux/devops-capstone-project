import sys
import logging
from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS
from service import config
from service.common import log_handlers

# Create Flask application
app = Flask(__name__)
app.config.from_object(config)

# Initialize Talisman security headers
talisman = Talisman(app)

# Initialize CORS
CORS(app)

# ... [Keep existing initialization code, routes, error handlers, and logging below] ...
