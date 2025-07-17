-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS spruchsammlung_db;
USE spruchsammlung_db;

-- Tabelle erstellen
CREATE TABLE IF NOT EXISTS sprueche (
  id INT AUTO_INCREMENT PRIMARY KEY,
  text TEXT NOT NULL,
  autor VARCHAR(255) NOT NULL,
  erstellt_am TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Beispieldaten einfügen
INSERT INTO sprueche (text, autor) VALUES
('Der Weg ist das Ziel.', 'Konfuzius'),
('Phantasie ist wichtiger als Wissen.', 'Albert Einstein'),
('Handle nur nach derjenigen Maxime, durch die du zugleich wollen kannst, dass sie ein allgemeines Gesetz werde.', 'Immanuel Kant'),
('Sei du selbst die Veränderung, die du dir wünschst für diese Welt.', 'Mahatma Gandhi'),
('Zwei Dinge sind unendlich, das Universum und die menschliche Dummheit, aber bei dem Universum bin ich mir noch nicht ganz sicher.', 'Albert Einstein'),
('Es ist nicht wenig Zeit, die wir haben, sondern es ist viel Zeit, die wir nicht nutzen.', 'Seneca'),
('Wer kämpft, kann verlieren. Wer nicht kämpft, hat schon verloren.', 'Bertolt Brecht'),
('Man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.', 'Antoine de Saint-Exupéry'),
('Jeder Tag ist eine neue Chance, das zu tun, was du möchtest.', 'Friedrich Schiller'),
('Was du nicht willst, das man dir tu, das füg auch keinem andern zu.', 'Konfuzius'),
('Nichts ist so beständig wie der Wandel.', 'Heraklit'),
('Träume nicht dein Leben, sondern lebe deinen Traum.', 'Mark Twain'),
('Gib jedem Tag die Chance, der schönste deines Lebens zu werden.', 'Mark Twain'),
('Wer immer tut, was er schon kann, bleibt immer das, was er schon ist.', 'Henry Ford'),
('Es gibt nichts Gutes, außer man tut es.', 'Erich Kästner'),
('Auch der längste Weg beginnt mit dem ersten Schritt.', 'Laotse'),
('Nur wer riskiert, zu weit zu gehen, kann überhaupt herausfinden, wie weit er gehen kann.', 'T. S. Eliot'),
('Die beste Zeit, einen Baum zu pflanzen, war vor 20 Jahren. Die zweitbeste Zeit ist jetzt.', 'Chinesisches Sprichwort'),
('Der größte Feind des Wissens ist nicht Ignoranz, sondern die Illusion, wissend zu sein.', 'Stephen Hawking'),
('Es ist nicht der Berg, den wir bezwingen – wir bezwingen uns selbst.', 'Edmund Hillary'),
('Mut steht am Anfang des Handelns, Glück am Ende.', 'Demokrit'),
('Glück ist das einzige, das sich verdoppelt, wenn man es teilt.', 'Albert Schweitzer'),
('Das Leben ist wie Fahrrad fahren. Um die Balance zu halten, musst du in Bewegung bleiben.', 'Albert Einstein'),
('Alle Träume können wahr werden, wenn wir den Mut haben, ihnen zu folgen.', 'Walt Disney');
