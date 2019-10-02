.class public Lcom/facebook/ads/internal/adapters/p;
.super Lcom/facebook/ads/internal/adapters/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/p$a;,
        Lcom/facebook/ads/internal/adapters/p$b;
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/ads/internal/adapters/i;

.field private d:Lcom/facebook/ads/internal/t/k;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Lcom/facebook/ads/internal/t/f;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/facebook/ads/internal/adapters/p$a;

.field private n:Lcom/facebook/ads/internal/adapters/p$b;

.field private o:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/adapters/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/x/a;)V

    sget-object p1, Lcom/facebook/ads/internal/adapters/p$a;->a:Lcom/facebook/ads/internal/adapters/p$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->m:Lcom/facebook/ads/internal/adapters/p$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->n:Lcom/facebook/ads/internal/adapters/p$b;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    return-void
.end method

.method private b(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/p;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Json exception"

    return-object p1
.end method

.method private c(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "origin"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "{x:%d, y:%d}"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "{h:%d, w:%d}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v1, "clickable"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unknown"

    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_1

    const-string v1, "button"

    goto :goto_1

    :cond_1
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const-string v1, "text"

    goto :goto_1

    :cond_2
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const-string v1, "image"

    goto :goto_1

    :cond_3
    instance-of v2, p1, Lcom/facebook/ads/MediaView;

    if-eqz v2, :cond_4

    const-string v1, "mediaview"

    goto :goto_1

    :cond_4
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    const-string v1, "viewgroup"

    :cond_5
    :goto_1
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v7, v2, :cond_6

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/adapters/p;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const-string p1, "list"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    return-object v0
.end method

.method private d(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/i;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->m:Lcom/facebook/ads/internal/adapters/p$a;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/p$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->n:Lcom/facebook/ads/internal/adapters/p$b;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/t/f;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/t/k;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->l:Ljava/util/List;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/t/k;

    if-eqz v0, :cond_1

    const-string v0, "nti"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/t/k;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/k;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "nhs"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "nmv"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->g:Z

    if-eqz v0, :cond_4

    const-string v0, "nmvap"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->j:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "view"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/adapters/p;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->j:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "snapshot"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/adapters/p;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->h:Z

    if-eqz v0, :cond_7

    const-string v0, "niv"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->m:Lcom/facebook/ads/internal/adapters/p$a;

    if-eqz v0, :cond_8

    const-string v0, "precache_media"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->m:Lcom/facebook/ads/internal/adapters/p$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/p$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->i:Z

    if-eqz v0, :cond_9

    const-string v0, "ucvr"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/t/f;

    if-eqz v0, :cond_a

    const-string v0, "namw"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/t/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/f;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "namh"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/t/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->n:Lcom/facebook/ads/internal/adapters/p$b;

    if-eqz v0, :cond_b

    const-string v0, "narar"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->n:Lcom/facebook/ads/internal/adapters/p$b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/p$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "extra_hints"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->o:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/i;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->e:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->g:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->h:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->i:Z

    return-void
.end method
