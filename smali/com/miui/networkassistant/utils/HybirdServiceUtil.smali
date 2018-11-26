.class public Lcom/miui/networkassistant/utils/HybirdServiceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_HYBIRD_PERMISSIONS:Ljava/lang/String; = "com.miui.hybrid.action.PERMISSION_PREFERENCES"

.field public static final ACTION_MIUI_HYBIRD:Ljava/lang/String; = "com.miui.hybrid.DataUsage"

.field public static final HYBIRD_PACKAGE_NAME:Ljava/lang/String; = "com.miui.hybrid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHybirdActivityLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdIntentExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->getHybirdIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getActivityLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getHybirdIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.hybrid.DataUsage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static isHybirdIntentExist(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->getHybirdIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isHybirdService(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static startHybirdTrafficSortActivity(Landroid/content/Context;IJILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->getHybirdIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "date_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "data_usage"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "network_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "imsi"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
