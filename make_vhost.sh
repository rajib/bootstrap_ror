echo "LoadModule passenger_module /home/ubuntu/.rvm/gems/ruby-1.9.3-p194/gems/passenger-3.0.19/ext/apache2/mod_passenger.so
PassengerRoot /home/ubuntu/.rvm/gems/ruby-1.9.3-p194/gems/passenger-3.0.19
PassengerRuby /home/ubuntu/.rvm/wrappers/ruby-1.9.3-p194/ruby" >> /etc/apache2/apache2.conf


echo "<VirtualHost *:80>
		ServerName linksnse.indusnetlabs.com
		DocumentRoot /home/ubuntu/RailsApps/linksnse/current/public
		<Directory /home/ubuntu/RailsApps/linksnse/current/public>
			AllowOverride all
			Options -MultiViews
		</Directory>
	</VirtualHost>" > /etc/apache2/sites-available/linksnse

sudo a2ensite linksnse 
sudo a2dissite default
sudo service apache2 reload
