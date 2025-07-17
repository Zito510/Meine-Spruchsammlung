// 🎯 Spruch des Tages – Mit Backend (fetch & Datei)

// === DOM-Elemente greifen ===
const apiURL = 'http://localhost:3000/api/sprueche';
const spruchAnzeige = document.getElementById('spruch-anzeige');
const randomSpruchBtn = document.getElementById('random-spruch-btn');
const neuesSpruchForm = document.getElementById('neuer-spruch-form');
const spruchInput = document.getElementById('spruch-input');
const autorInput = document.getElementById('autor-input');
const spruchListe = document.getElementById('spruch-liste');

let sprueche = [];

// === Sprüche vom Server laden ===
async function ladeSprueche() {
    try {
        const res = await fetch(apiURL);
        sprueche = await res.json();
        renderSprueche();
        zeigeZufaelligenSpruch();
    } catch (err) {
        console.error("Fehler beim Laden der Sprüche:", err);
    }
}


// === Sprüche anzeigen ===
function renderSprueche() {
    spruchListe.innerHTML = '';
    sprueche.forEach(spruch => {
        const li = document.createElement('li');
        li.className = 'list-group-item d-flex justify-content-between align-items-start';
        li.innerHTML = `
            <div>
                <p class="mb-1">"${spruch.text}"</p>
                <small class="text-muted fst-italic">– ${spruch.autor}</small>
            </div>
            <button class="btn btn-sm btn-outline-danger" onclick="loescheSpruch(${spruch.id})">✖</button>
        `;
        spruchListe.appendChild(li);
    });
}

// === Formularverarbeitung ===
neuesSpruchForm.addEventListener('submit', async function (event) {
    event.preventDefault();
    const neuerSpruch = {
        text: spruchInput.value.trim(),
        autor: autorInput.value.trim()
    };
    if (neuerSpruch.text && neuerSpruch.autor) {
        try {
            await fetch(apiURL, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(neuerSpruch)
            });
            await ladeSprueche();
            neuesSpruchForm.reset();
        } catch (err) {
            console.error("Fehler beim Speichern:", err);
        }
    }
});

// === Zufälligen Spruch anzeigen ===
function zeigeZufaelligenSpruch() {
    if (sprueche.length === 0) {
        spruchAnzeige.innerHTML = `<p>Kein Spruch vorhanden.</p>`;
        return;
    }
    const zufallsSpruch = sprueche[Math.floor(Math.random() * sprueche.length)];
    spruchAnzeige.innerHTML = `
        <p>"${zufallsSpruch.text}"</p>
        <footer class="blockquote-footer">${zufallsSpruch.autor}</footer>
    `;
}
randomSpruchBtn.addEventListener('click', zeigeZufaelligenSpruch);


// === Spruch löschen ===
async function loescheSpruch(id) {
    if (!confirm("Willst du diesen Spruch wirklich löschen?")) return;
    try {
        await fetch(`${apiURL}/${id}`, { method: 'DELETE' });
        await ladeSprueche();
    } catch (err) {
        console.error("Fehler beim Löschen:", err);
    }
}

// === Seite starten ===
ladeSprueche();
