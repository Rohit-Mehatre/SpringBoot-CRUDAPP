package com.cjc.main.crud.service;

import com.cjc.main.crud.model.Student;

public interface HomeServiceI {
	
	public void saveData(Student s);

	public Student loginCheck(String un, String ps);

	public Iterable<Student> getAllData();
	
	public void deleteData(Student s);

	public Student editData(int uid);
	
	
}
