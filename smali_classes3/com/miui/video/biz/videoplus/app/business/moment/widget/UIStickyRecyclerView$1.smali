.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;
.super Ljava/lang/Object;
.source "UIStickyRecyclerView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getItemDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(I)Lcom/miui/video/biz/videoplus/app/entities/RowEntity;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getGroupView(I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getUIFactory()Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;

    iget-object v2, v2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
