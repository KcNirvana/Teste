.class final Lcom/miui/powercenter/autotask/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMs:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/Y;->aMs:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdh()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/Y;->aMs:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXS(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)Lcom/miui/powercenter/autotask/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/k;->aWc()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/Y;->aMs:Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->finish()V

    :cond_0
    return-void
.end method
