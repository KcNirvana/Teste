.class public abstract Lcom/facebook/ads/internal/view/component/a/c;
.super Landroid/widget/RelativeLayout;


# static fields
.field static final a:I

.field static final b:I


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/component/j;

.field private final d:Lcom/facebook/ads/internal/view/component/a;

.field private final e:Lcom/facebook/ads/internal/s/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/c;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41e00000    # 28.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/c;->b:I

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Z)V
    .locals 11

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->e:Lcom/facebook/ads/internal/s/c;

    new-instance v0, Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->d()Z

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->e()Z

    move-result v4

    const-string v5, "com.facebook.ads.interstitial.clicked"

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v7

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->c()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v8

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->e()Lcom/facebook/ads/internal/x/a;

    move-result-object v9

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->f()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v10

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->d:Lcom/facebook/ads/internal/view/component/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/c;->d:Lcom/facebook/ads/internal/view/component/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->b()Z

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->c()Z

    move-result v5

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/j;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/h;ZZZ)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/c;->c:Lcom/facebook/ads/internal/view/component/j;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/c;->c:Lcom/facebook/ads/internal/view/component/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->c:Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/c;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmpl-double v3, p3, v3

    if-lez v3, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double p3, p3, v3

    if-gez p3, :cond_0

    const/4 p3, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/component/a/c;->d:Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object p1

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract a()Z
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/internal/s/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->e:Lcom/facebook/ads/internal/s/c;

    return-object v0
.end method

.method protected getCtaButton()Lcom/facebook/ads/internal/view/component/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->d:Lcom/facebook/ads/internal/view/component/a;

    return-object v0
.end method

.method public getExactMediaHeightIfAvailable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExactMediaWidthIfAvailable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTitleDescContainer()Lcom/facebook/ads/internal/view/component/j;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/c;->c:Lcom/facebook/ads/internal/view/component/j;

    return-object v0
.end method
