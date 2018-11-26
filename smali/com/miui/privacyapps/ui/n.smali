.class final Lcom/miui/privacyapps/ui/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bbT:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

.field final synthetic bbU:Lcom/miui/privacyapps/d;

.field final synthetic bbV:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Lcom/miui/privacyapps/d;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/n;->bbT:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/n;->bbU:Lcom/miui/privacyapps/d;

    iput-object p3, p0, Lcom/miui/privacyapps/ui/n;->bbV:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/n;->bbU:Lcom/miui/privacyapps/d;

    invoke-virtual {v0, v3}, Lcom/miui/privacyapps/d;->byO(Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/n;->bbV:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/n;->bbU:Lcom/miui/privacyapps/d;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/n;->bbU:Lcom/miui/privacyapps/d;

    invoke-virtual {v1}, Lcom/miui/privacyapps/d;->byN()I

    move-result v1

    iget-object v2, p0, Lcom/miui/privacyapps/ui/n;->bbT:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxZ(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/n;->bbT:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v2, v0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->byb(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;I)V

    return-void
.end method
