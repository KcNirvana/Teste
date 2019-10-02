.class final Lcom/google/ads/interactivemedia/v3/internal/cw$d;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:[Lcom/google/ads/interactivemedia/v3/internal/de;

.field public b:Lcom/google/ads/interactivemedia/v3/internal/bj;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/de;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->a:[Lcom/google/ads/interactivemedia/v3/internal/de;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->c:I

    return-void
.end method
