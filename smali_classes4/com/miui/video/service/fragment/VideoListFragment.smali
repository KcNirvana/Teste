.class public Lcom/miui/video/service/fragment/VideoListFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IVideoLocalAction;
.implements Lcom/miui/video/framework/impl/ICannotBack;
.implements Lcom/miui/video/framework/impl/IEditModeCheckedAction;
.implements Lcom/miui/video/framework/impl/IActionListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private eLongClick:Landroid/view/View$OnLongClickListener;

.field private eReload:Landroid/view/View$OnClickListener;

.field private mData:Lcom/miui/video/service/common/data/IVideoListData;

.field private mDeltaX:I

.field protected mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mMode:Ljava/lang/String;

.field protected mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleStringId:I

.field private vDelete:Landroid/widget/TextView;

.field private vSelectAll:Landroid/widget/TextView;

.field private vSelectMenuBar:Landroid/widget/LinearLayout;

.field private vUIMenuBar:Lcom/miui/video/service/widget/ui/UIMenuBar;

.field protected vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    const-string v0, "KEY_EDIT_MODE_EXIT"

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mDeltaX:I

    sget v0, Lcom/miui/video/service/R$string;->lv_history:I

    iput v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mTitleStringId:I

    new-instance v0, Lcom/miui/video/service/fragment/VideoListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/video/service/fragment/VideoListFragment$4;-><init>(Lcom/miui/video/service/fragment/VideoListFragment;)V

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->eLongClick:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/miui/video/service/fragment/VideoListFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/service/fragment/VideoListFragment$5;-><init>(Lcom/miui/video/service/fragment/VideoListFragment;)V

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->eReload:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/fragment/VideoListFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/common/data/IVideoListData;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/service/fragment/VideoListFragment;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->eLongClick:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/widget/ui/UITitleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    return-object p0
.end method


# virtual methods
.method public cannotBack()Z
    .locals 3

    const-string v0, "KEY_EDIT_MODE_OPEN"

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public exitEditMode()V
    .locals 3

    const-string v0, "KEY_EDIT_MODE_OPEN"

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getVideoListData()Lcom/miui/video/service/common/data/IVideoListData;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    return-object v0
.end method

