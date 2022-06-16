package com.ichigo.entity;

public class Users {
    private int uid;
    private String username;
    private String password;
    private int root;

    public Users(int uid, String username, String password, int root) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.root = root;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", root=" + root +
                '}';
    }

    public Users() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
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

    public int getRoot() {
        return root;
    }

    public void setRoot(int root) {
        this.root = root;
    }
}
