.class public Lcom/miui/gamebooster/customview/BottomTabItem;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private gF:Landroid/widget/ImageView;

.field private gG:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/BottomTabItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/BottomTabItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/BottomTabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->gF:Landroid/widget/ImageView;

    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/BottomTabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/BottomTabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->gG:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public jC(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->gF:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public jD(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public jE(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/gamebooster/customview/BottomTabItem;->gG:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
