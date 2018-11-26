.class public Lcom/miui/antivirus/result/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mCardType:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arO()Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/a;->mCardType:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    return-object v0
.end method

.method public arP(Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/a;->mCardType:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    return-void
.end method
