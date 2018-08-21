.class Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->queryRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$3;Ljava/util/List;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
