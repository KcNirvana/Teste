.class public Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIRecyclerLoadingBar.java"


# static fields
.field public static final SHOWTYPE_HIDE:I = 0x0

.field public static final SHOWTYPE_IMAGE:I = 0x3

.field public static final SHOWTYPE_PROGRESS:I = 0x1

.field public static final SHOWTYPE_RELOAD_MORE:I = 0x2

.field public static final SHOWTYPE_TITLE:I = 0x4


# instance fields
.field private mReloadMoreClickListener:Landroid/view/View$OnClickListener;

.field private vBottomLayout:Landroid/widget/RelativeLayout;

.field private vImg:Landroid/widget/ImageView;

.field private vProgress:Landroid/widget/ProgressBar;

.field private vRetry:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vTopLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_recycler_loading_bar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->initFindViews()V

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$id;->v_top_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_retry:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowType()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->mReloadMoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowType()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowType()I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setReloadMoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->mReloadMoreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showProgress()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showRetry(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTopLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
