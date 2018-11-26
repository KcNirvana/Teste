.class final Lcom/miui/powercenter/savemode/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aOz:Lcom/miui/powercenter/savemode/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    invoke-static {v0}, Lcom/miui/powercenter/savemode/b;->beh(Lcom/miui/powercenter/savemode/b;)Lmiui/preference/ValuePreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/a;->bfk()I

    move-result v6

    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v1}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    iget-object v2, v2, Lcom/miui/powercenter/savemode/b;->aOs:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    div-int/lit8 v1, v6, 0x3c

    rem-int/lit8 v2, v6, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_0
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    return v3

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/a;->bfl()I

    move-result v6

    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v1}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/savemode/g;->aOz:Lcom/miui/powercenter/savemode/b;

    iget-object v2, v2, Lcom/miui/powercenter/savemode/b;->aOl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    div-int/lit8 v1, v6, 0x3c

    rem-int/lit8 v2, v6, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0
.end method
