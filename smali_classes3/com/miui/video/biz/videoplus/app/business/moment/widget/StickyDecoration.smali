.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "StickyDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;,
        Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;
    }
.end annotation


# instance fields
.field private mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

.field private mPreGroupName:Ljava/lang/String;

.field private mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;


# direct methods
.method private constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)V

    return-void
.end method

.method private getData(I)Lcom/miui/video/biz/videoplus/app/entities/RowEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;->getData(I)Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;->getGroupName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupView(I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mGroupListener:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;->getGroupView(I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->getGroupName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mPreGroupName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->getData(I)Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    const-string v5, "ACTION_SET_VALUE"

    invoke-virtual {v4, v5, p3, v3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mPreGroupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->getGroupView(I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->getData(I)Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ACTION_SET_VALUE"

    invoke-virtual {p1, v1, p3, v0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    iget-object p2, p2, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->getGroupName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-ge p3, v0, :cond_3

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->itemView:Landroid/view/View;

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method public updateEditMode()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    const-string v3, "action_enter_edit_mode"

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->mUIRecyclerBase:Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    const-string v3, "action_exist_edit_mode"

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
