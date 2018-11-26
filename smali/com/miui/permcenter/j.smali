.class final Lcom/miui/permcenter/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Rp:Lcom/miui/permcenter/SettingsAcitivty;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/SettingsAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/j;->Rp:Lcom/miui/permcenter/SettingsAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/j;->Rp:Lcom/miui/permcenter/SettingsAcitivty;

    invoke-virtual {v0}, Lcom/miui/permcenter/SettingsAcitivty;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/permcenter/e;->SM(Landroid/content/Context;Z)V

    return-void
.end method
