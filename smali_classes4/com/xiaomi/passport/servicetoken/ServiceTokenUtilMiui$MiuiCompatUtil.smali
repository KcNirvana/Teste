.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;
.super Ljava/lang/Object;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiCompatUtil"
.end annotation


# static fields
.field private static volatile cachedParcelIssueCheckResult:Ljava/lang/Boolean;

.field private static volatile cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasServiceTokenResultParcelCompatIssue()Z
    .locals 5

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isStable(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;-><init>(II)V

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isDevButNotAlpha(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;-><init>(III)V

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static hasWebLoginCompatIssue()Z
    .locals 6

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isStable(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;-><init>(II)V

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isDevButNotAlpha(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/4 v3, 0x6

    const/16 v4, 0xb

    const/16 v5, 0x19

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;-><init>(III)V

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
