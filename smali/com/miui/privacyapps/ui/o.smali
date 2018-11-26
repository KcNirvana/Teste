.class final Lcom/miui/privacyapps/ui/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic bbW:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

.field final synthetic bbX:Lcom/miui/privacyapps/d;

.field final synthetic bbY:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Lcom/miui/privacyapps/d;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/o;->bbW:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/o;->bbX:Lcom/miui/privacyapps/d;

    iput-object p3, p0, Lcom/miui/privacyapps/ui/o;->bbY:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/o;->bbW:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bya(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/o;->bbX:Lcom/miui/privacyapps/d;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/o;->bbX:Lcom/miui/privacyapps/d;

    invoke-virtual {v1}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/d;->byO(Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/o;->bbY:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/o;->bbX:Lcom/miui/privacyapps/d;

    invoke-virtual {v1}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
