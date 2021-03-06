package entity;

import java.util.Date;

public class Admin {
    private int id;
    private String username;
    private String password;
    private Date date;
    private String state;

    public Admin() {
    }

    public Admin(int id, String username, String password, Date date, String state) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.date = date;
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", date=" + date +
                ", state='" + state + '\'' +
                '}';
    }
}
