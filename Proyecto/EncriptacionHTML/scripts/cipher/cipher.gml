/// cipher(text, value)
/// @desc Cifra el texto utilizando un desplazamiento específico en el alfabeto.

function cipher(text, value) {
    var result = "";
    var alphabetLower = "abcdefghijklmnopqrstuvwxyz";
    var alphabetUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var alphabetLength = string_length(alphabetLower);

    for (var i = 1; i <= string_length(text); i++) {
        var char = string_char_at(text, i);
        var index;

        if (char >= "a" && char <= "z") {
            index = string_pos(char, alphabetLower);
            var newIndex = (index + value - 1) mod alphabetLength + 1;
            result += string_char_at(alphabetLower, newIndex);
        } else if (char >= "A" && char <= "Z") {
            index = string_pos(char, alphabetUpper);
            var newIndex = (index + value - 1) mod alphabetLength + 1;
            result += string_char_at(alphabetUpper, newIndex);
        } else {
            result += char; // Si el carácter no está en el alfabeto, se mantiene igual.
        }
    }

    return result;
}