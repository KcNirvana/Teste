.class final Lcom/miui/powercenter/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aPA:Lcom/miui/powercenter/PowerCenter;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfZ(Lcom/miui/powercenter/PowerCenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0, v2}, Lcom/miui/powercenter/PowerCenter;->bge(Lcom/miui/powercenter/PowerCenter;Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPi:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgf(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/PowerCenter$PowerScanStatus;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcz(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    const v2, 0x7f0705da

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bct(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    const v2, 0x7f070616

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcw(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/k;->aPA:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgj(Lcom/miui/powercenter/PowerCenter;)V

    return-void
.end method
