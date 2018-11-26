.class Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;J)V
    .locals 2

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get3(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get3(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;J)V

    invoke-static {v1, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-set0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const v3, 0x7f070192

    invoke-virtual {v2, v3}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get2(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTick(J)V
    .locals 11

    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-object v6, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v6}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v8, 0x9

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x9

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
