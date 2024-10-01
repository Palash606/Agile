package com.hexaware.concrete;

import com.hexaware.abstractpackage.Vehicle;

public class Bike extends Vehicle {
    public Bike(String name, double rentPrice) {
        super(name, rentPrice);
    }

    @Override
    public void rentVehicle() {
        if (!isRented()) {
            setRented(true);
            System.out.println(getName() + " bike is rented at Rs. +" + getRentPrice() + " per day");
        } else System.out.println("Bike Already rented");
    }

    @Override
    public void returnVehicle() {
        if (isRented()) {
            setRented(false);
            System.out.println("Bike " + getName() + " has been returned");
        } else System.out.println("Bike " + getName() + " not rented");
    }
}
