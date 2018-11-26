.class public Lcom/miui/luckymoney/webapi/WebApiAccessHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "module"

    invoke-direct {v1, v2, p1}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string/jumbo v2, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/common/g/b;->aMB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseParams()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "device"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "t"

    const-string/jumbo v3, "stable"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "imei"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "region"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "miuiVersion"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "carrier"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "dataVersion"

    const-string/jumbo v3, "100"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "initdev"

    const-string/jumbo v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "isDiff"

    const-string/jumbo v3, "true"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static updateFloatResourceConfig()Lcom/miui/luckymoney/webapi/FloatResourceResult;
    .locals 2

    const-string/jumbo v0, "update"

    const-string/jumbo v1, "floatWindow"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/webapi/FloatResourceResult;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/webapi/FloatResourceResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static updateLuckyAlarmConfig()Lcom/miui/luckymoney/webapi/LuckyAlarmResult;
    .locals 2

    const-string/jumbo v0, "update"

    const-string/jumbo v1, "luckyAlarm"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static updateMasterSwitchConfig()Lcom/miui/luckymoney/webapi/MasterSwitchResult;
    .locals 2

    const-string/jumbo v0, "update"

    const-string/jumbo v1, "masterSwitch"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
