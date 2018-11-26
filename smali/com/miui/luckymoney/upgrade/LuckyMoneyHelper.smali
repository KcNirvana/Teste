.class public Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LuckyMoneyHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "LuckyMoneyHelper"

    const-string/jumbo v1, "start Lm service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->startLuckyMoneyService(Landroid/content/Context;)V

    return-void
.end method

.method public static startLuckyMoneyService(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {p0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/common/b/n;->aIN(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningEnable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckySoundWarningEnable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckySoundWarningLevel(I)V

    :cond_0
    return-void

    :cond_1
    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {p0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static stopLuckyMoneyService(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
