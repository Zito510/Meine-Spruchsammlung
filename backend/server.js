const express = require('express');
const cors = require('cors');
const { pool } = require('./db');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

// 🔁 Alle Sprüche aus der Datenbank laden
app.get('/api/sprueche', async (req, res) => {
    try {
        const [rows] = await pool.execute('SELECT * FROM sprueche ORDER BY erstellt_am DESC');
        res.status(200).json(rows);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Fehler beim Laden der Sprüche' });
    }
});

// ➕ Neuen Spruch hinzufügen
app.post('/api/sprueche', async (req, res) => {
    try {
        const { text, autor } = req.body;
        if (!text || !autor) {
            return res.status(400).json({ error: "Text und Autor sind erforderlich" });
        }

        const [result] = await pool.execute(
            'INSERT INTO sprueche (text, autor) VALUES (?, ?)',
            [text, autor]
        );

        const [newSpruch] = await pool.execute('SELECT * FROM sprueche WHERE id = ?', [result.insertId]);
        res.status(201).json(newSpruch[0]);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Fehler beim Erstellen des Spruchs' });
    }
});

// ❌ Spruch löschen
app.delete('/api/sprueche/:id', async (req, res) => {
    try {
        const { id } = req.params;
        await pool.execute('DELETE FROM sprueche WHERE id = ?', [id]);
        res.status(204).send();
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Fehler beim Löschen des Spruchs' });
    }
});

// 🎲 Zufälligen Spruch laden (Bonus)
app.get('/api/sprueche/random', async (req, res) => {
    try {
        const [rows] = await pool.execute('SELECT * FROM sprueche ORDER BY RAND() LIMIT 1');
        if (rows.length === 0) {
            return res.status(404).json({ message: 'Keine Sprüche vorhanden' });
        }
        res.json(rows[0]);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Fehler beim Laden des Zufallsspruchs' });
    }
});

// 🚀 Server starten
app.listen(port, () => {
    console.log(`✅ Server läuft auf http://localhost:${port}`);
});
