/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

/**
 *
 * @author KishanVenky
 */
public class SessionKey {
 
    
private static final String ALPHA_NUMERIC_STRING = "/*-+=0123456789abcdefghijklmnopqrstuvwxyz";
public static String randomAlphaNumeric(int count) {
StringBuilder builder = new StringBuilder();
while (count-- != 0) {
int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
builder.append(ALPHA_NUMERIC_STRING.charAt(character));
}
return builder.toString();
}


}
