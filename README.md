# WeatherPiStation
### <<Μετεωρολογικός Σταθμός>>
## Σύντομη Περιγραφή
Στα πλαίσια της μονάδας αριστείας του Πανεπιστημίου Ιωαννίνων έχει αναπτυχθεί ένα σύστημα συλλογής μετεωρολογικών δεδομένων βασισμένο σε rasbperry pi. Η τυποποίηση που υπάρχει μέχρι αυτή την στιγμή είναι διαθέσιμη στο https://github.com/ioa-maellak/weather-station.
Στην παρούσα φάση, οι λειτουργίες είναι οι εξής:

• Το raspberry pi έχει προσαρτημένο ένα airpi (http://airpi.es) με το οποίο μπορεί να παίρνει κάποιες μετρήσεις (πχ θερμοκρασία, υγρασία κλπ). Στην συνέχεια ένα python script που έχει αναπτυχθεί από την ομάδα μας στέλνει τα δεδομένα σε έναν κεντρικό server. Για την αποστολή των μετρήσεων χρειάζεται το raspberry id και ένα password, ώστε να μην μπορεί ο καθένας να στείλει δεδομένα στον κεντρικό server.

• Ο κεντρικός server λαμβάνει μέσω api τα στοιχεία από πολλά raspberry pi και τα αποθηκεύει σε έναν πίνακα της mysql.

• Ο κεντρικός server έχει κάποια php script για την προβολή των δεδομένων σε html αλλά και διαθέσιμα μέσω api σε τρίτες εφαρμογές. Για παράδειγμα υπάρχει η σελίδα http://met­ioamaellak.rhcloud.com στην οποία συλλέγουμε μετρήσεις ανα 5 λεπτά από το τεχνολογικό και επιστημονικό πάρκο Ηπείρου το οποίο συνεργάζεται με το πανεπιστήμιο Ιωαννίνων για την διοργάνωση των μονάδων αριστείας.

Οι νέες δυνατότητες θα είναι οι εξής:

1. Αυτόματη ενεργοποίηση του λογισμικού στο raspberry pi ώστε να ξεκινά με το boot του υπολογιστή αυτόματα. Αυτό είναι χρήσιμο σε περίπτωση που πέσει το ρεύμα.

2. Εμφάνιση των πληροφοριών με σωστό τρόπο, ανεξάρτητα από τις μετρήσεις κάθε raspberry pi. Το τωρινό σύστημα έχει την δυνατότητα να αποθηκεύει στην βάση διαφορετικό πλήθος μετρήσεων ανά raspberry pi. Για παράδειγμα κάποιο raspberry pi μπορεί να έχει μόνο αισθητήρα θερμοκρασίας. Δεν έχει όμως την δυνατότητα να εμφανίζονται σωστά οι μετρήσεις δεν είναι σε όλα τα raspberry pi οι ίδιες.

3. Εμφάνιση μετρήσεων από συγκεκριμένο raspberri pi (αναζήτηση με βάση το id).

4. Εμφάνιση μόνο συγκεκριμένου τύπου μετρήσεων (αναζήτηση με βάση τον τύπο της μέτρησης).

5. Εμφάνιση μετρήσεων σε συγκεκριμένες ημερομηνίες (αναζήτηση με βάση τον χρόνο).

6. Συνδυασμοί των αναζητήσεων 3, 4, 5.

7. Οι λειτουργίες 2, 3, 4, 5, 6 να είναι διαθέσιμες και μέσω html (για προβολή σε webbrowser) αλλά και σε μορφή json (για να είναι διαθέσιμες σε άλλα προγράμματα μέσω api).


Σε ποιους απευθύνεται
==========================
##Κοινότητες Χρηστών

α) Σε πολίτες που θέλουν να έχουν μετεωρολογικές μετρήσεις στο σπίτι τους ή στην ιδιοκτησία τους για οποιαδήποτε εφαρμογή.

β) Σε σχολεία για εκπαιδευτικούς σκοπούς πχ. στο μάθημα "ερευνητικές εργασίες ή project", που οι μαθητές καλούνται να συλλέξουν πληροφορίες, να τις επεξεργαστούν και να τις αξιολογήσουν.

γ) Στη γεωργία όπου μεταβολές των τιμών της θερμοκρασίας, της υγρασίας αλλά και της πίεσης είναι χρήσιμες σε μοντέλα πρόληψης ασθενειών γεωργικών καλλιεργειών. 

