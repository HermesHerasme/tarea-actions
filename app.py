import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 Hola desde Flask en Docker y Render!"

if __name__ == "__main__":
    # Render usa la variable $PORT, si no existe, usaa 8000 localmente
    port = int(os.environ.get("PORT", 8000))
    app.run(host="0.0.0.0", port=port)
