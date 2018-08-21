.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;
.super Ljava/util/TimerTask;
.source "ShoppingTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1200(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ShoppingTabFragment"

    const-string/jumbo v2, "native handle"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1202(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Z)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->url:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1300(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
