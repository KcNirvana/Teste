.class public Lcom/miui/calendar/util/JumpUtils;
.super Ljava/lang/Object;
.source "JumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/JumpUtils$OnCheckListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_AMOUNT:Ljava/lang/String; = "amount"

.field public static final EXTRA_BANK_NAME:Ljava/lang/String; = "bank_name"

.field public static final EXTRA_CARD_NUMBER:Ljava/lang/String; = "card_number"

.field public static final EXTRA_CHECK_IN_DATE:Ljava/lang/String; = "check_in_date"

.field public static final EXTRA_CHECK_OUT_DATE:Ljava/lang/String; = "check_out_date"

.field public static final EXTRA_CINEMA:Ljava/lang/String; = "cinema"

.field public static final EXTRA_CODE_NAME_1:Ljava/lang/String; = "code_name_1"

.field public static final EXTRA_CODE_NAME_2:Ljava/lang/String; = "code_name_2"

.field public static final EXTRA_CODE_NUMBER_1:Ljava/lang/String; = "code_number_1"

.field public static final EXTRA_CODE_NUMBER_2:Ljava/lang/String; = "code_number_2"

.field public static final EXTRA_COST:Ljava/lang/String; = "cost"

.field public static final EXTRA_CURRENCY:Ljava/lang/String; = "currency"

.field public static final EXTRA_HOTEL_NAME:Ljava/lang/String; = "hotel_name"

.field public static final EXTRA_INTERVAL:Ljava/lang/String; = "interval"

.field private static final EXTRA_KEY_EVENT_TYPE:Ljava/lang/String; = "extra_key_event_type"

.field public static final EXTRA_MOVIE_NAME:Ljava/lang/String; = "movie_name"

.field public static final EXTRA_PHONE_NUM:Ljava/lang/String; = "phone_Num"

.field public static final EXTRA_PLATFORM:Ljava/lang/String; = "platform"

.field public static final EXTRA_REPAYMENT_DATE:Ljava/lang/String; = "repayment_date"

.field public static final EXTRA_REPAYMENT_TIME_MILLIS:Ljava/lang/String; = "repayment_time_millis"

.field public static final EXTRA_ROOM_TYPE:Ljava/lang/String; = "room_type"

.field public static final EXTRA_SCREENINGS:Ljava/lang/String; = "screenings"

.field public static final EXTRA_SEAT:Ljava/lang/String; = "seat"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:JumpUtils"

.field private static final URL_VIEW_ACCOUNT_SETTING:Ljava/lang/String; = "http://calendar.miui.com/setting/account"

.field private static final URL_VIEW_AGENDA_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/agenda/detail"

.field private static final URL_VIEW_CREDIT_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/credit/detail"

.field private static final URL_VIEW_ELECTRICITY_BILL_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/electricity_bill/detail"

.field private static final URL_VIEW_FLIGHT_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/flight/detail"

.field private static final URL_VIEW_GAS_BILL_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/gas_bill/detail"

.field private static final URL_VIEW_HOTEL_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/hotel/detail"

.field private static final URL_VIEW_LOAN_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/loan/detail"

.field private static final URL_VIEW_MOVIE_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/movie/detail"

.field private static final URL_VIEW_TRAIN_DETAIL:Ljava/lang/String; = "http://calendar.miui.com/train/detail"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/miui/calendar/util/JumpUtils;->getViewAgendaEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V
    .locals 2

    new-instance v0, Lcom/miui/calendar/util/JumpUtils$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/calendar/util/JumpUtils$5;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/JumpUtils$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static getViewAccountSettingActivityIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://calendar.miui.com/setting/account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getViewAgendaActivityIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://calendar.miui.com/agenda/detail"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "query"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getViewAgendaEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_key_event_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "beginTime"

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "endTime"

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v1
.end method

.method private static getViewBirthdayEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_key_event_type"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "beginTime"

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "endTime"

    iget-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v1
.end method

