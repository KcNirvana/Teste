.class public Lcom/xiaomi/accountsdk/utils/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field public static isMiuiStable:Z

.field public static versionValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "accountsdk-%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->versionValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->versionValue:Ljava/lang/String;

    return-object v0
.end method

.method public static isMiuiStableVersion()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->isMiuiStable:Z

    return v0
.end method

.method public static setToMiuiStableVersion()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->isMiuiStable:Z

    return-void
.end method
