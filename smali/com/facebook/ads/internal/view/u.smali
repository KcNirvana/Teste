.class public Lcom/facebook/ads/internal/view/u;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/u$b;,
        Lcom/facebook/ads/internal/view/u$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/view/component/a/l;

.field private b:Landroid/support/v4/widget/ViewDragHelper;

.field private c:Lcom/facebook/ads/internal/view/u$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/component/a/l;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/internal/view/u;->e:I

    iput p1, p0, Lcom/facebook/ads/internal/view/u;->f:I

    new-instance v0, Lcom/facebook/ads/internal/view/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/u$b;-><init>(Lcom/facebook/ads/internal/view/u;Lcom/facebook/ads/internal/view/u$1;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iput p4, p0, Lcom/facebook/ads/internal/view/u;->i:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p4}, Lcom/facebook/ads/internal/view/component/a/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p3, p0, Lcom/facebook/ads/internal/view/u;->g:I

    iget p2, p0, Lcom/facebook/ads/internal/view/u;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/u;->h:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iget p3, p0, Lcom/facebook/ads/internal/view/u;->g:I

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/component/a/l;->offsetTopAndBottom(I)V

    iget p2, p0, Lcom/facebook/ads/internal/view/u;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/u;->f:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/u;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/u;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/u;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/u;->e:I

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/u;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/u;->e:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/u;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/u;->h:I

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/u;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/u;->h:I

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/u;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/u;->i:I

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->c:Lcom/facebook/ads/internal/view/u$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->c:Lcom/facebook/ads/internal/view/u$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/u$a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/u;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->c:Lcom/facebook/ads/internal/view/u$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/u;->c:Lcom/facebook/ads/internal/view/u$a;

    invoke-interface {p0}, Lcom/facebook/ads/internal/view/u$a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/u;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/u;->g:I

    return p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/u;->d()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/u;)Lcom/facebook/ads/internal/view/component/a/l;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/u;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iget v1, p0, Lcom/facebook/ads/internal/view/u;->g:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/l;->offsetTopAndBottom(I)V

    iget v0, p0, Lcom/facebook/ads/internal/view/u;->g:I

    iput v0, p0, Lcom/facebook/ads/internal/view/u;->f:I

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/u;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iget v1, p0, Lcom/facebook/ads/internal/view/u;->i:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/l;->offsetTopAndBottom(I)V

    iget v0, p0, Lcom/facebook/ads/internal/view/u;->i:I

    iput v0, p0, Lcom/facebook/ads/internal/view/u;->f:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    return v0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/u;->f:I

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/u;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/l;->getScrollY()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iget p2, p0, Lcom/facebook/ads/internal/view/u;->f:I

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/component/a/l;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/internal/view/component/a/l;->a(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragListener(Lcom/facebook/ads/internal/view/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/u;->c:Lcom/facebook/ads/internal/view/u$a;

    return-void
.end method

.method public setDragRange(I)V
    .locals 3

    iput p1, p0, Lcom/facebook/ads/internal/view/u;->g:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u;->b:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u;->a:Lcom/facebook/ads/internal/view/component/a/l;

    iget v1, p0, Lcom/facebook/ads/internal/view/u;->g:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    return-void
.end method
