import { Controller } from "@hotwired/stimulus"

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

// Connects to data-controller="new-post"
export default class extends Controller {

  static targets = ["category", "subcategory"]

  connect() {
    data.forEach(item => {
      const option = document.createElement('option');
      option.text = item.category;
      this.categoryTarget.add(option);
    });
  }

  changeSub(event) {
    const category = event.target.value;
    const selectedData = data.find(item => item.category === category);
    this.subcategoryTarget.innerHTML = '';
    selectedData.subcategories.forEach(subcategory => {
      const option = document.createElement('option');
      option.text = subcategory;
      this.subcategoryTarget.add(option);
    });
  }
}
