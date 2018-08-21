.class Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

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

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    new-instance v1, Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$900(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/personalassistant/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$802(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v1, v1, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getExpressQueryRequest(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    return-object v0
.end method

.method public onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V

    return-object v0
.end method

.method public onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1900(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 10
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

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    move-object v6, p2

    check-cast v6, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    invoke-static {v7, v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1202(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;)Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    invoke-virtual {p2}, Lcom/miui/personalassistant/request/core/BaseResult;->hasData()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1300(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v7}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$200(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6, v9}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1302(Lcom/miui/personalassistant/express/fragment/DetailFragment;Z)Z

    :cond_0
    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1200(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    move-result-object v6

    iget-object v4, v6, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getMatchCompany()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    new-instance v7, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>()V

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$102(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    :cond_1
    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getMatchCompany()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;->getCompanyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;->getCompanyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    const v8, 0x1b0b0131

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getStateFlag()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setState(I)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isPickupCode()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setPickupCode(Z)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isOpenLocker()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setOpenLocker(Z)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->isSchedule()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setSchedule(Z)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getDetails()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/DetailEntry;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getTime()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1400(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "express_data_not_same"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setLatestDetail(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-static {v5}, Lcom/miui/personalassistant/util/TimeUtil;->getMillsFromTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setLatestTime(Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/personalassistant/express/bean/DetailEntry;->linkToSummaryEntry(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1500(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v6}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1600(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    new-instance v6, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;

    invoke-direct {v6, p0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;)V

    invoke-static {v6}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v6, "DetailFragment"

    const-string/jumbo v7, "onLoadFinished: express detail is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-virtual {v4}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getMatchCompany()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$1700(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/util/List;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v1, p3

    check-cast v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    const-class v2, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    const-string/jumbo v2, "DetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onParseResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    :cond_0
    return-object v1
.end method
