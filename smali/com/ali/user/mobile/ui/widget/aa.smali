.class Lcom/ali/user/mobile/ui/widget/aa;
.super Lcom/ali/user/mobile/ui/widget/keyboard/g;
.source "AUInputBox.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/g;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$100(Lcom/ali/user/mobile/ui/widget/AUInputBox;ZZ)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$200(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUInputBox;[Landroid/text/InputFilter;)V

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$200(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/c/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ali/user/mobile/ui/widget/c/a;->a(Landroid/text/Editable;)V

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$400(Lcom/ali/user/mobile/ui/widget/AUInputBox;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextSize(F)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/aa;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$500(Lcom/ali/user/mobile/ui/widget/AUInputBox;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextSize(F)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
