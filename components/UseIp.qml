import QtQuick 2.7

UseIpForm {
    textFieldPort.validator: IntValidator {bottom: 1024; top: 65535;}
}
