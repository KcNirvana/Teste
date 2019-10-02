.class public Lcom/facebook/ads/internal/m/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/m/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/facebook/ads/internal/m/d;

.field private d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/m/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/m/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/m/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/m/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    return-object v0
.end method

.method public a(Lcom/facebook/ads/internal/m/a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Lcom/facebook/ads/internal/m/a;
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    iget-object v1, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    iget v1, p0, Lcom/facebook/ads/internal/m/c;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/m/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/m/c;->b:I

    iget-object v1, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->a:Ljava/util/List;

    iget v1, p0, Lcom/facebook/ads/internal/m/c;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/m/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ct"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/w/b/v;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/m/d;->l()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()J
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/m/c;->c:Lcom/facebook/ads/internal/m/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/m/d;->l()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
