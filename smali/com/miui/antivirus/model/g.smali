.class public Lcom/miui/antivirus/model/g;
.super Lcom/miui/antivirus/result/a;
.source ""


# instance fields
.field protected alL:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

.field protected alM:Ljava/lang/String;

.field protected alN:Ljava/lang/String;

.field protected alO:Z

.field protected alP:Z

.field protected alQ:I

.field protected isBottom:Z

.field protected isTop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/antivirus/result/a;-><init>()V

    iput-boolean v0, p0, Lcom/miui/antivirus/model/g;->alO:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/g;->alP:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/model/g;->isTop:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/model/g;->isBottom:Z

    sget-object v0, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->amf:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/model/g;->arP(Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;)V

    return-void
.end method


# virtual methods
.method public aqQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/g;->alO:Z

    return v0
.end method

.method public arA(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/g;->alQ:I

    return-void
.end method

.method public arB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/g;->alM:Ljava/lang/String;

    return-void
.end method

.method public arC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/g;->isTop:Z

    return v0
.end method

.method public arD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/g;->isBottom:Z

    return v0
.end method

.method public arE()Lcom/miui/antivirus/model/AbsModel$ItemGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/g;->alL:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    return-object v0
.end method

.method public arF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/g;->alM:Ljava/lang/String;

    return-object v0
.end method

.method public arG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/g;->isTop:Z

    return-void
.end method

.method public arH(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/g;->isBottom:Z

    return-void
.end method

.method public arI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/g;->alP:Z

    return-void
.end method

.method public getItemKey()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/g;->alQ:I

    return v0
.end method
