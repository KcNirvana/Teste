.class final Lcom/miui/powercenter/bootshutdown/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aGK:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/j;->aGK:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/j;->aGK:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
