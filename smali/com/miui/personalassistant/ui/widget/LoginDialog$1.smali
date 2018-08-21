.class Lcom/miui/personalassistant/ui/widget/LoginDialog$1;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/LoginDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/LoginDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/LoginDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LoginDialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/LoginDialog;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/LoginDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoginDialog$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/utils/XiaomiAccount;->login(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method
