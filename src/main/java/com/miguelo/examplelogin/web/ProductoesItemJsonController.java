package com.miguelo.examplelogin.web;
import com.miguelo.examplelogin.domain.Producto;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ProductoesItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Producto.class, type = ControllerType.ITEM)
@RooJSON
public class ProductoesItemJsonController {
}
