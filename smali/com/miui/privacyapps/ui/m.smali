.class final Lcom/miui/privacyapps/ui/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bbR:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

.field final synthetic bbS:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/m;->bbR:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/m;->bbS:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/m;->bbS:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
