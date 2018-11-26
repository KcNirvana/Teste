.class final Lcom/miui/applicationlock/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akq:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aB;->akq:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/aB;->akq:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agC(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aB;->akq:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apm(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/privacyapps/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b/a;->byC(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/aB;->akq:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apr(Lcom/miui/applicationlock/SettingLockActivity;)V

    iget-object v0, p0, Lcom/miui/applicationlock/aB;->akq:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->finish()V

    return-void
.end method
