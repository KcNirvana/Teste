.class public final Lcom/google/ads/interactivemedia/v3/internal/er;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/er$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fb;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->a:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/er$a;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    int-to-long v4, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_3

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    cmp-long p2, p2, v2

    if-eqz p2, :cond_2

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a(I)V

    :cond_3
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/er$a;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/er$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/eu;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/er$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->f:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a()V

    :cond_4
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->e:J

    return-wide v0

    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/er$a;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/er$a;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->f:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fb;->b()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/er$a;

    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/er$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->d:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/er;->b:Lcom/google/ads/interactivemedia/v3/internal/fb;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fb;->b()V

    :cond_0
    throw v2

    :cond_1
    :goto_1
    return-void
.end method
