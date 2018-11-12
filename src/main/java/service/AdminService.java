package service;

import entity.Admin;
import org.springframework.stereotype.Service;

@Service
public interface AdminService {
    Admin query(Admin admin);
}
