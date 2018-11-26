.class final Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->-get2(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->-get2(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
