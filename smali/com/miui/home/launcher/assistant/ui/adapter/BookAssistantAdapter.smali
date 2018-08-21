.class public Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookAssistantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;
    }
.end annotation


# static fields
.field private static final ITEM_PADDING_HEIGHT:F = 16.3f

.field private static final TAG:Ljava/lang/String; = "BookAssistantAdapter"


# instance fields
.field private mBookView:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

.field private mContext:Landroid/content/Context;

.field private mFirstView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mBookView:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v1, 0x41826666    # 16.3f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mPaddingHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/calendar/event/schema/BaseEvent;

    if-nez p1, :cond_2

    sget v10, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1b0400b0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    new-instance v11, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    const v11, 0x1b020134

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mBookView:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->updateView(Landroid/view/View;Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/view/View;

    move-result-object v10

    :goto_1
    return-object v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mFirstView:Landroid/view/View;

    const v11, 0x1b020131

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1b04002d

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const-string/jumbo v6, ""

    const/4 v5, 0x0

    iget-wide v10, v7, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    invoke-static {v10, v11}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-wide v10, v7, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-static {v10, v11}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v7, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_8

    const/4 v5, 0x1

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  |  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v12, 0x1b0b005c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    iget v10, v7, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    packed-switch v10, :pswitch_data_0

    :goto_4
    :pswitch_0
    new-instance v10, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v7, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_6

    const v10, 0x1b020134

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mPaddingHeight:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mPaddingHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    move-object/from16 v10, p2

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1b04002d

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v7, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-static {v10, v11, v12, v13}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHoursBetween(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x18

    cmp-long v10, v10, v12

    if-ltz v10, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    :pswitch_1
    move-object v2, v7

    check-cast v2, Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x1b0200eb

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " \u2014 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v14, 0x1b0b041b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v15, 0x1b0b041c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    invoke-static {v12}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v13, 0x1b0b005b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "BookAssistantAdapter"

    invoke-virtual {v2}, Lcom/miui/calendar/event/schema/FlightEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_2
    move-object v9, v7

    check-cast v9, Lcom/miui/calendar/event/schema/TrainEvent;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x1b0200f3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, v9, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v11, 0x1b0b03dd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    :cond_a
    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/miui/calendar/event/schema/TrainEvent;->depStation:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " \u2014 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/miui/calendar/event/schema/TrainEvent;->depDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v14, 0x1b0b041b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v15, 0x1b0b041c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    invoke-static {v12}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v13, 0x1b0b005b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "BookAssistantAdapter"

    invoke-virtual {v9}, Lcom/miui/calendar/event/schema/TrainEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_3
    move-object v8, v7

    check-cast v8, Lcom/miui/calendar/event/schema/MovieEvent;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x1b0200f2

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, v8, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v8, Lcom/miui/calendar/event/schema/MovieEvent;->startTimeMillis:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v16, 0x1b0b041b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " HH:mm"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1b0b041c

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " HH:mm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatMillis(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v13, 0x1b0b03df

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "BookAssistantAdapter"

    invoke-virtual {v8}, Lcom/miui/calendar/event/schema/MovieEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_4
    move-object v4, v7

    check-cast v4, Lcom/miui/calendar/event/schema/HotelEvent;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x1b0200f0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, v4, Lcom/miui/calendar/event/schema/HotelEvent;->hotelName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v4, Lcom/miui/calendar/event/schema/HotelEvent;->checkInDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v14, 0x1b0b041b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v15, 0x1b0b041c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v14, 0x1b0b041b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mContext:Landroid/content/Context;

    const v15, 0x1b0b041c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "BookAssistantAdapter"

    invoke-virtual {v4}, Lcom/miui/calendar/event/schema/HotelEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->notifyDataSetChanged()V

    return-void
.end method
