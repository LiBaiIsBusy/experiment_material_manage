package edu.chaohu.hgl.service.impl;

import static org.junit.Assert.fail;

import edu.chaohu.hgl.BaseTest;
import edu.chaohu.hgl.dto.AppointExecution;
import edu.chaohu.hgl.service.BookService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class BookServiceImplTest extends BaseTest {

	@Autowired
	private BookService bookService;

	@Test
	public void testAppoint() throws Exception {
		long bookId = 1001;
		long studentId = 12345678910L;
		AppointExecution execution = bookService.appoint(bookId, studentId);
		System.out.println(execution);
	}

}
