INSERT INTO blogful_articles (title, content, date_published)
VALUES
    ('Title 1', 'this might be content',        now() - '21 days'::INTERVAL),
    ('Bluffalo Wings', 'Snack',           now() - '21 days'::INTERVAL),
    ('Not Dogs',  'Snack',                 now() - '21 days'::INTERVAL),
    ('SubstiTuna Salad', 'Lunch',         now() - '21 days'::INTERVAL),
    ('Tofurkey',  'Breakfast',             now() - '21 days'::INTERVAL),
    ('Pretenderloins', 'Main',            now() - '9 days'::INTERVAL),
    ('Steak-believe',  'Main',             now() - '9 days'::INTERVAL),
    ('Kale Seitan',  'Breakfast',          now() - '9 days'::INTERVAL),
    ('NoBull Burger',  'Snack',            now() - '9 days'::INTERVAL),
    ('Turnip the Beet',  'Lunch',          now() - '9 days'::INTERVAL),
    ('Mascarphony', 'Lunch',              now() - '7 days'::INTERVAL),
    ('Burgatory', 'Main',                 now() - '7 days'::INTERVAL),
    ('Sleight of Ham', 'Lunch',           now() - '5 days'::INTERVAL),
    ('Antichovies',  'Breakfast',          now() - '5 days'::INTERVAL),
    ('Lettuce B. Frank', 'Lunch',         now() - '5 days'::INTERVAL),
    ('Pepperphony',  'Breakfast',          now() - '5 days'::INTERVAL),
    ('Shamburger',  'Main',                now() - '4 days'::INTERVAL),
    ('Facon',  'Breakfast',                now() - '4 days'::INTERVAL),
    ('Salami-get-this-straight', 'Snack', now() - '4 days'::INTERVAL),
    ('Mi-steak', 'Main',                  now() - '3 days'::INTERVAL),
    ('Ghost Beef',  'Main',                now() - '3 days'::INTERVAL)
    ;