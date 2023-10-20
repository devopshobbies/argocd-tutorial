### WE are using a flask script to get the url of the application and try to connect to it 5 times at 5 seconds intervals and returns one of the true or false values based on "200 response_code" in a json format, if the success_rate is 80% or more , it returns "true" value, Otherwise it returns "false" value
from flask import Flask, request, jsonify
import requests, time

app = Flask(__name__)

@app.route('/measure_success_rate', methods=['POST'])
def measure_success_rate():
    url = request.json.get('url')

    if not url:
        return jsonify({'error': 'URL is missing in the request body'}), 400

    success_count = 0

    for _ in range(5):
        try:
            response = requests.get(url)
        except requests.exceptions.RequestException:
            pass
        else:
            if response.status_code == 200:
                success_count += 1
                time.sleep(5)
            else:
                time.sleep(5)
    success_rate = (success_count / 5) * 100
    if int(success_rate) >= 80:
        return jsonify({'data': {'ok': 'true'}})
    else:
        return jsonify({'data': {'ok': 'false'}})

if __name__ == '__main__':
    app.run()
