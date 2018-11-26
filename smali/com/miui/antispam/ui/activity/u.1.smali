.class final Lcom/miui/antispam/ui/activity/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ue:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/u;->Ue:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/u;->Ue:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->finish()V

    return-void
.end method
