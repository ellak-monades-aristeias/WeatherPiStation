# WeatherPiStation
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

5. Εμφάνιση μετρήσεων ανάμεσα σε συγκεκριμένες ημερομηνίες (αναζήτηση με βάση τον χρόνο).

6. Συνδυασμοί των αναζητήσεων 3, 4, 5.

7. Οι λειτουργίες 2, 3, 4, 5, 6 να είναι διαθέσιμες και μέσω html (για προβολή σε webbrowser) αλλά και σε μορφή json (για να είναι διαθέσιμες σε άλλα προγράμματα μέσω api).


## Που απευθύνεται

Το σύστημα απευθύνεται σε:

 1. πολίτες που θέλουν να μετρήσουν τη θερμοκρασία ή την ατμοσφαιρική ρύπανση στο σπίτι τους ή την ιδιοκτησία τους

 2. δημόσια κτίρια, σχολεία, δημόσιες υπηρεσίες, αγροτικές καλλιέργιες.
 
## Άδεια λογισμικού

Για το ήδη υπάρχον λογισμικό έχει χρησιμοποιηθεί η άδεια λογισμικού GPL v3.
Νομίζουμε ότι δεν είναι συμβατή με EUPLv1.1, οπότε το νέο λογισμικό θα παραμείνει σε GPLv3.

# Παραδοτέα


| Παραδοτέο | Σύντομη περιγραφή       | URL |
|-----------|-------------------------|-----|
| 1 | Αγορά υλικού: Raspberry pi, Airpi. | |
| 2 | Δυνατότητα 1| https://github.com/ellak-monades-aristeias/WeatherPiStation/blob/master/Autologin_%26_Autostart_Raspberry%20Pi.md |
| 3 | Δυνατότητα 2 | https://github.com/ellak-monades-aristeias/WeatherPiStation/tree/master/www/API |
| 4 | Δυνατότητα 7  | https://github.com/ellak-monades-aristeias/WeatherPiStation/tree/master/www/API |
| 5 | Δυνατότητα 3 : | https://github.com/ellak-monades-aristeias/ |
| 6 | Δυνατότητα 4 : | https://github.com/ellak-monades-aristeias/ |
| 7 | Δυνατότητα 5 : | https://github.com/ellak-monades-aristeias/ |
| 8 | Δυνατότητα 6 : | https://github.com/ellak-monades-aristeias/ |



> Το έργο έχει εγκριθεί για Ενίσχυση Έργων Ανοιχτού Λογισμικού από την [ΕΛ/ΛΑΚ](https://ellak.gr/)
