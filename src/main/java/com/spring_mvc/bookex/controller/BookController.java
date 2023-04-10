package com.spring_mvc.bookex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_mvc.bookex.model.BookVO;
import com.spring_mvc.bookex.service.BookService;

@Controller
public class BookController {
	
    @Autowired
    BookService service;

    @RequestMapping("/")
    public String index() {
        
        return "index";
    }

    @RequestMapping("/book/bookListAll")
    public String viewbookListAll(Model model){
        ArrayList<BookVO> bkList = service.listAllBook();

        model.addAttribute("bkList", bkList);
        return "book/bookAllListView";
    }
    @RequestMapping("/book/bookNewForm")
    public String bookNewForm() {
    	
    	return "/book/bookNewForm";
    }
    @RequestMapping("/book/bookInsert")
    public String bookInsert(BookVO bk) {
    	
    	service.insertBook(bk);
    	return "redirect:/book/bookListAll";
    }
    @RequestMapping("/book/detailViewBook/{bookNo}")
    public String detailViewBook(@PathVariable String bookNo,
                                    Model model){
        
        BookVO bkList = service.deailViewBook(bookNo);
        model.addAttribute("bkList", bkList);
        return "book/bookDetailView";
    }

    @RequestMapping("/book/updateBookForm/{bookNo}")
    public String updateBookForm(@PathVariable String bookNo,
                                    Model model){
    	BookVO bkList = service.deailViewBook(bookNo);
		model.addAttribute("bkList", bkList);
        return "book/bookUpdateForm";
    }
    @RequestMapping("/book/updateBook")
    public String updateBook(BookVO bkList){
    	service.updateBook(bkList);
    	return "redirect:/book/bookListAll";
    }

    @RequestMapping("/book/deleteBook/{bookNo}")
    public String deleteBook(@PathVariable String bookNo){
        service.deleteBook(bookNo);
        return "redirect:/book/bookListAll";
    }

    @ResponseBody
	@RequestMapping("/book/bookNoCheck")
	public String bookNoCheck(@RequestParam("bookNo") String bookNo) {
		String result = "";
		String bookNo_result = service.bookNoCheck(bookNo);
		if(bookNo_result == null)
			result = "success";
		else
			result = "fail";
		return result;
	}
    @RequestMapping("/book/bookSearchForm1")
    public String bookSearchForm1()
    {

        return "book/bookSearchForm1";
    }

    @ResponseBody
    @RequestMapping("/book/bookSearch1")
    public ArrayList<BookVO> bookSearch1(@RequestParam HashMap<String,Object> param)
    {
        ArrayList<BookVO> bkList = service.bookSearch(param);

        return bkList;
    }

    @RequestMapping("/book/bookSearchForm2")
	public String bookSearchForm2() {
		return "book/bookSearchForm2";
	}
		
	// 상품 검색2 처리
	@RequestMapping("/book/bookSearch2")
	public String bookSearch2(@RequestParam HashMap<String, Object> param,
																					Model model){
		// 서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<BookVO> bkList = service.bookSearch(param);	
		model.addAttribute("bkList", bkList);
		return "book/bookSearchResultView"; // productSearchResultView.jsp
	}

}
