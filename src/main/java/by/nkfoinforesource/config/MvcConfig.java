package by.nkfoinforesource.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
@EnableWebMvc
@ComponentScan("by.nkfoinforesource")
public class MvcConfig implements WebMvcConfigurer {

    private static final String RESOLVER_JSP_PREFIX = "/WEB-INF/views/";
    private static final String RESOLVER_JSP_SUFFIX = ".jsp";
    private static final Integer RESOLVER_JSP_ORDER = 1;
    private static final String ENCODING_UTF_8 = "UTF-8";

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp(RESOLVER_JSP_PREFIX, RESOLVER_JSP_SUFFIX);
        registry.order(RESOLVER_JSP_ORDER);
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("resources/**").addResourceLocations("/resources/");
    }

    @Bean(name = "messageSource")
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:validation");
        messageSource.setDefaultEncoding(ENCODING_UTF_8);
        messageSource.setUseCodeAsDefaultMessage(true);
        messageSource.setCacheMillis(1);
        return messageSource;
    }
}
