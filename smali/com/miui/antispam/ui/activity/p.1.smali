.class final Lcom/miui/antispam/ui/activity/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic TT:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/p;->TT:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/p;->TT:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->finish()V

    return-void
.end method
