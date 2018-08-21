.class Lcom/miui/personalassistant/loader/RequestLoader$Task$1;
.super Ljava/lang/Object;
.source "RequestLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/loader/RequestLoader$Task;->execute(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/loader/RequestLoader$Task;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/loader/RequestLoader$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task$1;->this$1:Lcom/miui/personalassistant/loader/RequestLoader$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task$1;->this$1:Lcom/miui/personalassistant/loader/RequestLoader$Task;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/RequestLoader$Task;->onPostExecute()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
