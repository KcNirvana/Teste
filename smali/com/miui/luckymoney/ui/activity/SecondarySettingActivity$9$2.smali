.class final Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 6

    invoke-static {p2, p3}, Lcom/miui/luckymoney/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    iget-object v2, v2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setDNDStopTime(J)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$2;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    iget-object v2, v2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get2(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "HH:mm"

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
