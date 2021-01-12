const _ = {
    clamp (num, lowerLim, upperLim) {
        if (lowerLim >= upperLim) {
            return undefined;
        }
        if (num > upperLim) {
            return upperLim;
        }else if (num < lowerLim)
        {
            return lowerLim;
        }else return num;
    },

    inRange (num, start, end) {
        if (end === undefined || end === null) {
            end = start;
            start = 0;
        }else if (start > end)
        {
            let tempStart = start;
            start = end;
            end = tempStart;
        }
        if (num < end && num >= start) {
            return true;
        }else return false;
    },

    words (str) {
        return str.split(' ');
    },

    pad (str, length) {
        if (str.length > length) {
            return str;
        }
        let beginPad = Math.floor((length - str.length)/2);
        let endPad = Math.round((length - str.length)/2);
        let paddedStr = str.padStart(beginPad + str.length, ' ');
        paddedStr = paddedStr.padEnd(endPad + paddedStr.length, ' ');
        return paddedStr;
    },

    has (object, key) {
        let hasValue = object[key];
        return hasValue !== undefined;
    },

    invert (object) {
        let reversedObject ={};
        for (let key in object) {
            const oldVal = object[key];
            reversedObject[oldVal] = key;
        }
        return reversedObject;
    },

    findKey (object, predicate) {
        for (let key in object) {
            if (predicate(object[key])) {
                return key;
            }
        }
        return undefined;
    },
 
    drop (array, numChop) {
        if (numChop === undefined || numChop === null){
            numChop = 1;
        }
        return array.slice(numChop);
    },

    dropWhile (array, predicate) {
        let newObj = array;
        let index = 0;
        do {
            if (predicate(array[index], index)) {
                newObj = newObj.slice(1);
            }
            index++;
        } while (predicate(array[index], index) || index >= array.length);
        return newObj;
    },

    chunk (array, size) {
        if (size === undefined || size === null) {
            size = 1;
        }
        let arrOfChunks = [];

        for (let i = 0; i < array.length; i = i + size) {
            arrOfChunks.push(array.slice(i, i + size));
        }
        return arrOfChunks;
    }
};

module.exports = _;
