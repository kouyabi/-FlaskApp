# Utiliser une image Python légère
FROM python:3.13-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code de l'application
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
