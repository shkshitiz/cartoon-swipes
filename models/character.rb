def all_chars
    run_sql("SELECT * FROM characters")
end

def create_char(name, quote, image_url)
    run_sql("INSERT INTO characters(name, quote, image_url) VALUES($1, $2, $3)", [name, quote, image_url])
end

def get_char(id)
    run_sql("SELECT * FROM characters WHERE id = $1", [id])[0]
end

def update_char(id, name, quote, image_url)
    run_sql("UPDATE characters SET name = $2, quote = $3, image_url = $4 WHERE id = $1", [id, name, quote, image_url])
end

def delete_char(id)
    run_sql("DELETE FROM characters WHERE id = $1", [id])
end

def start_char
    run_sql("SELECT * FROM characters WHERE id = 1")
end

