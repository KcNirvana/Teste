.class public Lcom/ali/user/mobile/ui/widget/l;
.super Ljava/lang/Object;
.source "APPopClickTimeRecoder.java"


# static fields
.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ali/user/mobile/ui/widget/l;->a:J

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ali/user/mobile/ui/widget/l;->a:J

    return-void
.end method
