.class public final Lcom/google/ads/interactivemedia/v3/internal/bu$c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/bu$b;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bu$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bu$c;->a:Lcom/google/ads/interactivemedia/v3/internal/bu$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bu$c;->a:Lcom/google/ads/interactivemedia/v3/internal/bu$b;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/bu$c;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bu$c;->a:Lcom/google/ads/interactivemedia/v3/internal/bu$b;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bu$c;->a:Lcom/google/ads/interactivemedia/v3/internal/bu$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bu$b;->hashCode()I

    move-result v0

    return v0
.end method
