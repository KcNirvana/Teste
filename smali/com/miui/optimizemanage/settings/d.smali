.class final Lcom/miui/optimizemanage/settings/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic xy:Lcom/miui/optimizemanage/settings/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/settings/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zq(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zw(Lcom/miui/optimizemanage/settings/b;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zr(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zu(Lcom/miui/optimizemanage/settings/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zs(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zv(Lcom/miui/optimizemanage/settings/b;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zp(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zp(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/c;->zH(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zt(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/d;->xy:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zt(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/c;->zI(Z)V

    goto :goto_0
.end method
