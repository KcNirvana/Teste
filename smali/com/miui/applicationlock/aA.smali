.class final Lcom/miui/applicationlock/aA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akp:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aA;->akp:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/aA;->akp:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apa(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
