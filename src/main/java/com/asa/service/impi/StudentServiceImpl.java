package com.asa.service.impi;

import com.asa.dao.StudentDao;
import com.asa.domain.Student;
import com.asa.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    // 引用类型自动注入@Autowired,@Resource
    @Resource
    private StudentDao studentDao;

    // 新增
    @Override
    public int addStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    // 查询
    @Override
    public List<Student> findStudents() {
        return studentDao.selectStudents();
    }
}
