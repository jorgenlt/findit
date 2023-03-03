import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post"
export default class extends Controller {

  static targets = ["category", "subcategory"]

  connect() {
    const data = [
      {
        category: 'Bicycles',
        subcategories: ["Electrical", "Hybrid", "Offroad", "Racer", "Other"]
      },
      {
        category: 'Electronics',
        subcategories: ["Computers", "Photo", "TV", "Household", "Smartphones"]
      },
      {
        category: 'Home',
        subcategories: ["Furniture", "Lamps", "Kitchen"]
      },
      {
        category: 'Pets',
        subcategories: ["Bird", "Cat", "Dog", "Fish", "Horse"]
      },
      {
        category: 'Sports',
        subcategories: ["Ballsport", "Golf", "Outdoors", "Winter", "Water"]
      },
      {
        category: 'Vehicles',
        subcategories: ["Car", "Motorcycle", "Truck"]
      },
      {
        category: 'Work',
        subcategories: ["Fulltime", "Parttime"]
      },
      {
        category: 'Boats',
        subcategories: ["Sailboat", "Speedboat", "Yacht"]
      }
    ];

    console.log('new_post is connectedd')
    console.log(data)
    console.log(this.categoryTarget)
    console.log(this.subcategoryTarget)


  }
}
