.class final Lcom/miui/antispam/ui/activity/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic Uc:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/s;->Uc:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/s;->Uc:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;->finish()V

    return-void
.end method
