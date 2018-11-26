.class Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;
.super Landroid/widget/ArrayAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cb

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;)V

    const v1, 0x7f0a0255

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvAppName:Landroid/widget/TextView;

    const v1, 0x7f0a0257

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvClosed:Landroid/widget/TextView;

    const v1, 0x7f0a0256

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->divider:Landroid/view/View;

    const v1, 0x7f0a0254

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgIconItem:Landroid/widget/ImageView;

    const v1, 0x7f0a0253

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v1, 0x7f0a0251

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvDayItem:Landroid/widget/TextView;

    const v1, 0x7f0a0252

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvMonthItem:Landroid/widget/TextView;

    const v1, 0x7f0a0258

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->btnEnter:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;

    const-string/jumbo v2, "HH:mm"

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvAppName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgIconItem:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->btnEnter:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;)V

    iget-object v3, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->btnEnter:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez p1, :cond_2

    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_6

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->btnEnter:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvClosed:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v3}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgIconItem:Landroid/widget/ImageView;

    const/high16 v3, 0x3ecc0000    # 0.3984375f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgIconItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvDayItem:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvAppName:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MM"

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvMonthItem:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvDayItem:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p2

    :cond_1
    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v2, v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-wide v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v2, v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v2, v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgTimeLineItem:Landroid/widget/ImageView;

    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->btnEnter:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvClosed:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v3}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->imgIconItem:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    iget-wide v2, v2, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v4, v5, v2, v3}, Lcom/miui/luckymoney/utils/DateUtil;->isTheSameDay(JJ)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvMonthItem:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvDayItem:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MM"

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd"

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvMonthItem:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter$ViewHolder;->txvDayItem:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
