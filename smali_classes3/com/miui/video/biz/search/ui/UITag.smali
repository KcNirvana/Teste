.class public Lcom/miui/video/biz/search/ui/UITag;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITag.java"


# instance fields
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

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_tag:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UITag;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UITag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UITag;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UITag;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
