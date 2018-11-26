.class final Lcom/miui/common/datamodel/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic aBk:Lcom/miui/common/datamodel/Function;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/B;->aBk:Lcom/miui/common/datamodel/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/B;->aBk:Lcom/miui/common/datamodel/Function;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/datamodel/Function;->aKm(Lcom/miui/common/datamodel/Function;Z)Z

    iget-object v0, p0, Lcom/miui/common/datamodel/B;->aBk:Lcom/miui/common/datamodel/Function;

    iget-object v0, v0, Lcom/miui/common/datamodel/Function;->listAdapter:Lcom/miui/common/datamodel/z;

    iget-object v1, p0, Lcom/miui/common/datamodel/B;->aBk:Lcom/miui/common/datamodel/Function;

    invoke-virtual {v0, v1}, Lcom/miui/common/datamodel/z;->aKn(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_0
    return-void
.end method
