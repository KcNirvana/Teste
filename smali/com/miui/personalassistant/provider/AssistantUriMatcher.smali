.class public Lcom/miui/personalassistant/provider/AssistantUriMatcher;
.super Landroid/content/UriMatcher;
.source "AssistantUriMatcher.java"


# static fields
.field public static final URI_CONTENT_ACTIVITY_QUERY:I = 0x0

.field public static final URI_CONTENT_AGENDA_QUERY:I = 0x13

.field public static final URI_CONTENT_APPS_QUERY:I = 0x3

.field public static final URI_CONTENT_CTA_QUERY:I = 0x10

.field public static final URI_CONTENT_DIDI_TRIP:I = 0x17

.field public static final URI_CONTENT_DUOKAN_QUERY:I = 0xa

.field public static final URI_CONTENT_EXPRESS_QUERY:I = 0xf

.field public static final URI_CONTENT_FUNCTION_LAUNCH:I = 0x4

.field public static final URI_CONTENT_GUIDE_QUERY:I = 0x11

.field public static final URI_CONTENT_MAP_QUERY:I = 0x6

.field public static final URI_CONTENT_MUSIC_QUERY:I = 0x8

.field public static final URI_CONTENT_RECHARGE_QUERY:I = 0x5

.field public static final URI_CONTENT_SMARTHOME_QUERY:I = 0x9

.field public static final URI_CONTENT_SMS_GROUP_QUERY:I = 0xd

.field public static final URI_CONTENT_SMS_MOVIE_QUERY:I = 0xe

.field public static final URI_CONTENT_SMS_TICKET_QUERY:I = 0xc

.field public static final URI_CONTENT_SPORT_QUERY:I = 0xb

.field public static final URI_CONTENT_TAXIUBER_QUERY:I = 0x7

.field public static final URI_CONTENT_TYPE_CUSTOM_QUERY:I = 0x2

.field public static final URI_CONTENT_TYPE_SUGGESTION_QUERY:I = 0x1

.field public static final URI_CONTENT_UNUSUAL_WEATHER:I = 0x16

.field public static final URI_CONTENT_WIDGET_TYPE_QUERY:I = 0x15

.field public static final URL_CONTENT_DAILY_GREETING:I = 0x12

.field private static sAssistantUriMatcher:Lcom/miui/personalassistant/provider/AssistantUriMatcher;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/UriMatcher;-><init>(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/personalassistant/provider/AssistantUriMatcher;
    .locals 3

    const-class v1, Lcom/miui/personalassistant/provider/AssistantUriMatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/provider/AssistantUriMatcher;->sAssistantUriMatcher:Lcom/miui/personalassistant/provider/AssistantUriMatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/provider/AssistantUriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/miui/personalassistant/provider/AssistantUriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/personalassistant/provider/AssistantUriMatcher;->sAssistantUriMatcher:Lcom/miui/personalassistant/provider/AssistantUriMatcher;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/provider/AssistantUriMatcher;->sAssistantUriMatcher:Lcom/miui/personalassistant/provider/AssistantUriMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
