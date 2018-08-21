.class Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/LoginActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/LoginActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->access$000(Lcom/miui/personalassistant/express/activity/LoginActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->access$000(Lcom/miui/personalassistant/express/activity/LoginActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->access$100(Lcom/miui/personalassistant/express/activity/LoginActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->access$000(Lcom/miui/personalassistant/express/activity/LoginActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/LoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;->this$1:Lcom/miui/personalassistant/express/activity/LoginActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->finish()V

    goto :goto_0
.end method
