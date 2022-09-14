def all_hearts(id)
    run_sql("SELECT * FROM hearts WHERE user_id = $1", [id])
end

def delete_heart(char_id, user_id)
    run_sql("DELETE FROM hearts WHERE char_id = $1 AND user_id = $2", [char_id, user_id])
end

