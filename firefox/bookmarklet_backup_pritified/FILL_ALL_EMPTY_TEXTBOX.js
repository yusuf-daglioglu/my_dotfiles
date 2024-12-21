javascript:
/* it only fill the empty inputs. fill the important empty manually and then call this script. */
function isPositive(number) {

    if (!number || number <= 0) {
        return false;
    }

    if (number > 0) {
        return true;
    }

    console.log("number is unknown type (debug this case): " + number);
    throw new Exception();
}

function ___generateRandomInteger(min, max) {
    var ___min;
    var ___max;

    if (!isPositive(min) && !isPositive(max)) {
        ___min = 1000;
        ___max = 9999;
    } else if (isPositive(min) && !isPositive(max)) {
        ___min = min;
        ___max = min + 1000;
    } else if (!isPositive(min) && isPositive(max)) {
        ___max = max;
        ___min = max - 1000;
    } else if (isPositive(min) && isPositive(max)) {
        ___max = max;
        ___min = min;
    }

    var randomInt = parseInt(Math.floor(Math.random() * (parseInt(___max) - parseInt(___min))) + parseInt(___min));

    if (___stringContains(randomInt.toString(), "e+")) {

        randomInt = ___toLongNumber(randomInt);
    }

    return randomInt;
}

function ___generateRandomIntegerByCharLength(minLength, maxLenght) {

    /* JS returns -1 if maxLength or minLength attribute is undefined. */

    /* JS have trouble with big numbers and its depends on platform. Therefor we generate minimum number as possible. */

    var lenghtOfString = 0;
    if (!isPositive(minLength) && !isPositive(maxLenght)) {
        lenghtOfString = 4;
    } else if (isPositive(minLength) && !isPositive(maxLenght)) {
        lenghtOfString = minLength;
    } else if (!isPositive(minLength) && isPositive(maxLenght)) {

        if (maxLenght > 4) {
            lenghtOfString = 4;
        } else {
            lenghtOfString = maxLenght;
        }

    } else if (isPositive(minLength) && isPositive(maxLenght)) {
        lenghtOfString = minLength;
    }

    return ___generateRandomNumberWithLength(lenghtOfString);
}

function ___generateRandomNumberWithLength(staticLenght) {

    if (staticLenght == 3) {
        return ___generateRandomInteger(100, 999);
    } else if (staticLenght == 2) {
        return ___generateRandomInteger(10, 99);
    } else if (staticLenght == 1) {
        return ___generateRandomInteger(1, 9);
    }

    var longNumberStr = "";
    var i = 0;
    var numberToAdd = 0;
    for (i = 0; i < staticLenght; i++) {
        longNumberStr = longNumberStr + numberToAdd;
        numberToAdd++;
        if (numberToAdd === 10) {
            numberToAdd = 0;
        }
    }

    longNumberStr = longNumberStr + ___generateRandomInteger();
    return longNumberStr;
}

function ___toLongNumber(originalNumber) {

    var splitNumber = originalNumber.toString().split('e');

    var result;
    if (splitNumber[1]) {
        var regexMatch = splitNumber[0].match(/^([^.]+)\.?(.*)$/);
        result = /* integer part */ regexMatch[1] +
                /* fractional part */ regexMatch[2] +
                /* trailing zeros */ Array(splitNumber[1] - regexMatch[2].length + 1).join('0');
    } else {
        result = splitNumber[0];
    }
    return result;
}

function ___stringContains(str, subStr) {
    if (!subStr || !str) {
        return false;
    }
    return str.toLowerCase().includes(subStr.toLowerCase());
}

function ___attributesContains(el, subStr) {
    if (!subStr || !el) {
        return false;
    }

    var type = el.getAttribute("type");
    var name = el.getAttribute("name");
    var id = el.getAttribute("id");

    return ___stringContains(type, subStr) || ___stringContains(name, subStr) || ___stringContains(id, subStr);
}

function ___maxLenghtToMaxNumber(maxLenght) {

    var longNumber = "";
    var i = 0;
    for (i = 0; i < maxLenght; i++) {
        longNumber = longNumber + 9;
    }
    return longNumberStr;
}

function ___fillElements() {
    var ___all = document.getElementsByTagName('input');

    for (var i = 0; i < ___all.length; i++) {

        var ___el = ___all[i];

        if (!___el.value) {

            if (___el.type === "text") {
                /* if 'type=text' contains 'password' or 'email' in 'name' attribute, it will override by below code blocks. */
                ___el.value = ___el.name + ___generateRandomInteger();
            }

            if (___attributesContains(___el, "password") || ___attributesContains(___el, "sifre")) {
                /* upper case + lower case + symbols */
                ___el.value = ___el.name + ___generateRandomInteger() + "_?!Ut";
            }

            if (___attributesContains(___el, "mail")) {
                ___el.value = "email" + ___generateRandomInteger() + "@hotmail.com";
            }

            if (___attributesContains(___el, "url")) {
                ___el.value = "http://www.url" + ___generateRandomInteger() + ".com";
            }

            if (___attributesContains(___el, "number") || ___attributesContains(___el, "numara")) {

                var maxLength;
                var minLength;

                if (___el.type === "text") {

                    /* JS returns -1 if maxLength or minLength attribute is undefined. */
                    ___el.value = ___generateRandomIntegerByCharLength(___el.minLength, ___el.maxLength);

                } else if (___el.type === "number") {
                    /* JS returns -1 if max or min attribute is undefined. */
                    ___el.value = ___generateRandomInteger(___el.min, ___el.max);
                }
            }

            if (___attributesContains(___el, "phone") || ___attributesContains(___el, "telefon")) {
                ___el.value = "543123" + ___generateRandomInteger();
            }

            if (___attributesContains(___el, "card") || ___attributesContains(___el, "kart")) {

                var VISA_16_CHAR_1 = "4539343833685007";
                var VISA_16_CHAR_2 = "4539878162207931";
                var MASTERCARD_16_CHAR_1 = "5412152764114948";
                var MASTERCARD_16_CHAR_2 = "2720998822049219";
                ___el.value = MASTERCARD_16_CHAR_1;
            }

            if (___attributesContains(___el, "cvv")) {
                ___el.value = ___generateRandomInteger();
            }

            if (___el.value) {
                console.log(___el);
                console.log("new value: " + ___el.value);
            }
        }
    }
}

/* self executed function should be here. otherwise bookmarklet breaks the web page. */
(function () {
    ___fillElements();
})();
