.class public Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyTitlePlayImage.java"


# static fields
.field public static final ACTION_SET_IMAGE_NULL_BG:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_BG"

.field public static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.ui.card.UITinyTitlePlayImage"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private vPlayImg:Landroid/widget/ImageView;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/-$$Lambda$UITinyTitlePlayImage$bDbg5y6rAcpRz_2xEkE0DeDPwL8;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic lambda$new$9(Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_title_play_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UITinyImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->play_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vPlayImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setImageType(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setImageRound(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vUIImg:Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ACTION_SET_IMAGE_NULL_BG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lcom/miui/video/common/library/utils/OperatorUtils;->checkAndValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/video/common/feed/R$color;->c_blue_text_0C80FF:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/common/feed/R$color;->c_black:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {p0, p3}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->vSubTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
