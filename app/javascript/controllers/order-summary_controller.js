import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    applyCode(event) {
        let total_cost_amount = event.currentTarget.dataset.totalCost;

        let totalCostDom = document.getElementById('total_cost_amount');

        totalCostDom.innerHTML = `$${total_cost_amount - 1000}`;
    }
}
