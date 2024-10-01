package com.hexaware.concrete;

import com.hexaware.abstractpackage.Vehicle;

public class Car extends Vehicle {
    public Car(String name, double rentPrice) {
        super(name, rentPrice);
    }

    @Override
    public void rentVehicle() {
        if (!isRented()) {
            setRented(true);
            System.out.println(getName() + " car is rented at Rs. +" + getRentPrice() + " per day");
        } else System.out.println("Car Already rented");
    }

    @Override
    public void returnVehicle() {
        if (isRented()) {
            setRented(false);
            System.out.println("Car " + getName() + " has been returned");
        } else System.out.println("Car " + getName() + " not rented");
    }
}
