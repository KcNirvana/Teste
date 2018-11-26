.class final Lcom/miui/powercenter/bootshutdown/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSj(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07047d

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSl(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSk(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/f;->aGG:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b1 -> :sswitch_1
        0x7f0a00bb -> :sswitch_0
    .end sparse-switch
.end method
