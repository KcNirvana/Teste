.class public Lcom/miui/home/launcher/assistant/payment/PaymentUtil;
.super Ljava/lang/Object;
.source "PaymentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/payment/PaymentUtil$CardContentColumns;
    }
.end annotation


# static fields
.field private static final BASE_URI:Ljava/lang/String; = "content://com.miui.paymentassistant/"

.field private static final CARD_CONTENT_URI:Landroid/net/Uri;

.field public static final PAYMENT_ACTION_ADD_RECORD:Ljava/lang/String; = "paymentassistant.intent.action.add_record"

.field public static final PAYMENT_ACTION_MAIN:Ljava/lang/String; = "paymentassistant.intent.action.MAIN"

.field public static final PAYMENT_ACTION_SETTINGS:Ljava/lang/String; = "paymentassistant.intent.action.settings"

.field public static final PAYMENT_PACKAGE_NAAME:Ljava/lang/String; = "com.miui.personalassistant"

.field protected static final PAYMENT_UPDATE_URI:Landroid/net/Uri;

.field public static final PREF_NOTICE_BAR_ENABLED:Ljava/lang/String; = "pref_notice_bar_enabled"

.field private static final TAG:Ljava/lang/String; = "PaymentUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.miui.paymentassistant/payment_card_content"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->CARD_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.miui.paymentassistant/payment_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNoticeBarEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const-string/jumbo v1, "pref_notice_bar_enabled"

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/config/PALog;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->isSourceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSourceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.miui.paymentassistant/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "source_enabled"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "source_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static queryCardContent(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->CARD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->CARD_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    :goto_1
    invoke-static {v7}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getCardContent(Landroid/database/Cursor;)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    move-result-object v1

    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v1, "PaymentUtil"

    const-string/jumbo v2, "payment provider client is null"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "PaymentUtil"

    const-string/jumbo v2, "query payment card"

    invoke-static {v1, v2, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    throw v1
.end method

.method public static setNoticeBarEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "pref_notice_bar_enabled"

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPaymentAssistantAuth(Landroid/content/Context;Z)Z
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "payment_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->CARD_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PaymentUtil"

    const-string/jumbo v5, "enable payment card"

    invoke-static {v4, v5, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSourceEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const-string/jumbo v2, "content://com.miui.paymentassistant/payment_source_enabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static startPaymentActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaymentUtil"

    const-string/jumbo v2, "ActivityNotFoundException "

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startPaymentAddActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "paymentassistant.intent.action.add_record"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startPaymentMainActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "paymentassistant.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startPaymentSettingActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "paymentassistant.intent.action.settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
