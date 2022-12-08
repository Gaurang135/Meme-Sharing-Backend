package com.crio.starter.data;

import com.fasterxml.jackson.annotation.JsonProperty;

public class MemeId {

    
    @JsonProperty("id")
    Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
