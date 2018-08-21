.class Lcom/miui/personalassistant/express/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/LoginActivity;->createLoginDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/express/activity/LoginActivity$2$1;-><init>(Lcom/miui/personalassistant/express/activity/LoginActivity$2;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$2;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/activity/LoginActivity;->access$000(Lcom/miui/personalassistant/express/activity/LoginActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/utils/XiaomiAccount;->login(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method
