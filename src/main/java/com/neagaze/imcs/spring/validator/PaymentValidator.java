package com.neagaze.imcs.spring.validator;

import com.neagaze.imcs.db.entities.Customer;
import com.neagaze.imcs.db.entities.PaymentMethod;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by neaGaze on 11/18/17.
 */
@Component
public class PaymentValidator implements Validator {

    final static org.apache.log4j.Logger logger = Logger.getLogger(PaymentValidator.class);

    @Override
    public boolean supports(Class<?> aClass) {
        logger.debug("supports called");
        if (aClass.equals(Customer.class)) {
            return true;
        }

        return false;
    }

    @Override
    public void validate(Object o, Errors errors) {

        logger.debug("validate called");
        System.out.println("validate called");
        PaymentMethod customer = (PaymentMethod) o;

        ValidationUtils.rejectIfEmpty(errors, "payment", "empty paymentMethod");
    }
}
