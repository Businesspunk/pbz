package com.kazakevich.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface GenericDao<T>{
    public void create(T object) throws SQLException;
    public T getFromPK(int key);
    public void update(T object);
    public void delete(T object);
    public ResultSet getAll();
}
