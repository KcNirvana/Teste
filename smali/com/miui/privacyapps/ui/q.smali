.class final Lcom/miui/privacyapps/ui/q;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bca:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/q;->bca:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/q;->bca:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->finish()V

    return-void
.end method
