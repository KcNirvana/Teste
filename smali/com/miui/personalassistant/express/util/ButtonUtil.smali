.class public Lcom/miui/personalassistant/express/util/ButtonUtil;
.super Ljava/lang/Object;
.source "ButtonUtil.java"


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x3e8

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidClick()Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/miui/personalassistant/express/util/ButtonUtil;->lastClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-wide v0, Lcom/miui/personalassistant/express/util/ButtonUtil;->lastClickTime:J

    return v2
.end method
