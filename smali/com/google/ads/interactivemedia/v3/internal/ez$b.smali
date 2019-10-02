.class public final Lcom/google/ads/interactivemedia/v3/internal/ez$b;
.super Lcom/google/ads/interactivemedia/v3/internal/ez$a;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/eu;)V
    .locals 3

    const-string v0, "Invalid content type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ez$a;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/eu;I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$b;->c:Ljava/lang/String;

    return-void
.end method
