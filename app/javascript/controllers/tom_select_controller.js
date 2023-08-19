import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

export default class extends Controller {
  connect() {
    new TomSelect(this.element)
  }

  // static values = { options: Object }

  // new TomSelect("#select-beast",{
  //   create: true,
  //   sortField: {
  //     field: "text",
  //     direction: "asc"
  //   }
  // });
}