.method private static getViewCreditEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/CreditEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewCreditEventDetailIntent() invalid credit event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/miui/calendar/event/schema/CreditEvent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/credit/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v0, Lcom/miui/calendar/event/schema/CreditEvent;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "bank_name"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/CreditEvent;->bankName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "amount"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/CreditEvent;->amount:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "card_number"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/CreditEvent;->account:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "repayment_date"

    iget-wide v4, v0, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getViewElectricityBillEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewElectricityBillEventDetailIntent() invalid electricity bill event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/electricity_bill/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "cost"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->cost:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "account"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->account:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "amount"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->amount:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "interval"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/ElectricityBillEvent;->interval:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getViewFlightEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://calendar.miui.com/flight/detail"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getViewGasBillEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/GasBillEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewGasBillEventDetailIntent() invalid gas bill event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/miui/calendar/event/schema/GasBillEvent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/gas_bill/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v0, Lcom/miui/calendar/event/schema/GasBillEvent;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "cost"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/GasBillEvent;->cost:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "account"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/GasBillEvent;->account:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "amount"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/GasBillEvent;->amount:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "interval"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/GasBillEvent;->interval:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getViewHotelEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/HotelEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewHotelEventDetailIntent() invalid hotel event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/miui/calendar/event/schema/HotelEvent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/hotel/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v0, Lcom/miui/calendar/event/schema/HotelEvent;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "hotel_name"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->hotelName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "check_in_date"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->checkInDate:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "check_out_date"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->checkOutDate:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "address"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->address:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "room_type"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->roomType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "phone_Num"

    iget-object v3, v0, Lcom/miui/calendar/event/schema/HotelEvent;->phoneNum:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getViewLoanEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/LoanEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewLoanEventDetailIntent() invalid loan event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    move-object v1, p0

    check-cast v1, Lcom/miui/calendar/event/schema/LoanEvent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/loan/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/LoanEvent;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "account"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->account:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "currency"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->currency:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "amount"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->amount:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "repayment_date"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->repaymentDate:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bank_name"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->bankName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "platform"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/LoanEvent;->platform:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "repayment_time_millis"

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/LoanEvent;->repaymentTimeMillis:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getViewMovieEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 6

    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/miui/calendar/event/schema/MovieEvent;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "CalThd:D:JumpUtils"

    const-string/jumbo v3, "getViewMovieEventDetailIntent() invalid movie event, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    move-object v1, p0

    check-cast v1, Lcom/miui/calendar/event/schema/MovieEvent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "http://calendar.miui.com/movie/detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "_id"

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/MovieEvent;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "platform"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->platform:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "code_name_1"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName1:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "code_number_1"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber1:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "code_name_2"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeName2:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "code_number_2"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->codeNumber2:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "movie_name"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->movieName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "cinema"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->cinema:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "screenings"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->screenings:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "seat"

    iget-object v3, v1, Lcom/miui/calendar/event/schema/MovieEvent;->seat:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/JumpUtils;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getViewTrainEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://calendar.miui.com/train/detail"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string/jumbo v3, "CalThd:D:JumpUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIntentResolvable() intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", resolvable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static viewAccountSettingActivity(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lcom/miui/calendar/util/JumpUtils;->getViewAccountSettingActivityIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/calendar/util/JumpUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/miui/calendar/util/JumpUtils$2;-><init>(ILandroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/miui/calendar/util/JumpUtils;->checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V

    return-void
.end method

.method public static viewAgendaActivity(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lcom/miui/calendar/util/JumpUtils;->getViewAgendaActivityIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/calendar/util/JumpUtils$3;

    invoke-direct {v1, p1, p0}, Lcom/miui/calendar/util/JumpUtils$3;-><init>(ILandroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/miui/calendar/util/JumpUtils;->checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V

    return-void
.end method

.method public static viewEditEventActivity(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/calendar/util/JumpUtils$4;

    invoke-direct {v1, p1, p0}, Lcom/miui/calendar/util/JumpUtils$4;-><init>(ILandroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/miui/calendar/util/JumpUtils;->checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V

    :cond_0
    return-void
.end method

.method public static viewEventDetail(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "CalThd:D:JumpUtils"

    const-string/jumbo v2, "viewEventDetail() unknown event id"

    invoke-static {v1, v2}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewAgendaEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewBirthdayEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewFlightEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewTrainEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewCreditEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewMovieEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewHotelEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewElectricityBillEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewGasBillEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Lcom/miui/calendar/util/JumpUtils;->getViewLoanEventDetailIntent(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/calendar/util/JumpUtils$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/miui/calendar/util/JumpUtils$1;-><init>(Lcom/miui/calendar/event/schema/BaseEvent;ILandroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/miui/calendar/util/JumpUtils;->checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
