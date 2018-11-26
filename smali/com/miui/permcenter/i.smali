.class final Lcom/miui/permcenter/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ro:Lcom/miui/permcenter/MainAcitivty;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/MainAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/i;->Ro:Lcom/miui/permcenter/MainAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f070604

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/i;->Ro:Lcom/miui/permcenter/MainAcitivty;

    const-class v2, Lcom/miui/permcenter/SettingsAcitivty;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_settings_title"

    iget-object v2, p0, Lcom/miui/permcenter/i;->Ro:Lcom/miui/permcenter/MainAcitivty;

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/MainAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/miui/permcenter/i;->Ro:Lcom/miui/permcenter/MainAcitivty;

    invoke-virtual {v2, v3}, Lcom/miui/permcenter/MainAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/i;->Ro:Lcom/miui/permcenter/MainAcitivty;

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
