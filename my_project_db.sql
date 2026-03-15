CREATE TABLE profile (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    body TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    profile_id INT,
    CONSTRAINT fk_post_profile 
        FOREIGN KEY (profile_id) 
        REFERENCES profile(id) 
        ON DELETE CASCADE
);
INSERT INTO profile (id, full_name, created_at) VALUES 
(2, 'Donald Trump', '2026-03-15 12:37:29'),
(3, 'Cristiano Ronaldo', '2026-03-15 12:38:00'),
(4, 'Elon Musk', '2026-03-15 12:38:20'),
(5, 'Bill Gates', '2026-03-15 12:38:44');
SELECT setval('profile_id_seq', (SELECT MAX(id) FROM profile));

INSERT INTO post (body, profile_id, created_at) VALUES 
('Hello my friend, Make America, great again!', 2, '2026-03-15 12:45:48'),
('Space X is best comany in the world!', 4, '2026-03-15 12:47:37'),
('SUUUUUUUUU', 3, '2026-03-15 12:49:46');
