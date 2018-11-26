.class public Lcom/miui/powercenter/model/b;
.super Lcom/miui/powercenter/model/a;
.source ""


# instance fields
.field protected aIw:Z

.field protected aIx:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

.field protected aIy:Ljava/lang/String;

.field protected aIz:Ljava/lang/String;

.field protected isBottom:Z

.field protected isTop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/powercenter/model/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/model/b;->aIw:Z

    iput-boolean v1, p0, Lcom/miui/powercenter/model/b;->isTop:Z

    iput-boolean v1, p0, Lcom/miui/powercenter/model/b;->isBottom:Z

    sget-object v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIu:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/model/b;->aUf(Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;)V

    return-void
.end method


# virtual methods
.method public aUg()Lcom/miui/powercenter/model/AbsModel$ItemGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/model/b;->aIx:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    return-object v0
.end method

.method public aUh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/model/b;->aIz:Ljava/lang/String;

    return-object v0
.end method

.method public aUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/model/b;->aIw:Z

    return v0
.end method
