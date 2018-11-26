.class final Lcom/miui/gamebooster/gbservices/s;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic qg:Lcom/miui/gamebooster/gbservices/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v2}, Lcom/miui/gamebooster/gbservices/b;->rx(Lcom/miui/gamebooster/gbservices/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rx(Lcom/miui/gamebooster/gbservices/b;)I

    move-result v0

    if-ne v0, v5, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rw(Lcom/miui/gamebooster/gbservices/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0, v3}, Lcom/miui/gamebooster/gbservices/b;->rE(Lcom/miui/gamebooster/gbservices/b;Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/gbservices/b;->rB(Lcom/miui/gamebooster/gbservices/b;I)I

    if-ne p1, v5, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rC(Lcom/miui/gamebooster/gbservices/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0, v4}, Lcom/miui/gamebooster/gbservices/b;->rA(Lcom/miui/gamebooster/gbservices/b;Z)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0, v3}, Lcom/miui/gamebooster/gbservices/b;->rA(Lcom/miui/gamebooster/gbservices/b;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/s;->qg:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0, v4}, Lcom/miui/gamebooster/gbservices/b;->rE(Lcom/miui/gamebooster/gbservices/b;Z)V

    goto :goto_0
.end method
