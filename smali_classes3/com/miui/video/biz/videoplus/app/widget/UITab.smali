.class public Lcom/miui/video/biz/videoplus/app/widget/UITab;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITab.java"


# instance fields
.field private mTag:Ljava/lang/String;

.field private tab:Ljava/lang/String;

.field private vImg:Landroid/widget/ImageView;

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
.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->tab:Ljava/lang/String;

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_tab:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->inflateView(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->setGravity(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setFragmentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setTab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->tab:Ljava/lang/String;

    return-void
.end method

.method public setViews(Lcom/miui/video/biz/videoplus/app/entities/TabEntity;III)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/videoplus/app/entities/TabEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vImg:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    if-lez p3, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->tab:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vTitle:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method
