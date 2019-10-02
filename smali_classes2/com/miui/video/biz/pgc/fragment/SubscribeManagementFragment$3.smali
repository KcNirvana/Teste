.class Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SubscribeManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->initInfoStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$600(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$700(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0, v2}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$200(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0, v2}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$202(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$3;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$700(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V

    :cond_1
    :goto_0
    return-void
.end method
