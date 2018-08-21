.class Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;
.super Ljava/lang/Object;
.source "LoginBlankActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;->this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v1, "market://details?id=com.xiaomi.smarthome"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;->this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$5;->this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->finish()V

    return-void
.end method
