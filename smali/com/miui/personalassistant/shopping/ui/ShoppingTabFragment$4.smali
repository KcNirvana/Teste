.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$4;
.super Landroid/os/Handler;
.source "ShoppingTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$4;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-direct {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$4;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$1100(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    return-void
.end method
