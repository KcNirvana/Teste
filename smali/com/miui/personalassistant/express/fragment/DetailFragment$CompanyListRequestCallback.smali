.class Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanyListRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    return-void
.end method


# virtual methods
.method public onParseRequest(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p3

    :pswitch_0
    move-object v0, p3

    check-cast v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->mList:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onPreRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onRequestFinished(ILcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v2, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->mList:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2200(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2100(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$CompanyListRequestCallback;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$2000(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method
