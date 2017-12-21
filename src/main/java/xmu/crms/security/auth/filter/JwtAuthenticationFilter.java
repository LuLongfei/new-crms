package xmu.crms.security.auth.filter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import xmu.crms.entity.User;
import xmu.crms.security.auth.JwtService;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author LuLongfei
 */
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Autowired
    private JwtService jwtService;

    private static final String ROLE_STUDENT = "STUDENT";
    private static final String ROLE_TEACHER = "TEACHER";

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String authHeader = request.getHeader("Authorization");
        String tokenHeader = "Bearer ";
        if (authHeader != null && authHeader.startsWith(tokenHeader)) {
            String authToken = authHeader.substring(tokenHeader.length());
            User user = jwtService.verifyJwt(authToken);
            if (user != null && SecurityContextHolder.getContext().getAuthentication() == null) {
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(user.getPhone(),
                        null, getAuthorities(1));
                authentication.setDetails(user);
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        }
        filterChain.doFilter(request, response);
    }

    private Collection<? extends GrantedAuthority> getAuthorities(
            int type) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        if (type == 0) {
            authorities.add(new SimpleGrantedAuthority(ROLE_STUDENT));
        } else if (type == 1) {
            authorities.add(new SimpleGrantedAuthority(ROLE_TEACHER));
        }
        return authorities;
    }
}