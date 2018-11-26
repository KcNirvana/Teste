.class final Lcom/miui/firstaidkit/model/internet/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;


# instance fields
.field final synthetic tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsModelDisplay()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get1(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BackgroundConnectionModel"

    const-string/jumbo v1, "onAbsModelDisplay callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0, v2}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-set0(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;Z)Z

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get0(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get3(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get3(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get2(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v1, "BackgroundConnectionModel_BG"

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/c;->tU:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-static {v2}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->-get3(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->JT(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
