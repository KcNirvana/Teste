.class Lcom/miui/personalassistant/ui/widget/EditDialog$2;
.super Ljava/lang/Object;
.source "EditDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/EditDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/EditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->access$000(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/EditDialog;->access$000(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b01e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->access$100(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->access$100(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/EditDialog$2;->this$0:Lcom/miui/personalassistant/ui/widget/EditDialog;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/EditDialog;->access$100(Lcom/miui/personalassistant/ui/widget/EditDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
