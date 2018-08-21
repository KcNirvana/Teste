.class public Lcom/miui/personalassistant/util/QuickStartUtil;
.super Ljava/lang/Object;
.source "QuickStartUtil.java"


# static fields
.field private static final MIREF:Ljava/lang/String; = "PersonalAssistant_QuickStart"

.field public static final PACKAGENAME:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final TAG:Ljava/lang/String; = "QuickStartUtil"

.field private static final sMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "10"

    const-string/jumbo v2, "getScannerIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "12"

    const-string/jumbo v2, "getScannerIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "15"

    const-string/jumbo v2, "getScannerIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "20"

    const-string/jumbo v2, "getNoteIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "getSoundRecorderIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "50"

    const-string/jumbo v2, "getScitentificCalculatorIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "51"

    const-string/jumbo v2, "getCalculatorIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "66"

    const-string/jumbo v2, "getWXTimeLineIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "67"

    const-string/jumbo v2, "getWXTimeLineIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "70"

    const-string/jumbo v2, "getIntentAlipayScan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "71"

    const-string/jumbo v2, "getIntentAlipayCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "getUriIntentOne"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "90"

    const-string/jumbo v2, "getUriIntentZero"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "120"

    const-string/jumbo v2, "getIntentTransCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "121"

    const-string/jumbo v2, "getIntentMiPay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "122"

    const-string/jumbo v2, "getIntentMiFareCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "130"

    const-string/jumbo v2, "getIntentGarbageCleanup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "181"

    const-string/jumbo v2, "getIntentMiStoreFavorite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "190"

    const-string/jumbo v2, "getIntentTaobaoStore"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCalculatorIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "miref"

    const-string/jumbo v2, "PersonalAssistant_QuickStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentAlipayCode(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 6

    :try_start_0
    const-string/jumbo v3, "QuickStartUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIntentAlipayCode function="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "QuickStartUtil"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIntentAlipayScan(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "10000007"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "source"

    const-string/jumbo v6, "shortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "appId"

    const-string/jumbo v6, "10000007"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "REALLY_STARTAPP"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "showOthers"

    const-string/jumbo v6, "YES"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "startFromExternal"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "REALLY_DOSTARTAPP"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "sourceId"

    const-string/jumbo v6, "shortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ap_framework_sceneId"

    const-string/jumbo v6, "20000001"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mExtras"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    const-string/jumbo v5, "QuickStartUtil"

    const-string/jumbo v6, "Exception"

    invoke-static {v5, v6, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getIntentByMethodName(Ljava/lang/String;Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 7

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-class v0, Lcom/miui/personalassistant/util/QuickStartUtil;

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/miui/personalassistant/model/FunctionLaunch;

    aput-object v6, v3, v5

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "QuickStartUtil"

    const-string/jumbo v5, "Exception:"

    invoke-static {v3, v5, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto :goto_0
.end method

.method public static getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method public static getIntentFromMethod(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->matchIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentByMethodName(Ljava/lang/String;Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method private static getIntentGarbageCleanup(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.cleanmaster"

    const-string/jumbo v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentMiFareCard(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "card_group_id"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentMiPay(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "card_group_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentMiStoreFavorite(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.shop2.pluginRoot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "transition_type"

    const-string/jumbo v2, "CustomActivityTransition"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pluginId"

    const-string/jumbo v2, "118"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pluginPrevious"

    const-string/jumbo v2, "p10031androidpersonalusercenter_enter_item001012#rid=121d194c4a1d839b37f2269220de50d1&t=normal&page=personal&act=otherp171"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentTaobaoStore(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "weex_original_url"

    const-string/jumbo v2, "https://h5.m.taobao.com/weex/viewpage.htm?_wx_tpl=//h5.m.taobao.com/app/wefollow/v1/follow/entry-min.js&weex_original_url=https%3A%2F%2Fh5.m.taobao.com%2Fwe%2Fweex%2Ffollow.html%3F_wx_tpl%3D%2F%2Fh5.m.taobao.com%2Fapp%2Fwefollow%2Fv1%2Ffollow%2Fentry-min.js"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "referrer"

    const-string/jumbo v2, "http://h5.m.taobao.com/awp/mtb/mtb.htm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "URL_REFERER_ORIGIN"

    const-string/jumbo v2, "https://h5.m.taobao.com/weex/viewpage.htm?_wx_tpl=//h5.m.taobao.com/app/wefollow/v1/follow/entry-min.js&weex_original_url=https%3A%2F%2Fh5.m.taobao.com%2Fwe%2Fweex%2Ffollow.html%3F_wx_tpl%3D%2F%2Fh5.m.taobao.com%2Fapp%2Fwefollow%2Fv1%2Ffollow%2Fentry-min.js&weex_original_url=https%3A%2F%2Fh5.m.taobao.com%2Fweex%2Fviewpage.htm%3F_wx_tpl%3D%2F%2Fh5.m.taobao.com%2Fapp%2Fwefollow%2Fv1%2Ffollow%2Fentry-min.js%26weex_original_url%3Dhttps%253A%252F%252Fh5.m.taobao.com%252Fwe%252Fweex%252Ffollow.html%253F_wx_tpl%253D%252F%252Fh5.m.taobao.com%252Fapp%252Fwefollow%252Fv1%252Ffollow%252Fentry-min.js"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "weexBundleUrl"

    const-string/jumbo v2, "//h5.m.taobao.com/app/wefollow/v1/follow/entry-min.js?weex_original_url=https%3A%2F%2Fh5.m.taobao.com%2Fwe%2Fweex%2Ffollow.html%3F_wx_tpl%3D%2F%2Fh5.m.taobao.com%2Fapp%2Fwefollow%2Fv1%2Ffollow%2Fentry-min.js"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "weexUrl"

    const-string/jumbo v2, "https://h5.m.taobao.com/weex/viewpage.htm?_wx_tpl=//h5.m.taobao.com/app/wefollow/v1/follow/entry-min.js&weex_original_url=https%3A%2F%2Fh5.m.taobao.com%2Fwe%2Fweex%2Ffollow.html%3F_wx_tpl%3D%2F%2Fh5.m.taobao.com%2Fapp%2Fwefollow%2Fv1%2Ffollow%2Fentry-min.js"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "WXActivity:h5.m.taobao.com/app/wefollow/v1/follow/entry-min.js"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getIntentTransCard(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event_source"

    const-string/jumbo v2, "shortcut_of_trans_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getNoteIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getScannerIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 5

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "miui.intent.action.scanner"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "fromApp"

    const-string/jumbo v4, "com.miui.personalassistant"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "miref"

    const-string/jumbo v4, "PersonalAssistant_QuickStart"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "extra_intent_module_index"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "miui.intent.action.scanner"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/IntentUtil;->isIntentExisting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v3, "android.intent.action.scanner"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getScitentificCalculatorIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getCalculatorIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_is_scientific"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static getSoundRecorderIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "miref"

    const-string/jumbo v2, "PersonalAssistant_QuickStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getUriIntentOne(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QuickStartUtil"

    const-string/jumbo v3, "URISyntaxException:"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getUriIntentZero(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QuickStartUtil"

    const-string/jumbo v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getWXTimeLineIntent(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentFromIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sns_timeline_NeedFirstLoadint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static matchIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/util/QuickStartUtil;->sMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static startAppByFunction(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;)V
    .locals 11

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->getInstance()Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->isStartByImageHelper(Lcom/miui/personalassistant/model/FunctionLaunch;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAppByFunction function="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/miui/personalassistant/util/QuickStartUtil;->matchIconModel(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "QuickStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "methodName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8, p1}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentByMethodName(Ljava/lang/String;Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v0, "QuickStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getComponent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const v3, 0x10008000

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/16 v0, 0x3e7

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    :goto_2
    :try_start_1
    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "QuickStartUtil"

    const-string/jumbo v1, "PendingIntent.CanceledException"

    invoke-static {v0, v1, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "QuickStartUtil"

    const-string/jumbo v1, "Exception"

    invoke-static {v0, v1, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Util;->createIntentByUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v9, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    const v1, 0x10008000

    invoke-static {p0, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_2
.end method
