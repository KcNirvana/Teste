.class final Lcom/miui/antivirus/activity/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atx:Lcom/miui/antivirus/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/N;->atx:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/a;->brO(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/N;->atx:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/N;->atx:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayJ()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/N;->atx:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayV(Lcom/miui/antivirus/activity/SettingsActivity;)V

    goto :goto_0
.end method
