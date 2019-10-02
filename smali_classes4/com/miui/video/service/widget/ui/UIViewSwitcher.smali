.class public Lcom/miui/video/service/widget/ui/UIViewSwitcher;
.super Ljava/lang/Object;
.source "UIViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mListenerMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    invoke-direct {v0, p2}, Lcom/miui/video/framework/utils/ViewSwitcherUtils;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setOnClickListener(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V
    .locals 3

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0, v2, p1}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->setOnClickListener(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    return-void
.end method

.method public switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View;I)V

    return-void
.end method

.method public switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;ILandroid/view/View$OnClickListener;)V
    .locals 1

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    invoke-virtual {p2, p1}, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->showCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View;I)V

    return-void
.end method

.method public switchView(Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    invoke-virtual {p1}, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->showMainView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    if-nez p2, :cond_5

    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    if-ne p1, v1, :cond_2

    new-instance p2, Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->ERROR_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    if-ne p1, v1, :cond_3

    new-instance p2, Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    if-ne p1, v1, :cond_4

    new-instance p2, Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {p1, v0, p3}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataRetry(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;->OFFLINE_VIEW:Lcom/miui/video/service/widget/ui/UIViewSwitcher$ViewType;

    if-ne p1, v1, :cond_5

    new-instance p2, Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {p1, v0, p3}, Lcom/miui/video/common/feed/ui/UILoadingView;->showOffline(Landroid/view/View$OnClickListener;I)V

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIViewSwitcher;->mViewSwitcher:Lcom/miui/video/framework/utils/ViewSwitcherUtils;

    invoke-virtual {p1, p2}, Lcom/miui/video/framework/utils/ViewSwitcherUtils;->showCustomView(Landroid/view/View;)V

    return-void
.end method
