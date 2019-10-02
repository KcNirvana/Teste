.class public Lcom/miui/video/service/widget/ui/UIMenuItem;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIMenuItem.java"


# instance fields
.field private vIcon:Landroid/widget/ImageView;

.field private vIconLayout:Landroid/widget/RelativeLayout;

.field private vLayout:Landroid/widget/LinearLayout;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_menuitem:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->inflateView(I)V

    sget v0, Lcom/miui/video/service/R$id;->v_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIconLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIcon:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setViews(IIIIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UIMenuItem;
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vIconLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_1
    if-lez p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p1, 0x0

    if-lez p4, :cond_3

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/miui/video/service/R$dimen;->sp_10:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    if-lez p5, :cond_4

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/service/R$color;->c_black:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    if-eqz p6, :cond_5

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIMenuItem;->vLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p0
.end method
