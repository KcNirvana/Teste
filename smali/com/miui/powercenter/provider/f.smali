.class final Lcom/miui/powercenter/provider/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/n;


# instance fields
.field final synthetic aCX:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/f;->aCX:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aOj(Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/provider/f;->aCX:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v1}, Lcom/miui/powercenter/provider/PowerSaveService;->aNI(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/powercenter/provider/f;->aCX:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v1}, Lcom/miui/powercenter/provider/PowerSaveService;->aNI(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string/jumbo v0, "PowerSaveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cloud data update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/provider/f;->aCX:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v2}, Lcom/miui/powercenter/provider/PowerSaveService;->aNI(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
