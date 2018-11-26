.class public Lcom/miui/applicationlock/utils/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field abn:Ljava/util/List;

.field abo:Ljava/lang/String;

.field abp:Lcom/miui/applicationlock/utils/HeaderType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aeN()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/j;->abn:Ljava/util/List;

    return-object v0
.end method

.method public aeO()Lcom/miui/applicationlock/utils/HeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/j;->abp:Lcom/miui/applicationlock/utils/HeaderType;

    return-object v0
.end method

.method public aeP(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/j;->abn:Ljava/util/List;

    return-void
.end method

.method public aeQ(Lcom/miui/applicationlock/utils/HeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/j;->abp:Lcom/miui/applicationlock/utils/HeaderType;

    return-void
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/j;->abo:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/j;->abo:Ljava/lang/String;

    return-void
.end method
