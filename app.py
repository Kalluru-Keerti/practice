@app.route("/")
def hello():
    text = "Hello from OpenShift 🚀<br>" * 200
    return text
