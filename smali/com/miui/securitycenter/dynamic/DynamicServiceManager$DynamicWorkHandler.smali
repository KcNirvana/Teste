.class Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;


# direct methods
.method public constructor <init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;->this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;->this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->-wrap0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;->this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->-wrap1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;->this$0:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->-get0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;)Lcom/miui/securitycenter/dynamic/ApkLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->init()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
