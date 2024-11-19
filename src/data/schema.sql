--
-- Database Schema
-- Web Performance Training
--
-- Simplified Database design for an online store with products, users, and carts.
--

PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS
  products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    t TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    slug TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    imagePath TEXT
  );

CREATE TABLE IF NOT EXISTS
  users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    t TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name TEXT
  );

CREATE TABLE IF NOT EXISTS
  cartItems (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    t TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    userId INTEGER NOT NULL,
    productId INTEGER NOT NULL,
    FOREIGN KEY (userId) REFERENCES users (id)
    FOREIGN KEY (productId) REFERENCES products (id)
  );

-- Seed initial data into product table
INSERT INTO products (slug, name, description, imagePath)
  VALUES
  (
    'coding-mug',
    'Coding Mug',
    'Get your hands on this awesome Coding Mug, featuring our focused mascot software engineer in front of his computer!',
    '/assets/img/coding-mug.png'
  ),
  (
    'good-day-to-debug-sticker',
    'Good Day to Debug Sticker',
    'Channel your inner warrior with this epic Debug Metrics Mug. Debug with honor.',
    '/assets/img/debugging-mug.png'
  ),
  (
    'js-shit-happens-mug',
    'JavaScript Happens',
    'Embrace the inevitable. You can&apos;t stop it. JavaScript will happen.',
    '/assets/img/js-shit-happens-mug.png'
  ),
  (
    'js-mug',
    'Js Mug',
    'Develop JavaScript like crazy. You always need more JavaScript.',
    '/assets/img/js-mug.png'
  );


