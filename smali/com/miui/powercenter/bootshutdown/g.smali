.class final Lcom/miui/powercenter/bootshutdown/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic aGH:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/g;->aGH:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/g;->aGH:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSh(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;I)I

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/g;->aGH:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSe(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/g;->aGH:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSd(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/powercenter/a/k;->bce(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
