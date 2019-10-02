.class public Lcom/facebook/ads/internal/view/h/b;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/h/c;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/facebook/ads/internal/t/e;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/h/b;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/internal/t/k;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h/b;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h/b;->b:Lcom/facebook/ads/internal/t/e;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/h/b;->setOrientation(I)V

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    invoke-virtual {p4}, Lcom/facebook/ads/internal/t/k;->b()I

    move-result p4

    int-to-float p4, p4

    mul-float v0, v0, p4

    float-to-int p4, v0

    new-instance v0, Lcom/facebook/ads/internal/view/h/a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h/b;->b:Lcom/facebook/ads/internal/t/e;

    invoke-direct {v0, v1, v2, p3, p6}, Lcom/facebook/ads/internal/view/h/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/AdOptionsView;)V

    sget p6, Lcom/facebook/ads/internal/view/h/b;->a:I

    sget v1, Lcom/facebook/ads/internal/view/h/b;->a:I

    sget v2, Lcom/facebook/ads/internal/view/h/b;->a:I

    sget v3, Lcom/facebook/ads/internal/view/h/b;->a:I

    invoke-virtual {v0, p6, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance p6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p6}, Lcom/facebook/ads/internal/t/j;->c(Landroid/widget/TextView;)V

    const-string p3, "call_to_action"

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p5, p2}, Lcom/facebook/ads/internal/view/h/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 p1, 0x10

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/internal/view/h/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 p2, p4, 0x2

    invoke-direct {p1, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p6, p1}, Lcom/facebook/ads/internal/view/h/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h/b;->b:Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->z()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method
