.class final Lcom/miui/antivirus/activity/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atd:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axF(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/miui/antivirus/activity/MainActivity;->axP(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/miui/antivirus/activity/MainActivity;->axQ(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axR(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->awb(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->awf()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    const v2, 0x7f0705da

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avW(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    const v2, 0x7f070616

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avZ(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayl(Lcom/miui/antivirus/activity/MainActivity;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/x;->atd:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axX(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
