.class Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;
.super Ljava/lang/Object;
.source "HttpBizRequest.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v0, v0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v0}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$100(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v0, v0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v0}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$100(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v1, v1, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v1}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$200(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;->onCacheGot(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v0, v0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v0}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$100(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v0, v0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v0}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$100(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task$1;->this$1:Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;

    iget-object v1, v1, Lcom/miui/personalassistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/personalassistant/request/core/HttpBizRequest;

    invoke-static {v1}, Lcom/miui/personalassistant/request/core/HttpBizRequest;->access$200(Lcom/miui/personalassistant/request/core/HttpBizRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;->onDataStatusChanged(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
