.class Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;->this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;->this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->isValidExpress(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DetailFragment"

    const-string/jumbo v1, "Express update ---- from ProgressFragment."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;->this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;->this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    iget-object v1, v1, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lcom/miui/personalassistant/express/bean/ExpressEntry;

    move-result-object v1

    const-string/jumbo v2, "query"

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/express/db/Cache;->putExpressEntry(Landroid/content/Context;Lcom/miui/personalassistant/express/bean/ExpressEntry;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback$1;->this$1:Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$QueryLoaderCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->updateExpressCard()V

    :cond_0
    return-void
.end method
