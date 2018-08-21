.class public Lcom/miui/personalassistant/ui/adapter/BookView;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;,
        Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;,
        Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;,
        Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;
    }
.end annotation


# static fields
.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final REGULAR_PHONE:Ljava/lang/String; = "((\\d{3,4}-)?\\d{7,8})|(1[0-9]{10})"

.field public static final VIEW_TYPE:Ljava/lang/String; = "BookView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

.field private mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

.field private mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

.field private mPatternPhone:Ljava/util/regex/Pattern;

.field private mSubBody:Landroid/view/ViewGroup;

.field private mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "((\\d{3,4}-)?\\d{7,8})|(1[0-9]{10})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mPatternPhone:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/adapter/BookView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    return-object v0
.end method

.method private bindAirplaneCard(Lcom/miui/calendar/event/schema/FlightEvent;Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;)V
    .locals 12

    iget-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    iput-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    iput-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b0b008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b0b008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->flight:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->flightCompany:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v6, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->state:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/miui/calendar/event/schema/FlightEvent;->startTimeMillis:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1b0b006b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct {p0, v6, v5}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->timeViewFrom:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/personalassistant/util/TimeUtil;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v1}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->timeViewArr:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrTime:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/personalassistant/util/TimeUtil;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->cityViewFrom:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->cityViewArr:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->airportViewFrom:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->airportViewArr:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/miui/calendar/event/schema/FlightEvent;->passengers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1b0b0081

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->dashDivider:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    iget-object v5, p2, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;->dashDivider:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x1b040037

    iget-object v6, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0b03e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindGroupBuying(Lcom/miui/calendar/event/schema/HotelEvent;Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)V
    .locals 6

    const v5, 0x1b040038

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->access$600(Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b03e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;->access$700(Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/calendar/event/schema/HotelEvent;->hotelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b03d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/calendar/event/schema/HotelEvent;->address:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mPatternPhone:Ljava/util/regex/Pattern;

    iget-object v2, p1, Lcom/miui/calendar/event/schema/HotelEvent;->phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b03e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/calendar/event/schema/HotelEvent;->phoneNum:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkInDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/personalassistant/util/TimeUtil;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v2, v1}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private bindMovieTicket(Lcom/miui/calendar/event/schema/MovieEvent;Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;)V
    .locals 14

    iget-object v2, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName1:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber1:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName2:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x0

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v13, 0x0

    :goto_1
    if-le v12, v13, :cond_2

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/ui/adapter/BookView;->setViewData(Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const v0, 0x1b040038

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1b0b03de

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1b040038

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1b0b03dc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1b040038

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1b0b03e6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/miui/calendar/event/schema/MovieEvent;->screenings:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1b040038

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1b0b03e9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/miui/calendar/event/schema/MovieEvent;->seat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1b040038

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1b0b03e5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/miui/calendar/event/schema/MovieEvent;->platform:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6}, Lcom/miui/personalassistant/ui/adapter/BookView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_1

    :cond_2
    move-object v6, p0

    move-object/from16 v7, p2

    move-object v8, v4

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/miui/personalassistant/ui/adapter/BookView;->setViewData(Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindTrainCard(Lcom/miui/calendar/event/schema/TrainEvent;Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)V
    .locals 13

    const/4 v12, 0x0

    iget-object v0, p1, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->access$100(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    iget-object v10, p1, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/personalassistant/util/Util;->getTrainType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->access$200(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/TrainEvent;->depStation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->access$300(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->access$400(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    invoke-static {v9}, Lcom/miui/personalassistant/util/TimeUtil;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1b0b0072

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/miui/calendar/event/schema/TrainEvent;->startTimeMillis:J

    invoke-static {v7, v8, v9, v10, v11}, Lcom/miui/personalassistant/util/TimeUtil;->getIntervalTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->access$500(Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b0073

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v7, p2, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->dashDivider:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v7, p2, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;->dashDivider:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    iget-object v7, p1, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/calendar/event/schema/TrainPassenger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b03db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b03e0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    const v8, 0x1b040039

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x1b09010e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x1b09010f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x1b090110

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->seatType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_7

    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/adapter/BookView;->createLineDashGap()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v7, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private createLineDashGap()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    const v2, 0x1b040077

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-object v0
.end method

.method private inflateItemView(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b09010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1b09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setViewData(Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;->movieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public updateView(Landroid/view/View;Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/view/View;
    .locals 6

    const v5, 0x1b090003

    const v4, 0x1b090002

    const v3, 0x1b090001

    const/high16 v2, 0x1b090000

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    const v1, 0x1b0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    check-cast p2, Lcom/miui/calendar/event/schema/TrainEvent;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mTrainHolder:Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;

    invoke-direct {p0, p2, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->bindTrainCard(Lcom/miui/calendar/event/schema/TrainEvent;Lcom/miui/personalassistant/ui/adapter/BookView$TrainHolder;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    check-cast p2, Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mFlightHolder:Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;

    invoke-direct {p0, p2, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->bindAirplaneCard(Lcom/miui/calendar/event/schema/FlightEvent;Lcom/miui/personalassistant/ui/adapter/BookView$FlightHolder;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    check-cast p2, Lcom/miui/calendar/event/schema/MovieEvent;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mMovieHolder:Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;

    invoke-direct {p0, p2, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->bindMovieTicket(Lcom/miui/calendar/event/schema/MovieEvent;Lcom/miui/personalassistant/ui/adapter/BookView$MovieHolder;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/BookView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    check-cast p2, Lcom/miui/calendar/event/schema/HotelEvent;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookView;->mGroupBuyHolder:Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;

    invoke-direct {p0, p2, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->bindGroupBuying(Lcom/miui/calendar/event/schema/HotelEvent;Lcom/miui/personalassistant/ui/adapter/BookView$GroupBuyHolder;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
