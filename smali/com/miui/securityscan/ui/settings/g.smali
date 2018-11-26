.class final Lcom/miui/securityscan/ui/settings/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic Iw:Lcom/miui/securityscan/ui/settings/a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/g;->Iw:Lcom/miui/securityscan/ui/settings/a;

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

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/g;->Iw:Lcom/miui/securityscan/ui/settings/a;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/a;->HO(Lcom/miui/securityscan/ui/settings/a;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/g;->Iw:Lcom/miui/securityscan/ui/settings/a;

    iget-object v0, v0, Lcom/miui/securityscan/ui/settings/a;->Io:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->HL(Lcom/miui/securityscan/ui/settings/WhiteListActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/g;->Iw:Lcom/miui/securityscan/ui/settings/a;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/a;->HO(Lcom/miui/securityscan/ui/settings/a;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/g;->Iw:Lcom/miui/securityscan/ui/settings/a;

    invoke-static {v1}, Lcom/miui/securityscan/ui/settings/a;->HO(Lcom/miui/securityscan/ui/settings/a;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
