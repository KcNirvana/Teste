.class public Lcom/miui/antivirus/model/VirusModel;
.super Lcom/miui/antivirus/model/j;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb40fdfff3d21f63L


# instance fields
.field private mAppLabel:Ljava/lang/String;

.field private mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

.field private mPkgName:Ljava/lang/String;

.field private mResultType:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

.field private mResultTypeId:I

.field private mSourceDir:Ljava/lang/String;

.field private mVirusDesc:Ljava/lang/String;

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/model/j;-><init>()V

    return-void
.end method


# virtual methods
.method public arr()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/VirusModel;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-object v0
.end method

.method public ars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/VirusModel;->mSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public art()Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/VirusModel;->mResultType:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0
.end method

.method public aru(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/VirusModel;->mResultTypeId:I

    return-void
.end method

.method public arv(Lcom/miui/antivirus/AntiVirusManager$ScanItemType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mItemType:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    return-void
.end method

.method public arw(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mResultType:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-void
.end method

.method public arx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mSourceDir:Ljava/lang/String;

    return-void
.end method

.method public ary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mVirusDesc:Ljava/lang/String;

    return-void
.end method

.method public arz(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mVirusName:Ljava/lang/String;

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/VirusModel;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/VirusModel;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mAppLabel:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/VirusModel;->mPkgName:Ljava/lang/String;

    return-void
.end method
