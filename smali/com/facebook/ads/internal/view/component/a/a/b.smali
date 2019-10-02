.class public abstract Lcom/facebook/ads/internal/view/component/a/a/b;
.super Lcom/facebook/ads/internal/view/component/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/component/a/a/b$b;,
        Lcom/facebook/ads/internal/view/component/a/a/b$a;,
        Lcom/facebook/ads/internal/view/component/a/a/b$d;,
        Lcom/facebook/ads/internal/view/component/a/a/b$c;,
        Lcom/facebook/ads/internal/view/component/a/a/b$e;
    }
.end annotation


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private f:Lcom/facebook/ads/internal/view/x;

.field private g:Lcom/facebook/ads/internal/view/e/a/d;

.field private h:Landroid/widget/RelativeLayout;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/graphics/Paint;

.field private k:Z

.field private l:Lcom/facebook/ads/internal/view/e/a/a;

.field private final m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/RectF;

.field private o:Z

.field private p:Z

.field private q:Lcom/facebook/ads/internal/view/component/a/a/b$a;

.field private final r:Lcom/facebook/ads/internal/view/i/b/x;

.field private final s:Lcom/facebook/ads/internal/view/i/b/d;

.field private final t:Lcom/facebook/ads/internal/view/i/b/l;

.field private final u:Lcom/facebook/ads/internal/view/i/b/j;

.field private final v:Lcom/facebook/ads/internal/view/i/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/a/b;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/a/b;->e:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;ZLjava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/component/a/c;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->n:Landroid/graphics/RectF;

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/b$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/component/a/a/b$1;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->r:Lcom/facebook/ads/internal/view/i/b/x;

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/b$2;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/component/a/a/b$2;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->s:Lcom/facebook/ads/internal/view/i/b/d;

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/b$3;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/component/a/a/b$3;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->t:Lcom/facebook/ads/internal/view/i/b/l;

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/b$4;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/component/a/a/b$4;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->u:Lcom/facebook/ads/internal/view/i/b/j;

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/b$5;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/component/a/a/b$5;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->v:Lcom/facebook/ads/internal/view/i/b/n;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->l:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->i:Ljava/lang/String;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setGravity(I)V

    sget p1, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    sget p2, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    sget p3, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/facebook/ads/internal/view/component/a/a/b;->setPadding(IIII)V

    invoke-static {p0, p4}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setUpView(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x12

    if-ge p1, p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/component/a/a/b;)Lcom/facebook/ads/internal/view/e/a/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->l:Lcom/facebook/ads/internal/view/e/a/a;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/component/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/component/a/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->q:Lcom/facebook/ads/internal/view/component/a/a/b$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->p:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->o:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->q:Lcom/facebook/ads/internal/view/component/a/a/b$a;

    invoke-interface {p0}, Lcom/facebook/ads/internal/view/component/a/a/b$a;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/component/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->o:Z

    return p1
.end method

.method private setUpView(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setUpImageView(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setUpVideoView(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setUpMediaContainer(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)V
.end method

.method public a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/b/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getCtaButton()Lcom/facebook/ads/internal/view/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getTitleDescContainer()Lcom/facebook/ads/internal/view/component/j;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/d;->c()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getAdEventManager()Lcom/facebook/ads/internal/s/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->k:Z

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/internal/view/e/a/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    return-object v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->j()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    sget-object v1, Lcom/facebook/ads/internal/view/i/a/a;->c:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/d;->a()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->l:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/a;->c()Lcom/facebook/ads/internal/view/component/a/a/b$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/component/a/a/b$e;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/a/d;->getVolume()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->setVolume(F)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->n:Landroid/graphics/RectF;

    sget v2, Lcom/facebook/ads/internal/view/component/a/a/b;->e:I

    int-to-float v2, v2

    sget v4, Lcom/facebook/ads/internal/view/component/a/a/b;->e:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->n:Landroid/graphics/RectF;

    sget v1, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getWidth()I

    move-result v2

    sget v4, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getHeight()I

    move-result v4

    sget v5, Lcom/facebook/ads/internal/view/component/a/a/b;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->n:Landroid/graphics/RectF;

    sget v2, Lcom/facebook/ads/internal/view/component/a/a/b;->d:I

    int-to-float v2, v2

    sget v3, Lcom/facebook/ads/internal/view/component/a/a/b;->d:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->m:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/component/a/c;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/a/d;->setVisibility(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/d;->a()Lcom/facebook/ads/internal/view/c/d;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/component/a/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/view/component/a/a/b$b;-><init>(Lcom/facebook/ads/internal/view/component/a/a/b;Lcom/facebook/ads/internal/view/component/a/a/b$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c/d;->a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->k:Z

    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/internal/view/component/a/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->q:Lcom/facebook/ads/internal/view/component/a/a/b$a;

    return-void
.end method

.method protected setUpImageView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/x;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method protected setUpMediaContainer(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->h:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method protected setUpVideoView(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getAdEventManager()Lcom/facebook/ads/internal/s/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/internal/view/e/a/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setPlaceholderUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->f:Lcom/facebook/ads/internal/view/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/a/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setVideoURI(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->r:Lcom/facebook/ads/internal/view/i/b/x;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/o/f;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->s:Lcom/facebook/ads/internal/view/i/b/d;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/o/f;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->t:Lcom/facebook/ads/internal/view/i/b/l;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/o/f;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->u:Lcom/facebook/ads/internal/view/i/b/j;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/o/f;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->g:Lcom/facebook/ads/internal/view/e/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/a/b;->v:Lcom/facebook/ads/internal/view/i/b/n;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/o/f;)V

    return-void
.end method
