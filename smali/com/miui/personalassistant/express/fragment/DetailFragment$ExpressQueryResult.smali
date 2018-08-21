.class Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpressQueryResult"
.end annotation


# instance fields
.field mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->getDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    iput-object v1, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressQueryResult;->mQuerySingleResponse:Lcom/miui/personalassistant/express/bean/QuerySingleResponse;

    return-object v0
.end method
