# Utiliser une image officielle de Python
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances si un fichier requirements.txt existe
RUN pip install -r requirements.txt || echo "No requirements.txt found"

# Exécuter le programme FizzBuzz
CMD ["python", "main.py"]