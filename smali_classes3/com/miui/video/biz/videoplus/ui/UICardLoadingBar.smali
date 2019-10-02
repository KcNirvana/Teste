.class public Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UICardLoadingBar.java"


# static fields
.field public static final SHOWTYPE_HIDE:I = 0x0

.field public static final SHOWTYPE_PROGRESS:I = 0x1

.field public static final SHOWTYPE_RELOAD_MORE:I = 0x2


# instance fields
.field private vProgress:Landroid/widget/ProgressBar;

.field private vRetry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_card_loadingbar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_retry:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getShowType()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getShowType()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->mUIClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showRetry(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UICardLoadingBar;->vRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
