.class public Lcom/miui/video/common/feed/ui/UILoadingView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UILoadingView.java"


# instance fields
.field private vBgLayout:Landroid/widget/RelativeLayout;

.field private vIcon:Landroid/widget/ImageView;

.field private vImg:Landroid/widget/ImageView;

.field private vLoadingLayout:Landroid/widget/RelativeLayout;

.field private vProgressBar:Landroid/widget/ProgressBar;

.field private vRetry:Landroid/widget/Button;

.field private vRetryLayout:Landroid/widget/RelativeLayout;

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

.method private hideOtherLayout(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UILoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animHide(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UILoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animHide(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UILoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animHide(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UILoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/video/common/library/utils/AnimUtils;->animShow(Landroid/content/Context;Landroid/view/View;JLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideOtherLayout(Landroid/view/View;)V

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_loadingview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->v_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_bg_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_loading_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_retry_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vIcon:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_retry:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

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

.method public setLoadingBg(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public showDataEmpty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showNetWrokRetry(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;I)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showNetWrokRetry(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public showDataRetry(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public showDataRetry(Landroid/view/View$OnClickListener;I)V
    .locals 8

    sget v1, Lcom/miui/video/common/feed/R$drawable;->common_feed_ic_default_no_data:I

    if-lez p2, :cond_0

    :goto_0
    move v3, p2

    goto :goto_1

    :cond_0
    sget p2, Lcom/miui/video/common/feed/R$string;->data_empty:I

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    sget v5, Lcom/miui/video/common/feed/R$string;->retry:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/video/common/feed/ui/UILoadingView;->showRetry(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showImage(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideOtherLayout(Landroid/view/View;)V

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vImg:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vImg:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public showLoading()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vBgLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showNetWrokRetry(Landroid/view/View$OnClickListener;)V
    .locals 8

    sget v1, Lcom/miui/video/common/feed/R$drawable;->common_feed_ic_default_net_error:I

    sget v3, Lcom/miui/video/common/feed/R$string;->network_failed:I

    sget v5, Lcom/miui/video/common/feed/R$string;->retry:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/video/common/feed/ui/UILoadingView;->showRetry(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showOffline(Landroid/view/View$OnClickListener;I)V
    .locals 8

    sget v1, Lcom/miui/video/common/feed/R$drawable;->common_feed_ic_default_offline:I

    sget v5, Lcom/miui/video/common/feed/R$string;->retry:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/video/common/feed/ui/UILoadingView;->showRetry(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showRetry(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetryLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideOtherLayout(Landroid/view/View;)V

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vIcon:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-static {p4}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    const/16 p1, 0x8

    if-lez p5, :cond_4

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    invoke-virtual {p2, p5}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_4
    invoke-static {p6}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    invoke-virtual {p2, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    if-nez p7, :cond_6

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    invoke-virtual {p1, p7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UILoadingView;->vRetry:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method
