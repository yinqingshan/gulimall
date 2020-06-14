package com.yqs.gulimall.order.beans;

import java.util.List;
import java.util.Map;

/**
 * @author
 * @create 2020-06-13 16:51
 */
//@Component
//@ConfigurationProperties(prefix = "account")
public class Account {

    private String name;
    private Integer age;
    private Float balances;
    private Boolean booes;
    private List<String> hobbies;
    private Map<String,Double> score;

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", balances=" + balances +
                ", booes=" + booes +
                ", hobbies=" + hobbies +
                ", score=" + score +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Float getBalances() {
        return balances;
    }

    public void setBalances(Float balances) {
        this.balances = balances;
    }

    public Boolean getBooes() {
        return booes;
    }

    public void setBooes(Boolean booes) {
        this.booes = booes;
    }

    public List<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(List<String> hobbies) {
        this.hobbies = hobbies;
    }

    public Map<String, Double> getScore() {
        return score;
    }

    public void setScore(Map<String, Double> score) {
        this.score = score;
    }
}
