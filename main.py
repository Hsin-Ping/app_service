from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def test():
    print("Hello World")
    return "Hello World"

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5121)
