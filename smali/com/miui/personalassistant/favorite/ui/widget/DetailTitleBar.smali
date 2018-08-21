.class public Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;
.super Landroid/widget/LinearLayout;
.source "DetailTitleBar.java"


# instance fields
.field private mIvBack:Landroid/widget/ImageView;

.field private mIvMore:Landroid/widget/ImageView;

.field private mLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x1b090224

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvBack:Landroid/widget/ImageView;

    const v0, 0x1b090225

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvMore:Landroid/widget/ImageView;

    const v0, 0x1b090226

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mLine:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getIvBack()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIvMore()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->initView()V

    return-void
.end method

.method public updateLine(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mLine:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTitleBarColor(Ljava/lang/String;Landroid/view/Window;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mLine:Landroid/view/View;

    const v1, 0x1b0f00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b020319

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    const v0, 0x1b0f0097

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b02031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    const v0, 0x1b0f0098

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b020318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    const v0, 0x1b0f0096

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b020317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_4

    const v0, 0x1b0f0095

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mIvMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailTitleBar;->mLine:Landroid/view/View;

    const v1, 0x1b0f00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
