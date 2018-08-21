.class Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;
.super Landroid/os/Handler;
.source "AppInstallCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->access$1(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-static {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->access$2(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor$InstallHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->access$3(Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
