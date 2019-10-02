.class public Lcom/google/ads/interactivemedia/v3/internal/ai;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/am$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/an;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->b:Lcom/google/ads/interactivemedia/v3/internal/an;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->b:Lcom/google/ads/interactivemedia/v3/internal/an;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ao;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ao;-><init>(Lcom/google/ads/interactivemedia/v3/internal/am$b;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/an;->b(Lcom/google/ads/interactivemedia/v3/internal/am;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->b:Lcom/google/ads/interactivemedia/v3/internal/an;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/aq;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/aq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/am$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/an;->b(Lcom/google/ads/interactivemedia/v3/internal/am;)V

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ai;->b:Lcom/google/ads/interactivemedia/v3/internal/an;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ap;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ap;-><init>(Lcom/google/ads/interactivemedia/v3/internal/am$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/an;->b(Lcom/google/ads/interactivemedia/v3/internal/am;)V

    return-void
.end method
