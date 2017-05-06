# Homes4sale App

To see a working version of this app visit https://homesale.herokuapp.com/

The purpose of this app was to create a "Zillow Clone".

* This app has Omniauth authentication, getting email, password, name, phone, address, and profile url.
* Bootstrap 3 was used and then heavily customized.  
* The landing page has a different design than the rest of the app.
* User are able to list a home for sale with the following required fields:
  * Address
  * City
  * State
  * Zip
  * Number of bedrooms
  * Number of baths
  * Square footage (can be changed via jQuery to square meters by clicking on it in the index and show pages)
  * Price
  * Description
* And the following optional fields:
  * Parking (Allow values of: None, Street Parking, Attached Garage, Detatched Garage)
  * Image of house
  * Roof type
  * Lot size
  * HOA (boolean)
  * HOA fee
  * Number of floors
  * Year built
* Photos of the home can be uploaded and are processed into 3 sizes, these are then available to see via a modal.
* The index shows all the homes for sale.
* Pagination is through the kaminari gem and is updated with AJAX
* The home show page displays how long ago the home was posted with special colors for home listed less than 2 days ago and more than 30 days ago
* Search functionality exists for address, city, state, zip, or any part of that field, and is updated with jQuery and AJAX as you type
* Users are only permitted to edit or delete homes they created
* A favoriting feature was added via jQuery and AJAX
* Logout and Delete functions pop up an "Are you sure" modal
