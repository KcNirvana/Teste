.class Lcom/miui/personalassistant/express/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/LoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/LoginActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/LoginActivity;->finish()V

    return-void
.end method
