package service;

import dao.AdminDao;
import entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;
    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public Admin query(Admin admin) {
        return adminDao.query(admin);
    }
}
