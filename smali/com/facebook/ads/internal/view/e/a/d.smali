.class public Lcom/facebook/ads/internal/view/e/a/d;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/facebook/ads/internal/s/c;

.field private c:Lcom/facebook/ads/internal/view/y;

.field private d:Lcom/facebook/ads/internal/view/i/c/f;

.field private e:Lcom/facebook/ads/internal/view/i/c/l;

.field private f:Lcom/facebook/ads/internal/view/i/c/g;

.field private g:Lcom/facebook/ads/internal/view/i/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/d;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/d;->b:Lcom/facebook/ads/internal/s/c;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setUpView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/d;)Lcom/facebook/ads/internal/view/i/c/l;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/d;->e:Lcom/facebook/ads/internal/view/i/c/l;

    return-object p0
.end method

.method private setUpPlugins(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/y;->d()V

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/g;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/i/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->f:Lcom/facebook/ads/internal/view/i/c/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/d;->f:Lcom/facebook/ads/internal/view/i/c/g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/f;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/i/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->d:Lcom/facebook/ads/internal/view/i/c/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    new-instance v1, Lcom/facebook/ads/internal/view/i/c/b;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/i/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/d;->d:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/l;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/internal/view/i/c/l;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->e:Lcom/facebook/ads/internal/view/i/c/l;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->e:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    new-instance v0, Lcom/facebook/ads/internal/view/i/c/d;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/d;->e:Lcom/facebook/ads/internal/view/i/c/l;

    sget-object v3, Lcom/facebook/ads/internal/view/i/c/d$a;->c:Lcom/facebook/ads/internal/view/i/c/d$a;

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/facebook/ads/internal/view/i/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/i/c/d$a;ZZ)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/b;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/internal/view/e/a/d;->a:I

    sget v1, Lcom/facebook/ads/internal/view/e/a/d;->a:I

    sget v2, Lcom/facebook/ads/internal/view/e/a/d;->a:I

    sget v3, Lcom/facebook/ads/internal/view/e/a/d;->a:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->d:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/c/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->d:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/y;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setUpVideo(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/view/y;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/facebook/ads/internal/view/e/a/d$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/e/a/d$1;-><init>(Lcom/facebook/ads/internal/view/e/a/d;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpView(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setUpVideo(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/d;->setUpPlugins(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/y;->a(Z)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/o/f;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/y;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/o/e;->a(Lcom/facebook/ads/internal/o/f;)Z

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/s/c;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/d;->c()V

    new-instance v6, Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/i/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/a;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v6, p0, Lcom/facebook/ads/internal/view/e/a/d;->g:Lcom/facebook/ads/internal/view/i/b;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/y;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/y;->j()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->g:Lcom/facebook/ads/internal/view/i/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->g:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->g:Lcom/facebook/ads/internal/view/i/b;

    :cond_0
    return-void
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/internal/view/i/a;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/y;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->f:Lcom/facebook/ads/internal/view/i/c/g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i/c/g;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/y;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/d;->c:Lcom/facebook/ads/internal/view/y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/y;->setVolume(F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d;->d:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/f;->a()V

    return-void
.end method
