.class public Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaAssistantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;
    }
.end annotation


# static fields
.field private static final ITEM_PADDING_HEIGHT:F = 16.3f

.field private static final TAG:Ljava/lang/String; = "AgendaAssistantAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    const v1, 0x41826666    # 16.3f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mPaddingHeight:I

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBackgroud(ILandroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x1b020134

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mPaddingHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mPaddingHeight:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

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
    .locals 24

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x1b04002d

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v15, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/calendar/event/schema/BaseEvent;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v18, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p2}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->setBackgroud(ILandroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;

    goto :goto_0

    :pswitch_1
    move-object/from16 v4, v16

    check-cast v4, Lcom/miui/calendar/event/schema/AgendaEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200ea

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v19

    iget-object v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x1b0b0017

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1b0b000c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual {v4}, Lcom/miui/calendar/event/schema/AgendaEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2

    :cond_2
    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-wide v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->startTimeMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTimeNoDays(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-wide v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->endTimeMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTimeNoDays(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->location:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string/jumbo v18, ""

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  |  "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/miui/calendar/event/schema/AgendaEvent;->location:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    :pswitch_2
    move-object/from16 v5, v16

    check-cast v5, Lcom/miui/calendar/event/schema/BirthdayEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200ec

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    iget-object v0, v5, Lcom/miui/calendar/event/schema/BirthdayEvent;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1b0b000c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual {v5}, Lcom/miui/calendar/event/schema/BirthdayEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v6, v16

    check-cast v6, Lcom/miui/calendar/event/schema/CreditEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200ed

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/miui/calendar/event/schema/CreditEvent;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b000d

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0016

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/miui/calendar/event/schema/CreditEvent;->account:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-wide v0, v6, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x1b0a0000

    long-to-int v0, v8

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0015

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0035

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    iget-wide v0, v6, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "  |  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual {v6}, Lcom/miui/calendar/event/schema/CreditEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x1b0b0033

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :pswitch_4
    move-object/from16 v17, v16

    check-cast v17, Lcom/miui/calendar/event/schema/LoanEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200f1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/miui/calendar/event/schema/LoanEvent;->bankName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0012

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0016

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/miui/calendar/event/schema/LoanEvent;->account:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/calendar/event/schema/LoanEvent;->repaymentTimeMillis:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x1b0a0000

    long-to-int v0, v10

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0015

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0035

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/calendar/event/schema/LoanEvent;->repaymentTimeMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "  |  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual/range {v17 .. v17}, Lcom/miui/calendar/event/schema/LoanEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x1b0b0033

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :pswitch_5
    move-object/from16 v13, v16

    check-cast v13, Lcom/miui/calendar/event/schema/ElectricityBillEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200ee

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b000e

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->account:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0014

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0035

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    iget-wide v0, v13, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->startTimeMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual {v13}, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v14, v16

    check-cast v14, Lcom/miui/calendar/event/schema/GasBillEvent;

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;

    move-result-object v18

    const v19, 0x1b0200ef

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0011

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v14, Lcom/miui/calendar/event/schema/GasBillEvent;->account:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v15}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0014

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1b0b0035

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    iget-wide v0, v14, Lcom/miui/calendar/event/schema/GasBillEvent;->startTimeMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v18, "AgendaAssistantAdapter"

    invoke-virtual {v14}, Lcom/miui/calendar/event/schema/GasBillEvent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->notifyDataSetChanged()V

    return-void
.end method
