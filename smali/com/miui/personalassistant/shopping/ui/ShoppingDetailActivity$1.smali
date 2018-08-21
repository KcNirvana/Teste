.class Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->access$300(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->access$200(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->deleteRecordByUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingDetailActivity;->onBackPressed()V

    return-void
.end method
