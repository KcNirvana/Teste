.class public Lcom/miui/antivirus/whitelist/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private auC:Ljava/lang/String;

.field private auD:Z

.field private auE:Lcom/miui/antivirus/whitelist/WhiteListType;

.field private auF:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

.field private mPkgName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aAT(Lcom/miui/antivirus/whitelist/c;)Lcom/miui/antivirus/whitelist/k;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/whitelist/k;

    invoke-direct {v0}, Lcom/miui/antivirus/whitelist/k;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->atP:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->atQ:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auC:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->atR:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mPkgName:Ljava/lang/String;

    sget-object v1, Lcom/miui/antivirus/whitelist/WhiteListType;->aur:Lcom/miui/antivirus/whitelist/WhiteListType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auE:Lcom/miui/antivirus/whitelist/WhiteListType;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->atS:Ljava/lang/String;

    const-string/jumbo v2, "INSTALLED_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    :goto_0
    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mDesc:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->atU:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mVirusName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/c;->md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auF:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    goto :goto_0
.end method

.method public static aAU(Lcom/miui/antivirus/whitelist/d;)Lcom/miui/antivirus/whitelist/k;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/whitelist/k;

    invoke-direct {v0}, Lcom/miui/antivirus/whitelist/k;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->atV:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->atW:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auC:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->atX:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mPkgName:Ljava/lang/String;

    sget-object v1, Lcom/miui/antivirus/whitelist/WhiteListType;->aus:Lcom/miui/antivirus/whitelist/WhiteListType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auE:Lcom/miui/antivirus/whitelist/WhiteListType;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mDesc:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->aua:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mVirusName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->auF:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/d;->atY:Ljava/lang/String;

    const-string/jumbo v2, "INSTALLED_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    iput-object v1, v0, Lcom/miui/antivirus/whitelist/k;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    goto :goto_0
.end method


# virtual methods
.method public aAR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/k;->auC:Ljava/lang/String;

    return-object v0
.end method

.method public aAS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/k;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public aAV()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/k;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/k;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/k;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/whitelist/k;->auD:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/whitelist/k;->auD:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WhiteListType mWhiteListType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/k;->auE:Lcom/miui/antivirus/whitelist/WhiteListType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/k;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDirPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/k;->auC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/k;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mIsChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antivirus/whitelist/k;->auD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
