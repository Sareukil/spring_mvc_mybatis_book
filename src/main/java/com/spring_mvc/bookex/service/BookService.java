package com.spring_mvc.bookex.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_mvc.bookex.dao.IBookDAO;
import com.spring_mvc.bookex.model.BookVO;

@Service
public class BookService implements IBookService{

	@Autowired
    @Qualifier("IBookDAO")
    IBookDAO dao;
	
    @Override
    public BookVO deailViewBook(String bookNo) {
        // TODO Auto-generated method stub
        return dao.deailViewBook(bookNo);
    }

    @Override
    public void deleteBook(String bookNo) {
        dao.deleteBook(bookNo);
        
    }

    @Override
    public void insertBook(BookVO bk) {
        dao.insertBook(bk);
        
    }

    @Override
    public ArrayList<BookVO> listAllBook() {
        // TODO Auto-generated method stub
    	return dao.listAllBook();
    }

    @Override
    public void updateBook(BookVO bk) {
        dao.updateBook(bk);
        
    }

    @Override
    public String bookNoCheck(String bookNo) {
        // TODO Auto-generated method stub
        return dao.bookNoCheck(bookNo);
    }

    @Override
    public ArrayList<BookVO> bookSearch(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        return dao.bookSearch(map);
    }

}
