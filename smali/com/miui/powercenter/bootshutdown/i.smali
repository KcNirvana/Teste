.class final Lcom/miui/powercenter/bootshutdown/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSg(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lmiui/preference/ValuePreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    iget-object v2, v2, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGx:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSf(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v2}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSf(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_0
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    return v3

    :cond_0
    new-instance v0, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    iget-object v2, v2, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGo:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSd(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/i;->aGJ:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v2}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSd(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0
.end method
