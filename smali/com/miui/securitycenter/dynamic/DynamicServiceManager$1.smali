.class final Lcom/miui/securitycenter/dynamic/DynamicServiceManager$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$1;->this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-get0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Lcom/miui/securitycenter/dynamic/ServiceConnection;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-get1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/miui/securitycenter/dynamic/ServiceConnection;->onServiceConnected(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-get0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Lcom/miui/securitycenter/dynamic/ServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/securitycenter/dynamic/ServiceConnection;->onServiceConnectionFail(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
