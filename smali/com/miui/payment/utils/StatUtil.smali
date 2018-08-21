.class public Lcom/miui/payment/utils/StatUtil;
.super Ljava/lang/Object;
.source "StatUtil.java"


# static fields
.field public static final CASE_FAIL_CONTENT_EMPTY:I = 0xa

.field public static final CASE_FAIL_INTERNAL_EMPTY:I = 0xe

.field public static final CASE_FAIL_NOT_PATTERN:I = 0xc

.field public static final CASE_FAIL_NOT_SUPPORT:I = 0xb

.field public static final CASE_FAIL_SMS_EMPTY:I = 0xd

.field public static final EVENT_ACTIVE_USER:Ljava/lang/String; = "finance_user"

.field public static final EVENT_RECORD_FAIL:Ljava/lang/String; = "finance_fail"

.field public static final EVENT_RECORD_SUCCESS:Ljava/lang/String; = "finance_new"

.field public static final EVENT_REPORT_CLICK:Ljava/lang/String; = "finance_report_click"

.field public static final EVENT_REPORT_VERSION:Ljava/lang/String; = "finance_version"

.field public static final EVENT_USE_TIME:Ljava/lang/String; = "finance_time"

.field public static final KEY_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_CONFIG_VERSION:Ljava/lang/String; = "config_version"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_STAY_MILLIS:Ljava/lang/String; = "stay_millis"

.field public static final PAYMENT_CATEGORY_DESC:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "StatUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "spending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "remittance"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "catering"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "traffic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "entertainment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "shopping"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "telephone charge"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "go dutch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "red packet"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "atm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "life"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tenement"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "medical"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "education"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "other"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/utils/StatUtil;->PAYMENT_CATEGORY_DESC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static recordFailedEvent(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static recordFailedEvent(ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "activity_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v2, "config_version"

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "personalassistant_payment_v2"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/cloudsync/Preferences;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Payment"

    const-string/jumbo v3, "finance_fail"

    invoke-static {v2, v3, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "content empty"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "no support"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "sms empty"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "no pattern"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "internal empty"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static recordSuccessEvent(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/captor/CaptorToken;)V
    .locals 7

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getMethodDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/payment/data/TransactionItem;->getCategoryCode()I

    move-result v2

    const/4 v5, 0x1

    if-lt v2, v5, :cond_1

    const/16 v5, 0xf

    if-le v2, v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v5, Lcom/miui/payment/utils/StatUtil;->PAYMENT_CATEGORY_DESC:[Ljava/lang/String;

    aget-object v1, v5, v2

    const-string/jumbo v5, "activity_name"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "source"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "category"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "from"

    const-string/jumbo v6, "catcher"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "Payment"

    const-string/jumbo v6, "finance_new"

    invoke-static {v5, v6, v4}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static recordSuccessEvent(Lcom/miui/payment/ui/edit/EditData;)V
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditData;->getMethodDesc()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/miui/payment/utils/StatUtil;->PAYMENT_CATEGORY_DESC:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v4

    aget-object v0, v3, v4

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "category"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, "manual"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Payment"

    const-string/jumbo v4, "finance_new"

    invoke-static {v3, v4, v2}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static recordTimeEvent(J)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "stay_millis"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Payment"

    const-string/jumbo v2, "finance_time"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static recordVersionEvent(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "config_version"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Payment"

    const-string/jumbo v2, "finance_version"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
