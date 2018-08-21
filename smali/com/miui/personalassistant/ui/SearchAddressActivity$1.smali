.class Lcom/miui/personalassistant/ui/SearchAddressActivity$1;
.super Landroid/os/Handler;
.source "SearchAddressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    new-instance v2, Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-direct {v2}, Lcom/miui/personalassistant/loader/RequestLoader;-><init>()V

    iput-object v2, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {v2, v3, v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    invoke-static {v1, v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$002(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;)Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/loader/RequestLoader;->setLoaderCallBack(Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$200(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/request/core/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "city"

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {v2, v3, v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/miui/personalassistant/loader/RequestLoader;->request(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
