package com.hexaware.mainvehicleprogram;

import com.hexaware.abstractpackage.Vehicle;

import java.util.ArrayList;
import java.util.List;

public class User {
    private String name;
    private int userId;
    private List<Vehicle> rentedVehicles;

    public User(String name, List<Vehicle> rentedVehicles, int userId) {
        this.userId = userId;
        this.name = name;
        this.rentedVehicles = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Vehicle> getRentedVehicles() {
        return rentedVehicles;
    }

    public void setRentedVehicles(List<Vehicle> rentedVehicles) {
        this.rentedVehicles = rentedVehicles;
    }

    public void rentVehicle(Vehicle vehicle) {
        if (!vehicle.isRented()) {
            vehicle.rentVehicle();
            rentedVehicles.add(vehicle);
        } else System.out.println(vehicle.getName() + " is rented by another person");
    }

    public void returnVehicle(Vehicle vehicle) {
        if (rentedVehicles.contains(vehicle)) {
            vehicle.returnVehicle();
            rentedVehicles.remove(vehicle);
        } else System.out.println(vehicle.getName() + " is not rented");
    }

    public void viewRentedVehicles() {
        if (rentedVehicles.isEmpty()) {
            System.out.println("No vehicles are rented now");
        } else {
            System.out.println("Rentted Vehicles : ");
            for (Vehicle vehicle : rentedVehicles) {
                System.out.println(vehicle.getName() + " rented for Rs." + vehicle.getRentPrice());
            }
        }
    }
}
