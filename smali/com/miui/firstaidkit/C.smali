.class final Lcom/miui/firstaidkit/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic vR:Lcom/miui/firstaidkit/g;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/C;->vR:Lcom/miui/firstaidkit/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/C;->vR:Lcom/miui/firstaidkit/g;

    invoke-static {v1}, Lcom/miui/firstaidkit/g;->wP(Lcom/miui/firstaidkit/g;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/firstaidkit/C;->vR:Lcom/miui/firstaidkit/g;

    iget-object v0, v0, Lcom/miui/firstaidkit/g;->vf:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->wM(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/C;->vR:Lcom/miui/firstaidkit/g;

    invoke-static {v1}, Lcom/miui/firstaidkit/g;->wP(Lcom/miui/firstaidkit/g;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/firstaidkit/C;->vR:Lcom/miui/firstaidkit/g;

    invoke-static {v1}, Lcom/miui/firstaidkit/g;->wP(Lcom/miui/firstaidkit/g;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
