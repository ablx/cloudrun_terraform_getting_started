from flask import Flask, request
import logging
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.StreamHandler()
    ]
)

app = Flask(__name__)

@app.route('/hello')
def hello():
    return "World"

@app.route('/message', methods=['POST'])
def message():
    data = request.get_data(as_text=True)
    app.logger.info("Received message: %s", data)
    return "Message received!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)