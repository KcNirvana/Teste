.class final Lcom/miui/antispam/ui/activity/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic UR:Lcom/miui/antispam/ui/activity/i;

.field final synthetic US:Lmiui/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/M;->UR:Lcom/miui/antispam/ui/activity/i;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/M;->US:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/M;->UR:Lcom/miui/antispam/ui/activity/i;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/M;->US:Lmiui/preference/RadioButtonPreference;

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/activity/i;->Ub(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V

    return-void
.end method
