.class final Lcom/miui/permcenter/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic Rr:Lcom/miui/permcenter/SettingsAcitivty;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/SettingsAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/l;->Rr:Lcom/miui/permcenter/SettingsAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/l;->Rr:Lcom/miui/permcenter/SettingsAcitivty;

    invoke-static {v0}, Lcom/miui/permcenter/SettingsAcitivty;->Ss(Lcom/miui/permcenter/SettingsAcitivty;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
