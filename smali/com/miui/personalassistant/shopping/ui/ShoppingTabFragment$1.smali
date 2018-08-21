.class Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;
.super Ljava/lang/Object;
.source "ShoppingTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateData()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$100(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->getAllRecords()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->access$002(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
