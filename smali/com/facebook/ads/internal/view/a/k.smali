.class public Lcom/facebook/ads/internal/view/a/k;
.super Lcom/facebook/ads/internal/view/a/c;


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private final f:Landroid/widget/ScrollView;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/k;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/k;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/a/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    sget p2, Lcom/facebook/ads/internal/view/a/k;->d:I

    sget p3, Lcom/facebook/ads/internal/view/a/k;->d:I

    sget v0, Lcom/facebook/ads/internal/view/a/k;->d:I

    sget v1, Lcom/facebook/ads/internal/view/a/k;->d:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    const p2, -0x9f9890

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/facebook/ads/internal/view/a/k;->e:I

    sget p3, Lcom/facebook/ads/internal/view/a/k;->e:I

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    const p3, -0xd000001

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    sget p2, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget p3, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v0, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v1, Lcom/facebook/ads/internal/view/a/k;->c:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/a/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
    .locals 4

    sget-object v0, Lcom/facebook/ads/internal/f/b$a;->a:Lcom/facebook/ads/internal/f/b$a;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/view/a/j;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/a/k;->b:Lcom/facebook/ads/internal/view/a/e;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/facebook/ads/internal/w/c/b;->k:Lcom/facebook/ads/internal/w/c/b;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/facebook/ads/internal/w/c/b;->j:Lcom/facebook/ads/internal/w/c/b;

    :goto_1
    invoke-direct {v0, v2, p1, v3, p2}, Lcom/facebook/ads/internal/view/a/j;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/view/a/e;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->m:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/a/k$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/a/k$5;-><init>(Lcom/facebook/ads/internal/view/a/k;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method b(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/facebook/ads/internal/f/b$a;->a:Lcom/facebook/ads/internal/f/b$a;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/ads/internal/f/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/facebook/ads/internal/w/c/b;->k:Lcom/facebook/ads/internal/w/c/b;

    const v1, -0x86dc5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/ads/internal/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/facebook/ads/internal/w/c/b;->j:Lcom/facebook/ads/internal/w/c/b;

    const v1, -0xca871b

    :goto_0
    new-instance v2, Lcom/facebook/ads/internal/view/a/a$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/a/a$a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/a/k;->b:Lcom/facebook/ads/internal/view/a/e;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/a/a$a;->a(Lcom/facebook/ads/internal/view/a/e;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/facebook/ads/internal/view/a/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/facebook/ads/internal/view/a/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/f/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/view/a/a$a;->c(Ljava/lang/String;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/a/a$a;->a(Z)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/a/a$a;->a(Lcom/facebook/ads/internal/w/c/b;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/view/a/a$a;->a(I)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/a/a$a;->b(Z)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/a/a$a;->c(Z)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/a$a;->a()Lcom/facebook/ads/internal/view/a/a;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->f:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method c()V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->c(Landroid/view/View;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    return-void
.end method

.method d()V
    .locals 9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->q:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/a/k$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/a/k$1;-><init>(Lcom/facebook/ads/internal/view/a/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/w/c/b;->j:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/k$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/internal/view/a/k$2;-><init>(Lcom/facebook/ads/internal/view/a/k;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/w/c/b;->k:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v2, Lcom/facebook/ads/internal/view/a/k$3;

    invoke-direct {v2, p0, v1}, Lcom/facebook/ads/internal/view/a/k$3;-><init>(Lcom/facebook/ads/internal/view/a/k;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/f/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/w/c/b;->f:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    new-instance v3, Lcom/facebook/ads/internal/view/a/k$4;

    invoke-direct {v3, p0, v2}, Lcom/facebook/ads/internal/view/a/k$4;-><init>(Lcom/facebook/ads/internal/view/a/k;Lcom/facebook/ads/internal/view/a/f;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/a/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v6, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v7, Lcom/facebook/ads/internal/view/a/k;->c:I

    sget v8, Lcom/facebook/ads/internal/view/a/k;->c:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/k;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/a/k;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/a/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
