.class public final Lcom/google/ads/interactivemedia/v3/internal/ex;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fc;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/fc;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fc;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fc;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/fc;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/fc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;Lcom/google/ads/interactivemedia/v3/internal/fc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->a:Lcom/google/ads/interactivemedia/v3/internal/fc;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/ey;

    invoke-direct {p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ey;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fb;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->b:Lcom/google/ads/interactivemedia/v3/internal/fc;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-direct {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->c:Lcom/google/ads/interactivemedia/v3/internal/fc;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/es;

    invoke-direct {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/es;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->d:Lcom/google/ads/interactivemedia/v3/internal/fc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;Ljava/lang/String;Z)V
    .locals 8

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ew;

    const/4 v2, 0x0

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, v7

    move-object v1, p3

    move-object v3, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ew;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/fq;Lcom/google/ads/interactivemedia/v3/internal/fb;IIZ)V

    invoke-direct {p0, p1, p2, v7}, Lcom/google/ads/interactivemedia/v3/internal/ex;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;Lcom/google/ads/interactivemedia/v3/internal/fc;)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/fc;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/eu;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->c:Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->b:Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->c:Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->d:Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->a:Lcom/google/ads/interactivemedia/v3/internal/fc;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fc;->a(Lcom/google/ads/interactivemedia/v3/internal/eu;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/fc;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ex;->e:Lcom/google/ads/interactivemedia/v3/internal/fc;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
