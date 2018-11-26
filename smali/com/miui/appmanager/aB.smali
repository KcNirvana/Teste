.class final Lcom/miui/appmanager/aB;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field final synthetic aXn:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bpa(Lcom/miui/appmanager/AppManagerMainActivity;Z)V

    iget-object v0, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    const v1, 0x7f0708cf

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, v1, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    invoke-interface {v1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bpg(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/miui/appmanager/aB;->aXn:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
