import com.hexaware.abstractpackage.Vehicle;
import com.hexaware.concrete.Bike;
import com.hexaware.concrete.Car;
import com.hexaware.concrete.Truck;
import com.hexaware.mainvehicleprogram.User;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your username : ");
        String username = sc.nextLine();
        System.out.println("Enter your userId : ");
        int userId = sc.nextInt();

        User user = new User(username, new ArrayList<>(), userId);

        Vehicle car = new Car("Tata Punch", 5000);
        Vehicle bike = new Bike("Yamaha FZ", 1000);
        Vehicle truck = new Truck("Ashok Leyland", 12000);

        while (true) {
            System.out.println("1. Rent a vehicle");
            System.out.println("2. Return a vehicle");
            System.out.println("3. View all rented vehicles");
            System.out.println("4. Close");

            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    System.out.println("Select a vehicle to rent: 1. Car  2. bike  3. Truck");
                    int vehicleChoice = sc.nextInt();
                    switch (vehicleChoice) {
                        case 1:
                            user.rentVehicle(car);
                            break;
                        case 2:
                            user.rentVehicle(bike);
                            break;
                        case 3:
                            user.rentVehicle(truck);
                            break;
                        default:
                            System.out.println("Invalid choice.");
                    }
                    break;
                case 2:
                    System.out.println("Select vehicle to return: 1. Car 2. Bike 3. Truck");
                    vehicleChoice = sc.nextInt();
                    switch (vehicleChoice) {
                        case 1:
                            user.returnVehicle(car);
                            break;
                        case 2:
                            user.returnVehicle(bike);
                            break;
                        case 3:
                            user.returnVehicle(truck);
                            break;
                        default:
                            System.out.println("Invalid choice.");
                    }
                    break;
                case 3:
                    user.viewRentedVehicles();
                    break;
                case 4:
                    System.out.println("Closing...");
                    return;
                default:
                    System.out.println("Invalid choice.");
            }
        }
    }

}