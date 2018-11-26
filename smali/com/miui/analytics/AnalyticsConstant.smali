.class public Lcom/miui/analytics/AnalyticsConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHANNEL_DEFAULT:Ljava/lang/String; = "default"

.field private static final CHANNEL_DEFAULT_DEVELOPMENT:Ljava/lang/String; = "default_development"

.field private static final CHANNEL_DEFAULT_STABLE:Ljava/lang/String; = "default_stable"

.field private static final CHANNEL_INTERNATIONAL:Ljava/lang/String; = "international"

.field private static final CHANNEL_INTERNATIONAL_DEVELOPMENT:Ljava/lang/String; = "international_development"

.field private static final CHANNEL_INTERNATIONAL_STABLE:Ljava/lang/String; = "international_stable"

.field static final STATS_APP_ID:Ljava/lang/String; = "2882303761517405262"

.field static final STATS_APP_KEY:Ljava/lang/String; = "5971740546262"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "international_stable"

    return-object v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "international_development"

    return-object v0

    :cond_1
    const-string/jumbo v0, "international"

    return-object v0

    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "default_stable"

    return-object v0

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "default_development"

    return-object v0

    :cond_4
    const-string/jumbo v0, "default"

    return-object v0
.end method
