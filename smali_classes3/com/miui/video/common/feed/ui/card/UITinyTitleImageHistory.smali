.class public Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyTitleImageHistory.java"


# static fields
.field public static final ACTION_SET_IMAGE_NULL_BG:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_BG"

.field public static final TAG:Ljava/lang/String; = "UITinyTitleImageHistory"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private vProgress:Landroid/widget/ProgressBar;

.field private vTitle:Landroid/widget/TextView;

.field private vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_title_image_history:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UITinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_50:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_18:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->setLogoSize(II)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ACTION_SET_IMAGE_NULL_BG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vTitle:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlayProgressPercentage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0, p3}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void
.end method

.method public setLogoSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setLogoSize(II)V

    return-void
.end method
