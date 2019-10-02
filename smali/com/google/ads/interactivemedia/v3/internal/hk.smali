.class public final Lcom/google/ads/interactivemedia/v3/internal/hk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/gq;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/gy;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Lcom/google/ads/interactivemedia/v3/internal/gy;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/gp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/fz;",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/gp<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/hw;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/gs;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/gs;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Lcom/google/ads/interactivemedia/v3/internal/gy;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/hk;->a(Lcom/google/ads/interactivemedia/v3/internal/gy;Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gs;)Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/gy;Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gs;)Lcom/google/ads/interactivemedia/v3/internal/gp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/gy;",
            "Lcom/google/ads/interactivemedia/v3/internal/fz;",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/gs;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/gp<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/internal/gs;->a()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/hw;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/gy;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/hd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/hd;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/gp;

    if-eqz p4, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gp;

    goto :goto_2

    :cond_0
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/gq;

    if-eqz p4, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gq;

    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/gq;->a(Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object p1

    goto :goto_2

    :cond_1
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/gm;

    if-nez p4, :cond_3

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ge;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    move-object p4, p1

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/gm;

    move-object v2, p4

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/ge;

    if-eqz p4, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ge;

    :cond_5
    move-object v3, v0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/hs;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/hs;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gm;Lcom/google/ads/interactivemedia/v3/internal/ge;Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gq;)V

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gp;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/gp;

    move-result-object p1

    :cond_6
    return-object p1
.end method
