.class public Lcom/miui/securityscan/e/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private KA:Z

.field private KB:Z

.field private KC:Lcom/miui/securityscan/cards/DataModel;

.field private KD:Z

.field private models:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/cards/DataModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/e/c;->KC:Lcom/miui/securityscan/cards/DataModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/cards/DataModel;->CS()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/e/c;->models:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/securityscan/cards/DataModel;->CU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/e/c;->KA:Z

    invoke-virtual {p1}, Lcom/miui/securityscan/cards/DataModel;->CV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/e/c;->KB:Z

    invoke-virtual {p1}, Lcom/miui/securityscan/cards/DataModel;->Dc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/e/c;->KD:Z

    return-void
.end method


# virtual methods
.method public LL()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/e/c;->models:Ljava/util/ArrayList;

    return-object v0
.end method

.method public LM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/e/c;->KA:Z

    return v0
.end method

.method public LN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/e/c;->KB:Z

    return v0
.end method

.method public LO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/e/c;->KD:Z

    return v0
.end method

.method public LP()Lcom/miui/securityscan/cards/DataModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/e/c;->KC:Lcom/miui/securityscan/cards/DataModel;

    return-object v0
.end method
