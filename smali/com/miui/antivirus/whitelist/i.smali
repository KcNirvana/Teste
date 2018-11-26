.class public Lcom/miui/antivirus/whitelist/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private auv:Ljava/lang/CharSequence;

.field private auw:Z

.field private aux:Lcom/miui/antivirus/whitelist/WhiteListType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aAI(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/i;->auv:Ljava/lang/CharSequence;

    return-void
.end method

.method public aAJ(Lcom/miui/antivirus/whitelist/WhiteListType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/i;->aux:Lcom/miui/antivirus/whitelist/WhiteListType;

    return-void
.end method

.method public aAK()Lcom/miui/antivirus/whitelist/WhiteListType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/i;->aux:Lcom/miui/antivirus/whitelist/WhiteListType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/i;->auv:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/whitelist/i;->auw:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WhiteListType mWhiteListType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/i;->aux:Lcom/miui/antivirus/whitelist/WhiteListType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDirPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mIsChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antivirus/whitelist/i;->auw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
