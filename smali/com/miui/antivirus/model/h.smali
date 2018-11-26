.class public Lcom/miui/antivirus/model/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private alW:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

.field private alX:Ljava/util/ArrayList;

.field private mHeaderTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arJ()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/h;->alX:Ljava/util/ArrayList;

    return-object v0
.end method

.method public arK(Lcom/miui/antivirus/model/HeaderModel$HeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/h;->alW:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    return-void
.end method

.method public arL(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/h;->alX:Ljava/util/ArrayList;

    return-void
.end method

.method public arM(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/model/h;->alX:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/i;

    iget-object v2, v0, Lcom/miui/antivirus/model/i;->amb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean p2, v0, Lcom/miui/antivirus/model/i;->amc:Z

    return-void

    :cond_1
    return-void
.end method

.method public arN()Lcom/miui/antivirus/model/HeaderModel$HeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/h;->alW:Lcom/miui/antivirus/model/HeaderModel$HeaderType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/h;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/h;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method
