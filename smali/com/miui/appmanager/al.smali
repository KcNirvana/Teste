.class final Lcom/miui/appmanager/al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic aWR:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpg(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boi(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "search"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boE(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boY(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/al;->aWR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

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
