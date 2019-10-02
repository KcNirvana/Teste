.class Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "AuthorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initInfoStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->access$000(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->access$100(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_more_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$2;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->access$000(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;)Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->hideListLoadingBar()V

    :cond_0
    return-void
.end method
