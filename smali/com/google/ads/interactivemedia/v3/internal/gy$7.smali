.class Lcom/google/ads/interactivemedia/v3/internal/gy$7;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/hd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/gy;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/hd<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/gb;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/gy;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gy;Lcom/google/ads/interactivemedia/v3/internal/gb;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy$7;->c:Lcom/google/ads/interactivemedia/v3/internal/gy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gy$7;->a:Lcom/google/ads/interactivemedia/v3/internal/gb;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gy$7;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gy$7;->a:Lcom/google/ads/interactivemedia/v3/internal/gb;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gy$7;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
