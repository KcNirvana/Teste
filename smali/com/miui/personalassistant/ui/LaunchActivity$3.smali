.class Lcom/miui/personalassistant/ui/LaunchActivity$3;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/LaunchActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity$3;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v2

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/LaunchActivity$3;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v2, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$000(Lcom/miui/personalassistant/ui/LaunchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/LaunchActivity$3;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$100(Lcom/miui/personalassistant/ui/LaunchActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
