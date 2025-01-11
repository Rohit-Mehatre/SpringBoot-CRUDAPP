package com.cjc.main.crud.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.crud.model.Student;
import com.cjc.main.crud.repository.HomeRepository;
import com.cjc.main.crud.service.HomeServiceI;
@Service
public class HomeServiceImpl implements HomeServiceI{

	@Autowired
	HomeRepository hr;
	
	@Override
	public void saveData(Student s) {
		
		hr.save(s);
	}

	@Override
	public Student loginCheck(String un, String ps) {
		
		return hr.findAllByUnameAndPassword(un, ps);
	}

	@Override
	public Iterable<Student> getAllData() {
		
		return hr.findAll();
	}

	@Override
	public void deleteData(Student s) {
		hr.delete(s);
		
	}

	@Override
	public Student editData(int uid) {
		
		return hr.findAllByUid(uid);
	}
	
	
}
