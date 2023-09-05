/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fingerprint.match;

import com.machinezoo.sourceafis.FingerprintMatcher;
import com.machinezoo.sourceafis.FingerprintTemplate;
import com.machinezoo.sourceafis.FingerprintImage;
import java.nio.file.Paths;
import java.nio.file.Files;

/**
 *
 * @author KishanVenky
 */
public class FingerprintMatch {
    
    public static boolean getImages(byte[] source,byte[] destination){
        boolean matches=false;
    try{
     FingerprintTemplate probe = new FingerprintTemplate(
    new FingerprintImage()
        .dpi(500)
        .decode(source)); 
FingerprintTemplate candidate = new FingerprintTemplate(
    new FingerprintImage()
        .dpi(500)
        .decode(destination));
double score = new FingerprintMatcher()
    .index(probe)
    .match(candidate);
matches = score >= 40;


    }catch(Exception e){
     System.out.println(e);   
    }
    return matches;
}
}
