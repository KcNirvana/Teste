.class public Lcom/miui/video/base/common/net/config/NetConfigHolder;
.super Ljava/lang/Object;
.source "NetConfigHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;
    .locals 1

    sget-object v0, Lcom/miui/video/base/common/net/config/NetConfigHolder;->INSTANCE:Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    return-object v0
.end method

.method public static init(Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;)V
    .locals 0

    sput-object p0, Lcom/miui/video/base/common/net/config/NetConfigHolder;->INSTANCE:Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    return-void
.end method
