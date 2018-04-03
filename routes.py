from flask import Flask, render_template, request, redirect
from flask_twisted import Twisted

###############################CONFIG#######################################
app = Flask(__name__, static_folder='static', static_url_path='')
twisted = Twisted(app)

@app.route("/")
def home():
	return render_template('formsubmit.html')


@app.route('/hello/', methods=['GET'])
def hello():
    name = request.args.get('yourname', '')
    email = request.args.get('youremail', '')
    return render_template('flag.html', name=name, email=email)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
