.class Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;
.super Ljava/lang/Object;
.source "LoginDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->checkLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/card/LoginDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/LoginDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/LoginDialogActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->access$000(Lcom/miui/personalassistant/ui/card/LoginDialogActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/utils/XiaomiAccount;->login(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/LoginDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/LoginDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/card/LoginDialogActivity;->finish()V

    return-void
.end method
