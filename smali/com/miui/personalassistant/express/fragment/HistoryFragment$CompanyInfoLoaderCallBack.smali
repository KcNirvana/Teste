.class Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;
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
    name = "CompanyInfoLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    return-void
.end method

.method private shouldUpdateProviderInfo(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Lcom/miui/personalassistant/express/Preferences;->getCompanyIconUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x19bfcc00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/express/db/Cache;->getCompanyIconUrls(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/express/Preferences;->getCompanyIconVersion(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {p0, v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->shouldUpdateProviderInfo(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    new-instance v3, Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v4, v4, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v5}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1000(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/personalassistant/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V

    iput-object v3, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v2, v6}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getCompanyInfoRequest(Landroid/content/Context;I)Lcom/miui/personalassistant/request/core/HttpRequest;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Lcom/miui/personalassistant/request/core/HttpRequest;->setRequestServer(Z)V

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v2, v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->setRequestServer(Z)V

    goto :goto_0
.end method

.method public onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/model/CompanyInfoResult;-><init>()V

    return-object v0
.end method

.method public onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 2
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

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/personalassistant/request/core/BaseResult;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v0

    check-cast p2, Lcom/miui/personalassistant/express/model/CompanyInfoResult;

    iget-object v1, p2, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->setCompanyIcons(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1100(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$1300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v3, p3

    check-cast v3, Lcom/miui/personalassistant/express/model/CompanyInfoResult;

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v5, v4, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/miui/personalassistant/express/db/Cache;->putCompanyIconUrls(Landroid/content/Context;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    const-class v4, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-static {p2, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v2, v3, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v4, v4, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/miui/personalassistant/express/Preferences;->setCompanyIconUpdateTime(Landroid/content/Context;J)V

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v4, v4, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/miui/personalassistant/express/Preferences;->setCompanyIconVersion(Landroid/content/Context;I)V

    :cond_1
    return-object v3
.end method
