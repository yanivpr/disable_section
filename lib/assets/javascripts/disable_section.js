/**
 * Created by yanivpreiss on 4/15/14.
 */

var DisableSection = DisableSection || {};
DisableSection.elements = 'a,input,select,textarea,button';

DisableSection.disableSections = function () {
    var $elementsToDisable = $(".disabled-section").find(DisableSection.elements).not(".keep-enabled");
    $elementsToDisable.addClass("disabled");
    $elementsToDisable.attr("disabled", "disabled");
};

DisableSection.subscribeDomChanges = function(){
    document.body.addEventListener("DOMNodeInserted", function(){
        DisableSection.disableSections();
    }, false);
};

$(document).ready(function(){
    DisableSection.subscribeDomChanges();
    DisableSection.disableSections();
});
