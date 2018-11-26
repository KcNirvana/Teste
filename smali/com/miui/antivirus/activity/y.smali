.class final Lcom/miui/antivirus/activity/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ate:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axP(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arU:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axR(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->awf()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    const v2, 0x7f0705da

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avW(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    const v2, 0x7f070616

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->avZ(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "stop_quit"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayl(Lcom/miui/antivirus/activity/MainActivity;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/y;->ate:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->finish()V

    return-void
.end method
