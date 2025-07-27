package com.example.jwtauth;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Base64;
import java.util.Date;

@RestController
public class AuthenticationController {

    private static final String SECRET_KEY = "mysecretkey";

    @PostMapping("/authenticate")
    public ResponseEntity<?> authenticate(@RequestHeader("Authorization") String authHeader) {
        if (authHeader != null && authHeader.startsWith("Basic ")) {
            String base64Credentials = authHeader.substring("Basic ".length()).trim();
            byte[] credDecoded = Base64.getDecoder().decode(base64Credentials);
            String credentials = new String(credDecoded);
            final String[] values = credentials.split(":", 2);

            if ("user".equals(values[0]) && "pwd".equals(values[1])) {
                // 🔧 Fixed line below
                String jwt = Jwts.builder()
                        .setSubject(values[0])
                        .setIssuedAt(new Date())
                        .setExpiration(new Date(System.currentTimeMillis() + 1000 * 60 * 60)) // 1 hour
                        .signWith(SignatureAlgorithm.HS256, SECRET_KEY.getBytes()) // ✅ FIXED here
                        .compact();

                return ResponseEntity.ok("{\"token\":\"" + jwt + "\"}");
            }
        }
        return ResponseEntity.status(401).body("Unauthorized");
    }
}
