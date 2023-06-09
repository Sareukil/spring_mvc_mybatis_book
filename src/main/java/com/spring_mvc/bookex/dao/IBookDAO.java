package com.spring_mvc.bookex.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_mvc.bookex.model.BookVO;

public interface IBookDAO {
	public ArrayList<BookVO> listAllBook();
    public void insertBook(BookVO bk);
    public void updateBook(BookVO bk);
    public void deleteBook(String bookNo);
    public BookVO deailViewBook(String bookNo);
    public String bookNoCheck(String bookNo);
    public ArrayList<BookVO> bookSearch(HashMap<String,Object> map);
}
