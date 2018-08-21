.class Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;
.super Ljava/lang/Object;
.source "MiuiFavoriteDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-static {v0, v2}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->setFavAuthorized(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-static {v0, v2}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->setFavOpened(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    const-string/jumbo v1, "key_favorite"

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "key_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->startShareService(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;->this$0:Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
