.class final Lcom/miui/applicationlock/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alf(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    iget-object v1, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alc(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/view/SearchActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    const-string/jumbo v0, "search"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajv(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->alh(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    const-class v2, Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "ChooseAppToLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/v;->ajb:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    const v2, 0xf990c

    invoke-virtual {v1, v0, v2}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v0, "settings"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajv(Ljava/lang/String;)V

    goto :goto_0
.end method
