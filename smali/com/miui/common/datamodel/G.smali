.class final Lcom/miui/common/datamodel/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aBp:Lcom/miui/common/datamodel/Advertisement;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/Advertisement;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    iget-object v0, v0, Lcom/miui/common/datamodel/Advertisement;->listAdapter:Lcom/miui/common/datamodel/z;

    iget-object v1, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    invoke-virtual {v0, v1}, Lcom/miui/common/datamodel/z;->aKn(Lcom/miui/common/datamodel/BaseModel;)V

    iget-object v0, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    invoke-static {v0}, Lcom/miui/common/datamodel/Advertisement;->aKO(Lcom/miui/common/datamodel/Advertisement;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/Advertisement;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/datamodel/G;->aBp:Lcom/miui/common/datamodel/Advertisement;

    invoke-static {v1}, Lcom/miui/common/datamodel/Advertisement;->aKN(Lcom/miui/common/datamodel/Advertisement;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/datamodel/A;->aKz(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
