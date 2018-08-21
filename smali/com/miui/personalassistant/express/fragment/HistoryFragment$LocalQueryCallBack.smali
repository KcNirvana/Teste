.class Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalQueryCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    return-void
.end method

.method private translateToEntry(Landroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$602(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/List;)Ljava/util/List;

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->getEntry(Landroid/database/Cursor;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->getEntry(Landroid/database/Cursor;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack$1;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    new-instance v1, Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/personalassistant/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1402(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/LocalRequestManager;->getRequest(Landroid/content/Context;)Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1700(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    return-object v0
.end method

.method public onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/express/model/LocalQueryResult;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/model/LocalQueryResult;-><init>()V

    return-object v0
.end method

.method public onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x8

    const/4 v2, 0x0

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/express/model/LocalQueryResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/model/LocalQueryResult;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/model/LocalQueryResult;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1800(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1900(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/model/LocalQueryResult;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->translateToEntry(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->bindData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$2000(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1800(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1900(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;->onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onParseResult(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v0, p3

    check-cast v0, Lcom/miui/personalassistant/express/model/LocalQueryResult;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {v0, p2}, Lcom/miui/personalassistant/express/model/LocalQueryResult;->setCursor(Landroid/database/Cursor;)V

    return-object v0
.end method
