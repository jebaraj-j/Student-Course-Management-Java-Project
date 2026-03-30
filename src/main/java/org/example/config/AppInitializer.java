package org.example.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return null; // no root config
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{CourseConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"}; // maps all requests
    }
}