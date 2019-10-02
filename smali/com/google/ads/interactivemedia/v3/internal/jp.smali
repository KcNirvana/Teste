.class public Lcom/google/ads/interactivemedia/v3/internal/jp;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jp;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jp;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/iy;Landroid/os/Handler;)[Lcom/google/ads/interactivemedia/v3/internal/bq;
    .locals 18

    move-object/from16 v0, p0

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/ev;

    const/high16 v1, 0x10000

    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/ev;-><init>(I)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ex;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jp;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jp;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v1, v5, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/ex;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/fb;Ljava/lang/String;Z)V

    new-instance v17, Lcom/google/ads/interactivemedia/v3/internal/cf;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/jp;->c:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->d()Lcom/google/ads/interactivemedia/v3/internal/iy$b;

    move-result-object v7

    const/4 v1, 0x0

    new-array v9, v1, [Lcom/google/ads/interactivemedia/v3/internal/cc;

    const/high16 v5, 0x1000000

    const/4 v8, 0x0

    move-object/from16 v1, v17

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/cf;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/et;Lcom/google/ads/interactivemedia/v3/internal/eq;ILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/cf$a;I[Lcom/google/ads/interactivemedia/v3/internal/cc;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bi;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/jp;->a:Landroid/content/Context;

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->e()Lcom/google/ads/interactivemedia/v3/internal/iy$e;

    move-result-object v15

    const/4 v11, 0x1

    const-wide/16 v12, 0x1388

    const/16 v16, 0x32

    move-object v7, v1

    move-object/from16 v9, v17

    move-object/from16 v14, p2

    invoke-direct/range {v7 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/bi;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;IJLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bi$a;I)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/be;

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->f()Lcom/google/ads/interactivemedia/v3/internal/iy$c;

    move-result-object v13

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/jp;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/bs;->a(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/bs;

    move-result-object v14

    const/4 v10, 0x0

    const/4 v15, 0x3

    move-object v7, v2

    move-object/from16 v8, v17

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/be;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/be$a;Lcom/google/ads/interactivemedia/v3/internal/bs;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/ads/interactivemedia/v3/internal/bq;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a()I

    move-result v4

    aput-object v1, v3, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->b:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a()I

    move-result v1

    aput-object v2, v3, v1

    return-object v3
.end method
