.class final Lcom/miui/powercenter/autotask/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/autotask/a;


# instance fields
.field final synthetic aLR:Lcom/miui/powercenter/autotask/k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/F;->aLR:Lcom/miui/powercenter/autotask/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aUU(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/F;->aLR:Lcom/miui/powercenter/autotask/k;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setName(Ljava/lang/String;)V

    return-void
.end method
