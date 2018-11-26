.class final Lcom/miui/antispam/ui/activity/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Uo:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/z;->Uo:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/z;->Uo:Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->finish()V

    return-void
.end method
