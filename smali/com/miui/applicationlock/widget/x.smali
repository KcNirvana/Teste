.class final Lcom/miui/applicationlock/widget/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/widget/g;


# instance fields
.field final synthetic adR:Lcom/miui/applicationlock/widget/i;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aiR(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public aiS()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->ajb(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/i;->aja(Lcom/miui/applicationlock/widget/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public aiT(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->aiY(Lcom/miui/applicationlock/widget/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->aiZ(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/utils/n;

    move-result-object v0

    invoke-static {}, Lcom/miui/a/b/a/a;->getInstance()Lcom/miui/a/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/a/b/a/a;->btq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/utils/n;->agM(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {}, Lcom/miui/a/b/a/a;->getInstance()Lcom/miui/a/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/a/b/a/a;->btq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/i;->ajc(Lcom/miui/applicationlock/widget/i;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aiU()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->ajb(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/i;->aja(Lcom/miui/applicationlock/widget/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->aiY(Lcom/miui/applicationlock/widget/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/x;->adR:Lcom/miui/applicationlock/widget/i;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/i;->aiZ(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/utils/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/utils/n;->agL(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method
