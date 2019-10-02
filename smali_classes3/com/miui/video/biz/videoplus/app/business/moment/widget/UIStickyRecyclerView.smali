.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIStickyRecyclerView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$MyLinearLayoutManager;
    }
.end annotation


# static fields
.field public static final ACTION_SCROLL_TO_POSITION:Ljava/lang/String; = "action_scroll_to_position"


# instance fields
.field protected mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

.field private mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTitleLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mTitleLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mTitleLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mTitleLayout:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mTitleLayout:I

    return p0
.end method

.method private createDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getItemDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;->init(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;->build()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    move-result-object v0

    return-object v0
.end method

.method private getItemDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;)V

    return-object v0
.end method


# virtual methods
.method public getAdapter()Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    return-object v0
.end method

.method public getDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getUIFactory()Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasScrollToTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initFindViews()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$MyLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$MyLinearLayoutManager;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getUIFactory()Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>()V

    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "ACTION_SET_VALUE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->createDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->updateEditMode()V

    :goto_0
    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    goto :goto_1

    :cond_1
    const-string p3, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->scrollToTop()V

    goto :goto_1

    :cond_2
    const-string p3, "action_scroll_to_position"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setTitleLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mTitleLayout:I

    return-void
.end method
