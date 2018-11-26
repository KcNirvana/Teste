.class final Lcom/miui/privacyapps/ui/k;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bbP:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/k;->bbP:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/k;->bbP:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->finish()V

    return-void
.end method
