import { Controller } from "@hotwired/stimulus"
import { Viewer, WebIFCLoaderPlugin } from "@xeokit/xeokit-sdk";

export default class extends Controller {
  connect() {

    console.log("Hello from view fucking ifc controller stimulus")

    const viewer = new Viewer({
      canvasId: "myCanvas",
      transparent: true
    });

    viewer.camera.eye = [-3.933, 2.855, 27.018];
    viewer.camera.look = [4.400, 3.724, 8.899];
    viewer.camera.up = [-0.018, 0.999, 0.039];


    const webIFCLoader = new WebIFCLoaderPlugin(viewer, {
      wasmPath: "/"
    });

    const model = webIFCLoader.load({
      src: "",
      edges: true
    });
  }
}
