# Utiliser une image Python officielle
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code
COPY . .

# Définir la variable d'environnement pour le port
ENV PORT 8080

# Exposer le port
EXPOSE 8080

# Commande pour démarrer l'application
CMD exec gunicorn --bind :$PORT main:app