.class public Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIEpisodesSelectorTitle.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.ui.card.UIEpisodesSelectorTitle"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;-><init>(Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;-><init>(Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;-><init>(Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_episodes_selector_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lcom/miui/video/common/library/utils/OperatorUtils;->checkAndValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p3}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->vSubTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
