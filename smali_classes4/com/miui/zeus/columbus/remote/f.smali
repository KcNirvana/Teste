.class public Lcom/miui/zeus/columbus/remote/f;
.super Ljava/lang/Object;
.source "Servers.java"


# static fields
.field private static final a:Ljava/lang/String; = "https://test.ad.intl.xiaomi.com/"

.field private static final b:Ljava/lang/String; = "https://api.ad.intl.xiaomi.com/"

.field private static final c:Ljava/lang/String; = "https://test.ad.intl.xiaomi.com/post/csv3"

.field private static final d:Ljava/lang/String; = "https://api.ad.intl.xiaomi.com/post/csv3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    if-eqz v0, :cond_0

    const-string v0, "https://test.ad.intl.xiaomi.com/post/csv3"

    return-object v0

    :cond_0
    const-string v0, "https://api.ad.intl.xiaomi.com/post/csv3"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    if-eqz v0, :cond_0

    const-string v0, "https://test.ad.intl.xiaomi.com/post/csv3"

    return-object v0

    :cond_0
    const-string v0, "https://api.ad.intl.xiaomi.com/post/csv3"

    return-object v0
.end method
