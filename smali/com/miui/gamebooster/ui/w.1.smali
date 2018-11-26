.class final Lcom/miui/gamebooster/ui/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic cI:Lcom/miui/gamebooster/ui/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->y(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/gamebooster/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/a;->updateData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/w;->cI:Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->F(Lcom/miui/gamebooster/ui/WhiteListActivity;Ljava/lang/String;)V

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
