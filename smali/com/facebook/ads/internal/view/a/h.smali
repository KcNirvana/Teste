.class public Lcom/facebook/ads/internal/view/a/h;
.super Lcom/facebook/ads/internal/view/a/c;


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private final f:Landroid/widget/LinearLayout;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/HorizontalScrollView;

.field private final i:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/h;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/h;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/h;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/a/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    sget p2, Lcom/facebook/ads/internal/view/a/h;->d:I

    sget p3, Lcom/facebook/ads/internal/view/a/h;->d:I

    sget v0, Lcom/facebook/ads/internal/view/a/h;->d:I

    sget v1, Lcom/facebook/ads/internal/view/a/h;->d:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    const p2, -0x9f9890

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/facebook/ads/internal/view/a/h;->e:I

    sget p3, Lcom/facebook/ads/internal/view/a/h;->e:I

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    const v1, -0xd000001

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/a/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
    .locals 4

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/internal/w/c/b;->m:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/internal/view/a/h$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/a/h$5;-><init>(Lcom/facebook/ads/internal/view/a/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/h;->h:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/internal/view/a/h;->c:I

    sget v1, Lcom/facebook/ads/internal/view/a/h;->c:I

    sget v2, Lcom/facebook/ads/internal/view/a/h;->c:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/f/c;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/f/c;

    new-instance v1, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v2, Lcom/facebook/ads/internal/view/a/h$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/facebook/ads/internal/view/a/h$6;-><init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;Lcom/facebook/ads/internal/f/c;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    const/16 v0, 0xe

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/widget/TextView;ZI)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/f/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method c()V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->c(Landroid/view/View;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->q:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/a/h$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/a/h$1;-><init>(Lcom/facebook/ads/internal/view/a/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/w/c/b;->j:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/h$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/internal/view/a/h$2;-><init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/w/c/b;->k:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v2, Lcom/facebook/ads/internal/view/a/h$3;

    invoke-direct {v2, p0, v1}, Lcom/facebook/ads/internal/view/a/h$3;-><init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/f/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/w/c/b;->f:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v3, Lcom/facebook/ads/internal/view/a/h$4;

    invoke-direct {v3, p0, v2}, Lcom/facebook/ads/internal/view/a/h$4;-><init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/facebook/ads/internal/view/a/h;->c:I

    sget v5, Lcom/facebook/ads/internal/view/a/h;->c:I

    sget v6, Lcom/facebook/ads/internal/view/a/h;->c:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/h;->f:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
