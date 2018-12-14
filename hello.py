from flask import Flask
app = Flask(__name__)

visits = 0

@app.route("/", methods=["GET"])
def index():
    global visits
    visits += 1
    return f"Hello Flask!\n"

@app.route("/visits", methods=["GET"])
def getVisits():
    global visits
    visits += 1
    return f"Visits: {visits}\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0")        # host needed to be acessible from outside
