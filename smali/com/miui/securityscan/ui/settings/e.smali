.class final Lcom/miui/securityscan/ui/settings/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic It:Lcom/miui/securityscan/ui/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/e;->It:Lcom/miui/securityscan/ui/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/e;->It:Lcom/miui/securityscan/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Ik(Landroid/content/Context;Z)V

    return-void
.end method
