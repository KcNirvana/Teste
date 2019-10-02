.class public Lcom/miui/video/biz/player/online/ui/ResolutionPopup;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "ResolutionPopup.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

.field private mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

.field private vContainer:Landroid/widget/RelativeLayout;

.field private vRoot:Landroid/view/View;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->init()V

    return-void
.end method

.method private findViews()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/player/online/R$id;->v_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/player/online/R$id;->v_resolution_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$string;->ovp_resolution_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$dimen;->dp_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$layout;->vp_popup_resolution:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->vRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->findViews()V

    return-void
.end method

.method private initData()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportResolutions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->setGroup(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getCurrentResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->setSelectedResolution(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mResolutionAdapter:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportResolutions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getCurrentResolution()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportResolutions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setResolution(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setResolution(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/ResolutionPopup;->initData()V

    return-void
.end method