.method public initFindViews()V
    .locals 6

    sget v0, Lcom/miui/video/service/R$id;->select_menubar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectMenuBar:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/service/R$id;->select_all:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectAll:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_delete:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectAll:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->lv_menu_delete:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v0, Lcom/miui/video/service/R$id;->ui_recycler_listview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mDeltaX:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setFloatingButtonOffset(I)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment$3;-><init>(Lcom/miui/video/service/fragment/VideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setPullMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment$1;-><init>(Lcom/miui/video/service/fragment/VideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    new-instance v1, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v2, Lcom/miui/video/service/fragment/VideoListFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/video/service/fragment/VideoListFragment$2;-><init>(Lcom/miui/video/service/fragment/VideoListFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v1}, Lcom/miui/video/service/common/data/IVideoListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Lcom/miui/video/framework/base/entity/PageEntity;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectAll:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "KEY_EDIT_MODE_OPEN"

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "KEY_EDIT_MODE_SELECT_CHANGE"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->getCheckedVideoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "KEY_EDIT_MODE_OPEN"

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v0, "com.miui.video.KEY_DELETE_DATA"

    iget-object v3, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v3}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v3

    invoke-interface {p1, v0, v3, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    const-string p1, "com.miui.video.KEY_DELETE_DATA"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->isAllChecked()Z

    move-result p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v1}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v1}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v1}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v1}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    :cond_3
    const-string v1, "module"

    const-string v2, "favorite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    const-string p1, "event"

    const-string v1, "favorite_delete_all"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string p1, "event"

    const-string v1, "favorite_delete_click"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_0
    const-string v1, "module"

    const-string v2, "play_history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    const-string p1, "event"

    const-string v1, "play_history_delete_all"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string p1, "event"

    const-string v1, "play_history_delete"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onTitleBarClick(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "KEY_EDIT_MODE_OPEN"

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/service/fragment/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_2

    :cond_1
    const-string p1, "KEY_EDIT_MODE_OPEN"

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v0}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v0}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v0}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v0}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_3
    const-string v0, "module"

    const-string v1, "favorite"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "favorite_cancel_delete_click"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "module"

    const-string v1, "play_history"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "play_history_delete_cancel"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    goto :goto_2

    :cond_6
    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/service/fragment/VideoListFragment;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.miui.video.KEY_SET_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p2}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result p2

    if-eq p2, v1, :cond_2

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p2}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->initTimeLine()V

    :cond_3
    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->onUIShow()V

    goto/16 :goto_1

    :cond_4
    const-string p1, "com.miui.video.KEY_CORE_LIST_NULL"

    invoke-virtual {p0, p1, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "com.miui.video.ACTION_SHOW_LOADING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "com.miui.video.ACTION_HIDE_LOADING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    goto/16 :goto_1

    :cond_7
    const-string v0, "com.miui.video.KEY_CORE_LIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of p1, p3, Lcom/miui/video/framework/base/entity/PageEntity;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    check-cast p3, Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1, p3}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Lcom/miui/video/framework/base/entity/PageEntity;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->setData(Lcom/miui/video/framework/base/entity/PageEntity;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    goto :goto_0

    :cond_9
    const-string p1, "com.miui.video.KEY_CORE_LIST_NULL"

    invoke-virtual {p0, p1, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->showListLoadTitleBar(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v0, "com.miui.video.KEY_CORE_LIST_NULL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataEmpty()V

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->eReload:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/UILoadingView;->showNetWrokRetry(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_c
    const-string v0, "com.miui.video.KEY_SCROLL_TO_TOP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->scrollToTop()V

    goto :goto_1

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/service/base/VideoBaseFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "com.miui.video.KEY_INIT_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUILoadingView()Lcom/miui/video/common/feed/ui/UILoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    goto/16 :goto_2

    :cond_1
    const-string p2, "com.miui.video.KEY_DELETE_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const-string p1, "KEY_EDIT_MODE_EXIT"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->runDeleteVideoList()Z

    move-result p1

    goto/16 :goto_2

    :cond_2
    const-string p2, "com.miui.video.KEY_DELETE_DATA_DIALOG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    const-string p1, "KEY_EDIT_MODE_OPEN"

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1, p3}, Lcom/miui/video/service/common/data/IVideoListData;->setVideoListChecked(Z)V

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    const/4 v2, 0x0

    sget v3, Lcom/miui/video/service/R$string;->ai_music_save_cancel:I

    const-string v4, ""

    const/4 v5, 0x0

    sget v6, Lcom/miui/video/service/R$color;->c_blue_text_0C80FF:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(IILjava/lang/String;III)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/video/service/R$string;->lv_menu_delete:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_4
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "KEY_EDIT_MODE_EXIT"

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mMode:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectMenuBar:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->setPullMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v1, Lcom/miui/video/service/R$drawable;->edit_video_list:I

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(IILjava/lang/String;III)V

    goto/16 :goto_2

    :cond_5
    const-string p2, "KEY_EDIT_MODE_SELECT_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->isAllChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$string;->lv_menu_delete:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {v3}, Lcom/miui/video/service/common/data/IVideoListData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$string;->lv_menu_delete:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p2, p1}, Lcom/miui/video/service/common/data/IVideoListData;->setVideoListChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    goto :goto_2

    :cond_7
    const-string p2, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vSelectMenuBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->getVideoListChecked()V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    invoke-interface {p1}, Lcom/miui/video/service/common/data/IVideoListData;->getCheckedVideoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$string;->lv_menu_delete:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vDelete:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUIRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    :cond_9
    :goto_2
    return-void
.end method

.method public setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mData:Lcom/miui/video/service/common/data/IVideoListData;

    iput-object p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method public setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->fragment_video_list:I

    return v0
.end method

.method public setTitleBar(Lcom/miui/video/service/widget/ui/UITitleBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    iput p2, p0, Lcom/miui/video/service/fragment/VideoListFragment;->mTitleStringId:I

    return-void
.end method
