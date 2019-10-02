.class public Lcom/facebook/ads/internal/t/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/h/c;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/facebook/ads/internal/t/j;

.field private final c:Lcom/facebook/ads/internal/t/e;

.field private final d:Lcom/facebook/ads/AdOptionsView;

.field private e:Ljava/util/ArrayList;
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

    const/high16 v1, 0x42dc0000    # 110.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/t/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/t/k;Lcom/facebook/ads/internal/t/j;)V
    .locals 8
    .param p4    # Lcom/facebook/ads/MediaView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p7, p0, Lcom/facebook/ads/internal/t/a;->b:Lcom/facebook/ads/internal/t/j;

    iput-object p2, p0, Lcom/facebook/ads/internal/t/a;->c:Lcom/facebook/ads/internal/t/e;

    iput-object p3, p0, Lcom/facebook/ads/internal/t/a;->d:Lcom/facebook/ads/AdOptionsView;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/a;->e:Ljava/util/ArrayList;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object p3, Lcom/facebook/ads/internal/t/a$1;->a:[I

    invoke-virtual {p6}, Lcom/facebook/ads/internal/t/k;->ordinal()I

    move-result p7

    aget p3, p3, p7

    const/4 p7, -0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p3, Lcom/facebook/ads/internal/view/component/h;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/a;->c:Lcom/facebook/ads/internal/t/e;

    iget-object v2, p0, Lcom/facebook/ads/internal/t/a;->b:Lcom/facebook/ads/internal/t/j;

    invoke-direct {p3, v0, v1, v2}, Lcom/facebook/ads/internal/view/component/h;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/t/a;->a:I

    invoke-direct {v0, p7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :pswitch_1
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {v0, p7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/a;->b:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->b()I

    move-result v0

    invoke-static {p3, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {v0, p7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/t/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p3, Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/t/a;->c:Lcom/facebook/ads/internal/t/e;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/a;->b:Lcom/facebook/ads/internal/t/j;

    iget-object v5, p0, Lcom/facebook/ads/internal/t/a;->d:Lcom/facebook/ads/AdOptionsView;

    sget-object p4, Lcom/facebook/ads/internal/t/k;->c:Lcom/facebook/ads/internal/t/k;

    if-eq p6, p4, :cond_1

    sget-object p4, Lcom/facebook/ads/internal/t/k;->b:Lcom/facebook/ads/internal/t/k;

    if-ne p6, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-static {p6}, Lcom/facebook/ads/internal/t/a;->a(Lcom/facebook/ads/internal/t/k;)I

    move-result v7

    move-object v0, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/view/component/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;ZI)V

    invoke-static {p6}, Lcom/facebook/ads/internal/t/a;->a(Lcom/facebook/ads/internal/t/k;)I

    move-result p1

    int-to-float p1, p1

    sget p4, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float p1, p1, p4

    float-to-int p1, p1

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p7, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4}, Lcom/facebook/ads/internal/view/component/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/view/component/d;->getIconView()Lcom/facebook/ads/MediaView;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/t/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/view/component/d;->getCallToActionView()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p7, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/t/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/facebook/ads/internal/t/k;)I
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/t/a$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/k;->b()I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/k;->b()I

    move-result p0

    add-int/lit16 p0, p0, -0xb4

    return p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/k;->b()I

    move-result p0

    add-int/lit16 p0, p0, -0xb4

    div-int/lit8 p0, p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/a;->c:Lcom/facebook/ads/internal/t/e;

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

    iget-object v0, p0, Lcom/facebook/ads/internal/t/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method
