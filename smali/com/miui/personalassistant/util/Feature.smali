.class public final enum Lcom/miui/personalassistant/util/Feature;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/personalassistant/util/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/personalassistant/util/Feature;

.field public static final enum ACTIVITY_BANNER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum ANTISPAM:Lcom/miui/personalassistant/util/Feature;

.field public static final enum ANTISPAM_SYNC:Lcom/miui/personalassistant/util/Feature;

.field public static final enum AREA_CODE:Lcom/miui/personalassistant/util/Feature;

.field public static final enum BUILDIN_SERVICE:Lcom/miui/personalassistant/util/Feature;

.field public static final enum BUILT_IN_DATA_SUBSCRIPTION:Lcom/miui/personalassistant/util/Feature;

.field public static final enum ENROLL:Lcom/miui/personalassistant/util/Feature;

.field public static final enum EVENT_RECEIVER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum EXTENDED_DATA:Lcom/miui/personalassistant/util/Feature;

.field public static final enum FRAUD_NUMBER_IDENTIFICATION:Lcom/miui/personalassistant/util/Feature;

.field public static final enum IVR:Lcom/miui/personalassistant/util/Feature;

.field public static final enum LOCATION:Lcom/miui/personalassistant/util/Feature;

.field public static final enum MESSAGING_TEMPLATE:Lcom/miui/personalassistant/util/Feature;

.field public static final enum NAVIGATION_HOME:Lcom/miui/personalassistant/util/Feature;

.field public static final enum NAVIGATION_SEARCH:Lcom/miui/personalassistant/util/Feature;

.field public static final enum PUSH_DAILY_HIT_INFO:Lcom/miui/personalassistant/util/Feature;

.field public static final enum PUSH_MARKED_NUMBER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum PUSH_STATISTICS:Lcom/miui/personalassistant/util/Feature;

.field public static final enum REGION_PICKER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum SERVICE_SETTING:Lcom/miui/personalassistant/util/Feature;

.field public static final enum SMS_WHITE_LIST:Lcom/miui/personalassistant/util/Feature;

.field public static final enum STATISTICS:Lcom/miui/personalassistant/util/Feature;

.field public static final enum USER_CENTER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum WEB_RESOURCE:Lcom/miui/personalassistant/util/Feature;

.field public static final enum WEB_RESOURCE_SYNC:Lcom/miui/personalassistant/util/Feature;

.field public static final enum YELLOWPAGE_PROVIDER:Lcom/miui/personalassistant/util/Feature;

.field public static final enum YELLOWPAGE_SYNC:Lcom/miui/personalassistant/util/Feature;

