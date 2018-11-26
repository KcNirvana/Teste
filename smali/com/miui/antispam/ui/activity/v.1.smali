.class final Lcom/miui/antispam/ui/activity/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic Uf:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/v;->Uf:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/v;->Uf:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->finish()V

    return-void
.end method
