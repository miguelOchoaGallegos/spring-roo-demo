// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.miguelo.examplelogin.domain.Cliente;
import com.miguelo.examplelogin.service.api.ClienteService;
import com.miguelo.examplelogin.web.ClienteDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect ClienteDeserializer_Roo_EntityDeserializer {
    
    declare @type: ClienteDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClienteService
     */
    public ClienteService ClienteDeserializer.getClienteService() {
        return clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clienteService
     */
    public void ClienteDeserializer.setClienteService(ClienteService clienteService) {
        this.clienteService = clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ClienteDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ClienteDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Cliente
     * @throws IOException
     */
    public Cliente ClienteDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Cliente cliente = clienteService.findOne(id);
        if (cliente == null) {
            throw new NotFoundException("Cliente not found");
        }
        return cliente;
    }
    
}