##Κοινότητες προγραμματιστών

Όσοι προγραμματιστές ενδιφέροντι για την επέκταση του έργου, μπορούν να συμβάλουν ώστε αφενός να εμφανίζονται και οι υπόλοιπες μετρήσεις που διαθέτει το AirPi, αφετέρου να προσθέσουν νέους αισθητήρες οι οποίοι θα παρέχουν περισσότερες πληροφορίες, όπως η ένταση του ανέμου, η διεύθυνση του κτλ.

Η προσθήκη μονάδας GPS(υπάρχει έτοιμη η βάση της στο AirPi), μονάδας GSM και η αυτονομία του συστήματος με ηλιακό σύστημα (solar) και ηλεκτρικό στοιχείο(μπαταρία) θα δημιουργούσε ένα Mobile Weather Station, ικανό να δίνει δεδομένα εν κινήση πχ. στο κέντρο της πόλης.

Τέλος η εξαγωγή των δεδομένων σε μορφή metar θα ήταν ιδιαιτέρως χρήσιμη.

##Κόστος 


|Κόστος 																		||
|---------------|----------|--------------------------------------------------------------------------------------------|
|Raspeberry Pi 2 |                                   45.00 €|
|AirPi kit     |                                        100.00 €|
|Διαφορα Ηλεκτρονικα εξαρτήματα (καλωδια, αντιστασεις,pins.. )|  15.00 €|
|**Σύνολο**        |                                                 160.00 € |
Οι τιμές είναι βασισμένες στη μέση λιανική τιμή με έξοδα αποστολής στην Ελλάδα. Το AirPi kit πωλείται 90$ ανά τεμάχιο  +15$ τα έξοδα αποστολής, ενώ για ποσότητες μεγαλύτερες των 5 κιτ η τιμή πέφτει στα 80$ ανά κιτ. 
Συνεπώς για ποσότητες μεγαλύτερες των 5 μονάδων θα πρέπει να υπολογίζουμε την παραπάνω τιμή με έκπτωση περίπου στα 20%. 

## Άδεια λογισμικού

Για το ήδη υπάρχον λογισμικό έχει χρησιμοποιηθεί η άδεια λογισμικού GPL v3.
Νομίζουμε ότι δεν είναι συμβατή με EUPLv1.1, οπότε το νέο λογισμικό θα παραμείνει σε GPLv3.

# Παραδοτέα


| Παραδοτέο | Σύντομη περιγραφή       | URL |
|-----------|-------------------------|-----|
| 1 | Αγορά υλικού: Raspberry pi, Airpi. | |
| 2 | Δυνατότητα 1 | https://github.com/ellak-monades-aristeias/WeatherPiStation/blob/master/Autologin_%26_Autostart_Raspberry%20Pi.md |
| 3 | Δυνατότητα 2 | https://github.com/ellak-monades-aristeias/WeatherPiStation/tree/master/www/API |
| 4 | Δυνατότητα 7 | https://github.com/ellak-monades-aristeias/WeatherPiStation/tree/master/www/API |
| 5 | Δυνατότητα 3 | http://weatherpistation-mbalamat.rhcloud.com/front-app/ |
| 6 | Δυνατότητα 4 | http://weatherpistation-mbalamat.rhcloud.com/front-app/ |
| 7 | Δυνατότητα 5 | http://weatherpistation-mbalamat.rhcloud.com/front-app/ |
| 8 | Δυνατότητα 6 | http://weatherpistation-mbalamat.rhcloud.com/front-app/ |

## Description in English

The WeatherPiStation project is a meteorological data collection system, based on the raspberry pi and kit AirPi (http://airpi.es), including low cost sensors. The system has the ability to take measurements (e.g., temperature, humidity, etc.) and then with a python script developed by our team sends them to a central server. To send measurement needs raspberry id and a password, as not everyone can send data to a central server. The central server can receive data through api many raspberry pi and stores them in a table of mysql. The server host has some script php for displaying such data in html.
This project, adding new features such as automatic activation of the software in raspberry pi to start automatically with the boot the computer (this is useful in cases of power failure). Display the information in a proper way regardless of measurements each raspberry pi , displaying measurements from specific raspberri pi (search by id). Display only specific type of measurement (search by the type of measurement) and display measurements between certain dates (search by year). Finally measurements will be in the form json (to be available in other programs and applications via api).


