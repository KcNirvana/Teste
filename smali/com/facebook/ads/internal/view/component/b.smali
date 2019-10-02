.class public Lcom/facebook/ads/internal/view/component/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/facebook/ads/internal/view/v;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/AdOptionsView;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/b;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/b;->setVerticalGravity(I)V

    new-instance v1, Lcom/facebook/ads/internal/view/v;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/view/v;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/t/j;->h()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/v;->setMinTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    const-string v2, "headline"

    invoke-virtual {p2, v2}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/v;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    invoke-virtual {p3, v1}, Lcom/facebook/ads/internal/t/j;->a(Landroid/widget/TextView;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p4, "headline"

    invoke-virtual {p2, p4}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x15

    if-eqz p4, :cond_0

    const-string p4, "headline"

    invoke-virtual {p2, p4}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/facebook/ads/internal/view/component/b;->b:I

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p4}, Lcom/facebook/ads/internal/view/component/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/w;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/w;-><init>(Landroid/content/Context;)V

    const-string p1, "social_context"

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/w;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/internal/t/j;->b(Landroid/widget/TextView;)V

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p4}, Lcom/facebook/ads/internal/view/component/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMinVisibleTitleCharacters()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/b;->b:I

    return v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/v;

    return-object v0
.end method
