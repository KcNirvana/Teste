.class public Lcom/miui/video/biz/search/ui/UISearchKey;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISearchKey.java"


# instance fields
.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mTitleClickListener:Landroid/view/View$OnClickListener;

.field private vIcon:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;

.field private viewGroup:Landroid/view/ViewGroup;


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

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_search_key:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_text_root:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->viewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public setIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mIconClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setIconTitle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/miui/video/common/library/widget/ext/SpanText;

    invoke-direct {p1, p2}, Lcom/miui/video/common/library/widget/ext/SpanText;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v1

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UISearchKey;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/biz/search/R$color;->c_5:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->setColor([Ljava/lang/String;ILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setIconTitle(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconTitle(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mTitleClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->viewGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->viewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchKey;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
