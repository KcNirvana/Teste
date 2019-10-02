.class public final Lcom/facebook/ads/AudienceNetworkAds;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "FBAudienceNetwork"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Context can not be null."

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/w/b/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/ads/internal/n/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static isInAdsProcess(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "Context can not be null."

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/w/b/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/w/f/a;->a:Z

    invoke-static {p0}, Lcom/facebook/ads/internal/w/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":adnw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
