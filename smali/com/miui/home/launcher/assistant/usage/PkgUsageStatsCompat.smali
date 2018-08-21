.class public abstract Lcom/miui/home/launcher/assistant/usage/PkgUsageStatsCompat;
.super Ljava/lang/Object;
.source "PkgUsageStatsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/usage/PkgUsageStatsCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/usage/PkgUsageStats_gte21;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/usage/PkgUsageStats_gte21;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/assistant/usage/PkgUsageStats_lte19;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/usage/PkgUsageStats_lte19;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract loadAllPackageUsageStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
