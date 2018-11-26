.class final Lcom/miui/appmanager/an;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/appmanager/widget/b;


# instance fields
.field final synthetic aWT:Lcom/miui/appmanager/am;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/am;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bir(Lcom/miui/appmanager/widget/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->boA(Lcom/miui/appmanager/AppManagerMainActivity;I)I

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boH(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boO(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bic(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bom(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/model/n;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boy(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bom(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/model/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v1, v1, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->box(Lcom/miui/appmanager/AppManagerMainActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v2, v2, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bob(Lcom/miui/appmanager/AppManagerMainActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boH(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/an;->aWT:Lcom/miui/appmanager/am;

    iget-object v0, v0, Lcom/miui/appmanager/am;->aWS:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
