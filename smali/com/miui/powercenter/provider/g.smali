.class final Lcom/miui/powercenter/provider/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/r;


# instance fields
.field final synthetic aCY:Lcom/miui/powercenter/provider/AlarmReceiver;

.field final synthetic aCZ:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/AlarmReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/g;->aCY:Lcom/miui/powercenter/provider/AlarmReceiver;

    iput-object p2, p0, Lcom/miui/powercenter/provider/g;->aCZ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aOk(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/g;->aCZ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/quickoptimize/q;->aQv(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/g;->aCZ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/g;->aCZ:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/powercenter/quickoptimize/q;->aQw(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/q;->aQv(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
