.class final Lcom/miui/antivirus/service/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antivirus/c;


# instance fields
.field final synthetic avr:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aBD()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->aBx(Lcom/miui/antivirus/service/GuardService;Z)Z

    return-void
.end method

.method public aBE(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBw(Lcom/miui/antivirus/service/GuardService;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, p1}, Lcom/miui/antivirus/service/GuardService;->aBA(Lcom/miui/antivirus/service/GuardService;I)I

    :cond_0
    return-void
.end method

.method public aBF()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBt(Lcom/miui/antivirus/service/GuardService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBs(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/service/c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public aBG()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GuardService"

    const-string/jumbo v1, "onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->aBy(Lcom/miui/antivirus/service/GuardService;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v2}, Lcom/miui/antivirus/service/GuardService;->aBx(Lcom/miui/antivirus/service/GuardService;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v2}, Lcom/miui/antivirus/service/GuardService;->aBA(Lcom/miui/antivirus/service/GuardService;I)I

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v2}, Lcom/miui/antivirus/service/GuardService;->aBz(Lcom/miui/antivirus/service/GuardService;I)I

    return-void
.end method

.method public aBH()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBt(Lcom/miui/antivirus/service/GuardService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBv(Lcom/miui/antivirus/service/GuardService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->aBz(Lcom/miui/antivirus/service/GuardService;I)I

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBv(Lcom/miui/antivirus/service/GuardService;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/j;->avr:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBs(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/service/c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
