# Meine-Spruchsammlung
# 🧠 Spruch des Tages – Mit MySQL Backend

Dies ist ein einfaches Webprojekt mit Node.js, Express und einer MySQL-Datenbank, bei dem du Zitate hinzufügen, löschen und zufällig anzeigen lassen kannst. Ideal zum Lernen von Fullstack-Entwicklung.

## ✅ Features

- 🎯 Anzeige eines „Spruchs des Tages“
- ➕ Hinzufügen neuer Sprüche
- ❌ Löschen einzelner Sprüche
- 🔁 Zufällige Anzeige aus der Datenbank
- 💾 Daten persistieren in einer MySQL-Datenbank

---

## 🔧 Voraussetzungen

- [Node.js](https://nodejs.org/) (ab Version 18 empfohlen)
- [MySQL Server](https://dev.mysql.com/downloads/)
- Ein MySQL-Benutzer mit passenden Rechten

---

## 📁 Projektstruktur

```
Spruch_des_Tages/
├── backend/
│   ├── server.js         # Express-Server mit API-Routen
│   ├── db.js             # MySQL-Verbindung (über mysql2/promise)
│   └── ...
├── database/
│   └── spruchsammlung.sql  # SQL-Datei zur Erstellung der DB + Beispieldaten
├── public/
│   ├── index.html
│   └── app.js
├── package.json
└── README.md
```

---

## 🧪 Schritt-für-Schritt-Anleitung

### 1. 🔌 Projekt klonen und vorbereiten
```bash
git clone https://github.com/DEIN_USERNAME/spruch-des-tages.git
cd spruch-des-tages
npm install
```

### 2. 🛠️ MySQL-Datenbank einrichten
```bash
mysql -u root -p < database/spruchsammlung.sql
```
> Dadurch wird automatisch die Datenbank `spruchsammlung_db` angelegt, die Tabelle erstellt und 24 Beispiel-Sprüche eingefügt.


### 3. 🧬 Datenbankverbindung konfigurieren
Passe in `backend/db.js` deine Zugangsdaten an:
```js
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'DEIN_PASSWORT',
  database: 'spruchsammlung_db'
});
```

### 4. 🚀 Server starten
```bash
cd backend
node server.js
```
> Du solltest sehen: `✅ Server läuft auf http://localhost:3000`


### 5. 🌐 Frontend öffnen
Öffne `public/index.html` im Browser. Jetzt kannst du:
- Zufällige Sprüche anzeigen lassen
- Neue hinzufügen
- Einzelne löschen

---

## 🔒 Sicherheit & Hinweise
- Stelle sicher, dass dein SQL-User sichere Passwörter nutzt
- Für Deployment kannst du `.env` nutzen und `dotenv` in `db.js` verwenden
- Optional: Deployment mit Vercel (Frontend) + Railway oder PlanetScale (Backend)

---

## ❤️ Mitgemacht von
Zito  – für alle, die jeden Tag einen klugen Gedanken gebrauchen können.

---

## 📜 Lizenz
MIT – Frei zur Nutzung, Lernen und Weiterentwickeln ✌️
