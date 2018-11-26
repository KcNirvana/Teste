.class final Lcom/miui/antivirus/activity/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atr:Lcom/miui/antivirus/activity/SettingsActivity;

.field final synthetic ats:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/K;->atr:Lcom/miui/antivirus/activity/SettingsActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/K;->ats:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/K;->ats:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/h;

    iget-object v0, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/activity/K;->atr:Lcom/miui/antivirus/activity/SettingsActivity;

    iget-object v2, p0, Lcom/miui/antivirus/activity/K;->ats:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/miui/antivirus/activity/SettingsActivity;->ayS(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/K;->atr:Lcom/miui/antivirus/activity/SettingsActivity;

    iget-object v1, p0, Lcom/miui/antivirus/activity/K;->atr:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/SettingsActivity;->ayR(Lcom/miui/antivirus/activity/SettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity;->ayT(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
