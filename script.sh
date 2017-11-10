cd /vagrant/projects/culturego

touch deployment.run

echo "mkdir .log 2> /dev/null" >> deployment.run

echo "DEBUG=True authbind gunicorn -b 0.0.0.0:8000 app:app --reload --access-logfile .log/access.log --error-logfile .log/general.log --log-file=-" >> deployment.run

chmod +x deployment.run
