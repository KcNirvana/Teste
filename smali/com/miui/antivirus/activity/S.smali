.class final Lcom/miui/antivirus/activity/S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic atD:Lcom/miui/antivirus/activity/g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/S;->atD:Lcom/miui/antivirus/activity/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/activity/S;->atD:Lcom/miui/antivirus/activity/g;

    invoke-static {v1}, Lcom/miui/antivirus/activity/g;->azg(Lcom/miui/antivirus/activity/g;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/S;->atD:Lcom/miui/antivirus/activity/g;

    iget-object v0, v0, Lcom/miui/antivirus/activity/g;->asH:Lcom/miui/antivirus/activity/SignExceptionActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->aze(Lcom/miui/antivirus/activity/SignExceptionActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/S;->atD:Lcom/miui/antivirus/activity/g;

    invoke-static {v1}, Lcom/miui/antivirus/activity/g;->azg(Lcom/miui/antivirus/activity/g;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/S;->atD:Lcom/miui/antivirus/activity/g;

    invoke-static {v1}, Lcom/miui/antivirus/activity/g;->azg(Lcom/miui/antivirus/activity/g;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
