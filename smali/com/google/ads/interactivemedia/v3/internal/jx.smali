.class public Lcom/google/ads/interactivemedia/v3/internal/jx;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/kp;->c()Lcom/google/ads/interactivemedia/v3/internal/kp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/kp;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
