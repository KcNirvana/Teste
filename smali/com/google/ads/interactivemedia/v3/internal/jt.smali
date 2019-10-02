.class public Lcom/google/ads/interactivemedia/v3/internal/jt;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static a:Lcom/google/ads/interactivemedia/v3/internal/jt;


# instance fields
.field public b:Z

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->b:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->c:[I

    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->e:I

    const v1, 0x66ffffff

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:I

    const-string v1, "Advertisement"

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->h:Ljava/lang/String;

    const v1, -0x333334

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->i:I

    const-string v2, "Arial"

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->j:Ljava/lang/String;

    const/16 v2, 0xc

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->k:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->l:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Z

    const-string v0, "\u00b7\u00b7\u00b7"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Ljava/lang/String;

    const-string v0, "Learn More "

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Ljava/lang/String;

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:I

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->q:F

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->t:I

    return-void

    :array_0
    .array-data 4
        -0x78000000
        -0x78000000
    .end array-data
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/google/ads/interactivemedia/v3/internal/jt;
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jt;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jt;-><init>()V

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->b:Z

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    return-object v0
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 3

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/b;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->getClickThruUrl()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/jx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "IMASDK"

    const-string v1, "Malformed clickthrough URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Z

    :goto_1
    return-void
.end method
