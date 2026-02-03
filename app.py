from flask import Flask
import datetime

app = Flask(__name__)

@app.route("/")
def hello():
    # Create large response text
    text = ("Hello from OpenShift 🚀 " * 200)

    # Calculate response size
    size = len(text.encode("utf-8"))

    return f"""
    <html>
      <body>
        <h1>Openshift Demo 🚀</h1>
      </body>
    </html>
    """
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
