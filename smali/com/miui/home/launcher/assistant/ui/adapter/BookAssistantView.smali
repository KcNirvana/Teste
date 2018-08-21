.class public Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;
.super Ljava/lang/Object;
.source "BookAssistantView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;
    }
.end annotation


# static fields
.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final REGULAR_PHONE:Ljava/lang/String; = "((\\d{3,4}-)?\\d{7,8})|(1[0-9]{10})"

.field public static final VIEW_TYPE:Ljava/lang/String; = "BookAssistantView"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;


# instance fields
.field private mAirplaneBody:Landroid/widget/LinearLayout;

.field private mAirport:Landroid/widget/RelativeLayout;

.field private mAirportViewArr:Landroid/widget/TextView;

.field private mAirportViewFrom:Landroid/widget/TextView;

.field private mArriveStationView:Landroid/widget/TextView;

.field private mCityViewArr:Landroid/widget/TextView;

.field private mCityViewFrom:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDashDivider:Landroid/view/View;

.field private mDateView:Landroid/widget/TextView;

.field private mFlighNumberView:Landroid/widget/TextView;

.field private mFlighState:Landroid/widget/TextView;

.field private mFromStationView:Landroid/widget/TextView;

.field private mGroupBody:Landroid/widget/LinearLayout;

.field private mGroupCodeName:Landroid/widget/TextView;

.field private mGroupSerialNum:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mIntervalTime:Landroid/widget/TextView;

.field private mMovieBody:Landroid/widget/LinearLayout;

.field private mMovieCodeName:Landroid/widget/TextView;

.field private mMovieCodeNum:Landroid/widget/TextView;

.field private mMovieValidName:Landroid/widget/TextView;

.field private mMovieValidNum:Landroid/widget/TextView;

.field private mPatternPhone:Ljava/util/regex/Pattern;

.field private mPlanStr:Ljava/lang/String;

.field private mSubBody:Landroid/view/ViewGroup;

.field private mTakeOffStr:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeViewArr:Landroid/widget/TextView;

.field private mTimeViewFrom:Landroid/widget/TextView;

.field private mTrainBody:Landroid/widget/LinearLayout;

