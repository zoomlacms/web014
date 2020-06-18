function lock(evt) {//alt+ 快捷键
    var a;
    var res;
    if (navigator.appName == "Microsoft Internet Explorer") {
        a = event.keyCode;
        res = event.altKey;
    } else {
        a = evt.which;
        res = evt.altKey;
    }
    if (a == 13) {
        event.keyCode = 9;
    }
    if ((a == 81) && res) {
        showWindow('Lockin.aspx', 900, 460);
    }
    if ((a == 85) && res) {
        window.open("../user/");
    }
    if ((a == 74) && res) {
        modalDialog('/Common/calc.html', 'calculator', 400, 300)
    }
    if ((a == 73) && res) {
        window.open("../");
    }
    if ((a == 68) && res) {
        window.location.href = "?ShowCaculator=true";
    }
    if ((a == 72) && res) {
        window.open("../help.html");
    }
    if ((a == 77) && res) {
        ShowMain('Content/ModelGuide.aspx', 'Content/ModelManage.aspx?ModelType=1');
    }
    if ((a == 84) && res) {
        ShowMain('Template/TemplateLink.aspx', 'Template/TemplateSet.aspx');
    }
    if ((a == 83) && res) {
        ShowMain('Template/TemplateLink.aspx', 'Template/CSSManage.aspx');
    }
    if ((a == 76) && res) {
        ShowMain('Template/TemplateLink.aspx', 'Template/LabelManage.aspx');
    }
    if ((a == 67) && res) {
        ShowMain('Template/TemplateLink.aspx', 'Template/CloudLead.aspx');

    }
    if ((a == 78) && res) {
        ShowMain('Profile/QuickLinks.aspx', 'Page.aspx'); 

    }
}
document.onkeydown = lock;