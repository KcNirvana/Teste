.class public Lcom/miui/video/common/feed/ui/UITab;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITab.java"


# instance fields
.field private vImg:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITab;->initFindViews()V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UITab;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$layout;->ui_tab:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/common/feed/ui/UITab;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITab;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UITab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UITab;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITab;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UITab;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UITab;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