.field private mTrainNumberView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->sInstance:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "((\\d{3,4}-)?\\d{7,8})|(1[0-9]{10})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPatternPhone:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindAirDefault(Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->postMainBindAir(Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindAirCalibrateData(Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindAirCalibrateData(Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 13

    const/16 v12, 0x8

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    iput-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    iput-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v7, 0x1b0902b9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900f5

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeViewFrom:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900f6

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeViewArr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0902cc

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFlighNumberView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0902cd

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFlighState:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900f8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mCityViewFrom:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900f9

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mCityViewArr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900fb

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirportViewFrom:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0900fc

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirportViewArr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    const v7, 0x1b0902ce

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirport:Landroid/widget/RelativeLayout;

    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIcon:Landroid/widget/ImageView;

    const v7, 0x1b0200eb

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->initResStr()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeViewFrom:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPlanStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTakeOffStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u2014:\u2014"

    invoke-direct {p0, v6, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeViewArr:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPlanStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrTime:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b0032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u2014:\u2014"

    invoke-direct {p0, v6, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFlighNumberView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/miui/calendar/event/schema/FlightEvent;->flightCompany:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFlighState:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/miui/calendar/event/schema/FlightEvent;->startTimeMillis:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTakeOffStr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {p0, v7, v6}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mCityViewFrom:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mCityViewArr:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depTerminal:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v1, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    :goto_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirportViewFrom:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrTerminal:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    :goto_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirportViewArr:Landroid/widget/TextView;

    invoke-direct {p0, v6, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirport:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_4
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->showCardBody(Landroid/view/View;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDashDivider:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/miui/calendar/event/schema/FlightEvent;->passengers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPlanStr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTakeOffStr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depTerminal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrTerminal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirport:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x1b04010a

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private bindAirDefault(Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0505

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0504

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->postMainBindAir(Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method

.method private bindAirplaneCard(Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 3

    iget-boolean v0, p1, Lcom/miui/calendar/event/schema/FlightEvent;->isAdjusted:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BookAssistantView"

    const-string/jumbo v1, "event isAdjusted = true"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->postMainBindAir(Lcom/miui/calendar/event/schema/FlightEvent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;)V

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    invoke-static {v0, p1, v1, v2}, Lcom/miui/calendar/api/CalendarAPI;->adjustFlightEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/api/CalendarAPI$RequestFun;Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindAirDefault(Lcom/miui/calendar/event/schema/FlightEvent;)V

    goto :goto_0
.end method

.method private bindGroupBuying(Lcom/miui/calendar/event/schema/HotelEvent;)V
    .locals 9

    const v8, 0x1b04010b

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v3, 0x1b0902ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    const v3, 0x1b0900ff

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupCodeName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    const v3, 0x1b090100

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupSerialNum:Landroid/widget/TextView;

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIcon:Landroid/widget/ImageView;

    const v3, 0x1b0200f0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupCodeName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b03e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupSerialNum:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/calendar/event/schema/HotelEvent;->hotelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->showCardBody(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDashDivider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b03d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/calendar/event/schema/HotelEvent;->address:Ljava/lang/String;

    invoke-direct {p0, v8, v2, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPatternPhone:Ljava/util/regex/Pattern;

    iget-object v3, p1, Lcom/miui/calendar/event/schema/HotelEvent;->phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b03e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/calendar/event/schema/HotelEvent;->phoneNum:Ljava/lang/String;

    invoke-direct {p0, v8, v2, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b03ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkInDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const v6, 0x1b0b041b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const v7, 0x1b0b041c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v3, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindMovieTicket(Lcom/miui/calendar/event/schema/MovieEvent;)V
    .locals 11

    const/4 v8, 0x0

    const v10, 0x1b04010b

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v9, 0x1b0902bb

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    const v9, 0x1b090101

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    const v9, 0x1b090102    # 1.13327E-22f

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeNum:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    const v9, 0x1b090103

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    const v9, 0x1b090104

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidNum:Landroid/widget/TextView;

    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIcon:Landroid/widget/ImageView;

    const v9, 0x1b0200f2

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName1:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber1:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName2:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v8

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v8

    :goto_2
    if-le v2, v3, :cond_4

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->showCardBody(Landroid/view/View;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDashDivider:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03dc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/MovieEvent;->screenings:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/MovieEvent;->seat:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/calendar/event/schema/MovieEvent;->platform:Ljava/lang/String;

    invoke-direct {p0, v10, v7, v8}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->inflateItemView(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private bindTrainCard(Lcom/miui/calendar/event/schema/TrainEvent;)V
    .locals 13

    iget-object v0, p1, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v8, 0x1b0902b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b090109

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFromStationView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b09010a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mArriveStationView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b0902cf

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainNumberView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b0902d0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDateView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b0900f5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    const v8, 0x1b090107

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIntervalTime:Landroid/widget/TextView;

    :cond_3
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIcon:Landroid/widget/ImageView;

    const v8, 0x1b0200f3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mFromStationView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/miui/calendar/event/schema/TrainEvent;->depStation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mArriveStationView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p1, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainNumberView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    iget-object v10, p1, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/home/launcher/assistant/util/Util;->getTrainType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

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

    :cond_4
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDateView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/miui/calendar/event/schema/TrainEvent;->depDate:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const v10, 0x1b0b041b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const v11, 0x1b0b041c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTimeView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1b0b005d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/miui/calendar/event/schema/TrainEvent;->startTimeMillis:J

    invoke-static {v7, v8, v9, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHoursOrMinBetweenFormat(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIntervalTime:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->showCardBody(Landroid/view/View;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDashDivider:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p1, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    iget-object v7, p1, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/calendar/event/schema/TrainPassenger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b03db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b03e0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v4, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    const v8, 0x1b04010c

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

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private inflateItemView(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initResStr()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPlanStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mPlanStr:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTakeOffStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTakeOffStr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private postMainBindAir(Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

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

.method private setViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieCodeNum:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieValidNum:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showCardBody(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mTrainBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mAirplaneBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mGroupBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mMovieBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateView(Landroid/view/View;Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/view/View;
    .locals 2

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v1, 0x1b09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v1, 0x1b0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mSubBody:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    const v1, 0x1b0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mDashDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mSubBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->mView:Landroid/view/View;

    return-object v0

    :pswitch_1
    check-cast p2, Lcom/miui/calendar/event/schema/TrainEvent;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindTrainCard(Lcom/miui/calendar/event/schema/TrainEvent;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindAirplaneCard(Lcom/miui/calendar/event/schema/FlightEvent;)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/miui/calendar/event/schema/MovieEvent;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindMovieTicket(Lcom/miui/calendar/event/schema/MovieEvent;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/miui/calendar/event/schema/HotelEvent;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindGroupBuying(Lcom/miui/calendar/event/schema/HotelEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
