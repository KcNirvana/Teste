.class public Lcom/miui/antivirus/model/d;
.super Lcom/miui/antivirus/model/b;
.source ""


# instance fields
.field private alw:Z

.field private alx:Z

.field private aly:Z

.field private alz:Z

.field private isEncrypted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/antivirus/model/b;-><init>()V

    iput-boolean v1, p0, Lcom/miui/antivirus/model/d;->alx:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/d;->isEncrypted:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/model/d;->alz:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/model/d;->aly:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/model/d;->alw:Z

    sget-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->alg:Lcom/miui/antivirus/model/AppModel$CardType;

    iput-object v0, p0, Lcom/miui/antivirus/model/d;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    return-void
.end method


# virtual methods
.method public aqQ()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/antivirus/model/d;->arl()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public arc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->alx:Z

    return-void
.end method

.method public ard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->isEncrypted:Z

    return-void
.end method

.method public are(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->aly:Z

    return-void
.end method

.method public arf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->alz:Z

    return-void
.end method

.method public arg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->alw:Z

    return-void
.end method

.method public arh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->alz:Z

    return v0
.end method

.method public ari()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->aly:Z

    return v0
.end method

.method public arj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->alw:Z

    return v0
.end method

.method public ark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->alx:Z

    return v0
.end method

.method public arl()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->isEncrypted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/miui/antivirus/model/d;->alz:Z

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->aly:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/miui/antivirus/model/d;->alw:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v2

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->isEncrypted:Z

    return v0
.end method
