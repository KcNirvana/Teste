.class public Lcom/google/ads/interactivemedia/v3/internal/jq;
.super Landroid/widget/LinearLayout;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/jq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/jt;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/jq$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;)V
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jq;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->c:Landroid/widget/TextView;

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->i:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->l:I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jq;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(IF)I

    move-result v1

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p3, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Z

    if-eqz p3, :cond_0

    iget p3, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->p:I

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget p3, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->q:F

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->o:Ljava/lang/String;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 p1, 0xa

    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p4}, Landroid/widget/TextView;->setSingleLine()V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/jq$1;

    invoke-direct {p3, p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jq;)V

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->f:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->g:I

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jq$2;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$2;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jq;)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/jq$a;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/jq$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jq$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->c:[I

    invoke-direct {p3, p4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jq$3;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$3;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jq;)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/jt;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/jt;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p4, p4, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, p4

    const/4 p2, 0x1

    aput-object v1, p1, p2

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/jq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
