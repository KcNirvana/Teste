.class Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;
.super Ljava/lang/Object;
.source "MiuiFavoriteReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FavoriteShareService"

    const-string/jumbo v3, "cta is not allowed"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "FavoriteShareService"

    const-string/jumbo v3, "all delete..."

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "matchComponent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->getPackageFromComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;

    invoke-static {v2, v1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->access$000(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "key_shopping_authorize_changed"

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "key_shopping_authorize"

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;

    invoke-static {v2, v1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->access$100(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$intent:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->startShareService(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->isFavAuthorized(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->isFavOpened(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;

    invoke-static {v2, v1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->access$200(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->startShareService(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0
.end method
