.class public Lcom/ali/user/mobile/util/k;
.super Ljava/lang/Object;
.source "ShowRegionHelper.java"


# instance fields
.field private final a:Lcom/ali/user/mobile/util/ResizeScrollView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/util/k;->e:I

    iput-object p1, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v0, Lcom/ali/user/mobile/util/l;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/util/l;-><init>(Lcom/ali/user/mobile/util/k;)V

    iget-object v1, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->setOnSizeChangedListener(Lcom/ali/user/mobile/util/ResizeScrollView$a;)V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->getLocationInWindow([I)V

    aget v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v0, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/user/mobile/util/k;I)I
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/util/k;->e:I

    return p1
.end method

.method private a()V
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/ali/user/mobile/util/k;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->b:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v2

    iget v2, p0, Lcom/ali/user/mobile/util/k;->e:I

    sub-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/ali/user/mobile/util/k;->d:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/util/k;->a(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/util/k;->b(II)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->b:Landroid/view/View;

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v0, v2, p2}, Lcom/ali/user/mobile/util/ResizeScrollView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/user/mobile/util/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/util/k;->a()V

    return-void
.end method

.method private b(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    if-nez v0, :cond_2

    if-lez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v0, v1, p1}, Lcom/ali/user/mobile/util/ResizeScrollView;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v0, v1, p2}, Lcom/ali/user/mobile/util/ResizeScrollView;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/util/k;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/ali/user/mobile/util/k;->c:Landroid/view/View;

    iput-boolean p3, p0, Lcom/ali/user/mobile/util/k;->d:Z

    iget-object v0, p0, Lcom/ali/user/mobile/util/k;->a:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/util/k;->e:I

    invoke-direct {p0}, Lcom/ali/user/mobile/util/k;->a()V

    return-void
.end method
