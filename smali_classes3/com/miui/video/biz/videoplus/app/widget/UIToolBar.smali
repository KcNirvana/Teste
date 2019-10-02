.class public Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HISTORY:Ljava/lang/String; = "mv://History"

.field private static final TAG:Ljava/lang/String; = "UISearchBar"


# instance fields
.field private mFrom:Ljava/lang/String;

.field private mListener:Lcom/miui/video/biz/videoplus/app/interfaces/IStatusBarChangeListener;

.field private vClose:Landroid/widget/ImageView;

.field private vHistory:Landroid/widget/ImageView;

.field private vMore:Landroid/widget/ImageView;

.field private vSearch:Landroid/widget/ImageView;


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

.method static synthetic lambda$onClick$74()V
    .locals 0

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_toolbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_search:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_history:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vHistory:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vClose:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vHistory:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initViewsEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordSearchStartLocal(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/BearerActivity;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UIToolBar$q_HDX-j0qS8JwwYht_RLXBTY7J8;->INSTANCE:Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UIToolBar$q_HDX-j0qS8JwwYht_RLXBTY7J8;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->mFrom:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/PopupWindowUtils;->showMorePopWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mv://Setting"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vHistory:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mv://History"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setCloseImageSrc(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setHistoryViewImageSrc(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMoreImageSrc(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMoreViewEvent(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchViewEvent(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchViewImageSrc(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->vSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setStatusBarChangeListener(Lcom/miui/video/biz/videoplus/app/interfaces/IStatusBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/IStatusBarChangeListener;

    return-void
.end method
