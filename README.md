# How to run
Enter ```cmd /k code .``` in the folder directory<br>
Open XAMPP, start Apache and MySQL, and then click the Admin button of MySQL<br>
Don't forget to import the database file named ```filament_livewire_web.sql``` to phpMyAdmin or you can use the command ```php artisan db:seed``` in the terminal after you opened VSCode<br>
Open VSCode, open new terminal, and type ```php artisan serve```, don't forget to CTRL + click the ```[http://127.0.0.1:8000]```<br>
Change the ```127.0.0.1``` into ```localhost```<br>
Open new tab and then type ```http://localhost:8000/admin```<br>
Email address superadmin@admin.com & password superadmin and then you can add, edit, or view, delete data.
