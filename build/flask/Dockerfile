# Vulhub's python/unpickle (in app/) runs vulhub/flask:1.1.1 with app.py mounted on /app/app.py.
# Isoloom has no bind mounts, so this image copies the same file to the same place. Nothing else differs.
FROM vulhub/flask:1.1.1
COPY app/app.py /app/app.py
