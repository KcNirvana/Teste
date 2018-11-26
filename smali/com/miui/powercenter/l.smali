.class final Lcom/miui/powercenter/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aPB:Lcom/miui/powercenter/PowerCenter;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bge(Lcom/miui/powercenter/PowerCenter;Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPi:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgf(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/PowerCenter$PowerScanStatus;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    const v2, 0x7f0705da

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bct(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    const v2, 0x7f070616

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcw(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgb(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/b;->aPj()V

    iget-object v0, p0, Lcom/miui/powercenter/l;->aPB:Lcom/miui/powercenter/PowerCenter;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerCenter;->finish()V

    return-void
.end method
