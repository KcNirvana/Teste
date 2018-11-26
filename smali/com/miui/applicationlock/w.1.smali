.class final Lcom/miui/applicationlock/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alm(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->ald(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alb(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/g;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->ala(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/g;->akG(Ljava/util/List;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    iget-object v1, p0, Lcom/miui/applicationlock/w;->ajc:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->ald(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alr(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/lang/String;)V

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
