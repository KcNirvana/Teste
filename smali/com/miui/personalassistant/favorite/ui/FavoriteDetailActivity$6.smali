.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;
.super Ljava/lang/Object;
.source "FavoriteDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/util/ClipUtil;->clearClipboardCache(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->deleteRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$6;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
