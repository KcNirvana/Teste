.class public Lcom/google/ads/interactivemedia/v3/internal/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/h;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/h;

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->a:Lcom/google/ads/interactivemedia/v3/internal/h;

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/h;->c:Lcom/google/ads/interactivemedia/v3/internal/h;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    :goto_0
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->c:Z

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;)Lcom/google/ads/interactivemedia/v3/internal/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/d;->a(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;Z)Lcom/google/ads/interactivemedia/v3/internal/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;Z)Lcom/google/ads/interactivemedia/v3/internal/d;
    .locals 1

    const-string v0, "Impression owner is null"

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/af;->a(Lcom/google/ads/interactivemedia/v3/internal/h;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/d;-><init>(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impressionOwner"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->a:Lcom/google/ads/interactivemedia/v3/internal/h;

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "videoEventsOwner"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isolateVerificationScripts"

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