.field public static final enum YELLOW_PAGE:Lcom/miui/personalassistant/util/Feature;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "NAVIGATION_HOME"

    const-string/jumbo v2, "navigation_home"

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->NAVIGATION_HOME:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "NAVIGATION_SEARCH"

    const-string/jumbo v2, "navigation_search"

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->NAVIGATION_SEARCH:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "EVENT_RECEIVER"

    const-string/jumbo v2, "event_receiver"

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->EVENT_RECEIVER:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "YELLOW_PAGE"

    const-string/jumbo v2, "yellow_page"

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->YELLOW_PAGE:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "BUILDIN_SERVICE"

    const-string/jumbo v2, "buildin_service"

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->BUILDIN_SERVICE:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "YELLOWPAGE_PROVIDER"

    const/4 v2, 0x5

    const-string/jumbo v3, "yellowpage_provider"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->YELLOWPAGE_PROVIDER:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "YELLOWPAGE_SYNC"

    const/4 v2, 0x6

    const-string/jumbo v3, "yellowpage_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->YELLOWPAGE_SYNC:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "IVR"

    const/4 v2, 0x7

    const-string/jumbo v3, "ivr"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->IVR:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "ANTISPAM"

    const/16 v2, 0x8

    const-string/jumbo v3, "antispam"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->ANTISPAM:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "ANTISPAM_SYNC"

    const/16 v2, 0x9

    const-string/jumbo v3, "antispam_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->ANTISPAM_SYNC:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "BUILT_IN_DATA_SUBSCRIPTION"

    const/16 v2, 0xa

    const-string/jumbo v3, "built_in_data_subscription"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->BUILT_IN_DATA_SUBSCRIPTION:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "EXTENDED_DATA"

    const/16 v2, 0xb

    const-string/jumbo v3, "extended_data"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->EXTENDED_DATA:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "USER_CENTER"

    const/16 v2, 0xc

    const-string/jumbo v3, "user_center"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->USER_CENTER:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "LOCATION"

    const/16 v2, 0xd

    const-string/jumbo v3, "location"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->LOCATION:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "AREA_CODE"

    const/16 v2, 0xe

    const-string/jumbo v3, "area_code"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->AREA_CODE:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "STATISTICS"

    const/16 v2, 0xf

    const-string/jumbo v3, "statistics"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->STATISTICS:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "WEB_RESOURCE"

    const/16 v2, 0x10

    const-string/jumbo v3, "web_resource"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->WEB_RESOURCE:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "MESSAGING_TEMPLATE"

    const/16 v2, 0x11

    const-string/jumbo v3, "messaging_template"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->MESSAGING_TEMPLATE:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "WEB_RESOURCE_SYNC"

    const/16 v2, 0x12

    const-string/jumbo v3, "web_resource_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->WEB_RESOURCE_SYNC:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "SERVICE_SETTING"

    const/16 v2, 0x13

    const-string/jumbo v3, "service_setting"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->SERVICE_SETTING:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "SMS_WHITE_LIST"

    const/16 v2, 0x14

    const-string/jumbo v3, "sms_white_list"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->SMS_WHITE_LIST:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "PUSH_DAILY_HIT_INFO"

    const/16 v2, 0x15

    const-string/jumbo v3, "push_daily_hit_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->PUSH_DAILY_HIT_INFO:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "PUSH_STATISTICS"

    const/16 v2, 0x16

    const-string/jumbo v3, "push_statistics"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->PUSH_STATISTICS:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "PUSH_MARKED_NUMBER"

    const/16 v2, 0x17

    const-string/jumbo v3, "push_marked_number"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->PUSH_MARKED_NUMBER:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "ACTIVITY_BANNER"

    const/16 v2, 0x18

    const-string/jumbo v3, "activity_banner"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->ACTIVITY_BANNER:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "ENROLL"

    const/16 v2, 0x19

    const-string/jumbo v3, "enroll"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->ENROLL:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "FRAUD_NUMBER_IDENTIFICATION"

    const/16 v2, 0x1a

    const-string/jumbo v3, "fraud_number_identification"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->FRAUD_NUMBER_IDENTIFICATION:Lcom/miui/personalassistant/util/Feature;

    new-instance v0, Lcom/miui/personalassistant/util/Feature;

    const-string/jumbo v1, "REGION_PICKER"

    const/16 v2, 0x1b

    const-string/jumbo v3, "region_picker"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Feature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->REGION_PICKER:Lcom/miui/personalassistant/util/Feature;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/miui/personalassistant/util/Feature;

    sget-object v1, Lcom/miui/personalassistant/util/Feature;->NAVIGATION_HOME:Lcom/miui/personalassistant/util/Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/personalassistant/util/Feature;->NAVIGATION_SEARCH:Lcom/miui/personalassistant/util/Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/personalassistant/util/Feature;->EVENT_RECEIVER:Lcom/miui/personalassistant/util/Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/personalassistant/util/Feature;->YELLOW_PAGE:Lcom/miui/personalassistant/util/Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/personalassistant/util/Feature;->BUILDIN_SERVICE:Lcom/miui/personalassistant/util/Feature;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->YELLOWPAGE_PROVIDER:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->YELLOWPAGE_SYNC:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->IVR:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->ANTISPAM:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->ANTISPAM_SYNC:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->BUILT_IN_DATA_SUBSCRIPTION:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->EXTENDED_DATA:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->USER_CENTER:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->LOCATION:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->AREA_CODE:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->STATISTICS:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->WEB_RESOURCE:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->MESSAGING_TEMPLATE:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->WEB_RESOURCE_SYNC:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->SERVICE_SETTING:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->SMS_WHITE_LIST:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->PUSH_DAILY_HIT_INFO:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->PUSH_STATISTICS:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->PUSH_MARKED_NUMBER:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->ACTIVITY_BANNER:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->ENROLL:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->FRAUD_NUMBER_IDENTIFICATION:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/miui/personalassistant/util/Feature;->REGION_PICKER:Lcom/miui/personalassistant/util/Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/util/Feature;->$VALUES:[Lcom/miui/personalassistant/util/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/personalassistant/util/Feature;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/personalassistant/util/Feature;
    .locals 1

    const-class v0, Lcom/miui/personalassistant/util/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/util/Feature;

    return-object v0
.end method

.method public static values()[Lcom/miui/personalassistant/util/Feature;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/Feature;->$VALUES:[Lcom/miui/personalassistant/util/Feature;

    invoke-virtual {v0}, [Lcom/miui/personalassistant/util/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/personalassistant/util/Feature;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/Feature;->mName:Ljava/lang/String;

    return-object v0
.end method
