package com.hexaware.concrete;

import com.hexaware.abstractpackage.Vehicle;

public class Truck extends Vehicle {
    public Truck(String name, double rentPrice) {
        super(name, rentPrice);
    }

    @Override
    public void rentVehicle() {
        if (!isRented()) {
            setRented(true);
            System.out.println(getName() + " truck is rented at Rs. +" + getRentPrice() + " per day");
        } else System.out.println("Truck Already rented");
    }

    @Override
    public void returnVehicle() {
        if (isRented()) {
            setRented(false);
            System.out.println("Truck " + getName() + " has been returned");
        } else System.out.println("Truck " + getName() + " not rented");
    }
}
