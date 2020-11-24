package com.example.thegreatadventure;

class Request {
    public String travel;
    public String nperson;
    public String price;
    public String total;
    public String name;
    public String email;
    public String phone;
    public String country;
    public String key;

    public Request(){
    }

    public Request(String travel, String nperson, String price, String total, String name, String email, String phone, String country) {
        this.travel = travel;
        this.nperson = nperson;
        this.price = price;
        this.total = total;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.country = country;
    }

    public String getTravel() {
        return travel;
    }

    public void setTravel(String travel) {
        this.travel = travel;
    }

    public String getNperson() {
        return nperson;
    }

    public void setNperson(String nperson) {
        this.nperson = nperson;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Override
    public String toString() {
        return "Request{" +
                "travel='" + travel + '\'' +
                ", nperson='" + nperson + '\'' +
                ", price='" + price + '\'' +
                ", total='" + total + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
