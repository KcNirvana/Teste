.class public Lcom/miui/video/base/statistics/event/CustomEventEntity;
.super Lcom/miui/video/framework/uri/LinkEntity;
.source "CustomEventEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "uievent"

.field private static final SCHEMA:Ljava/lang/String; = "mv://"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/miui/video/base/statistics/event/CustomEventEntity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/CustomEventEntity;-><init>(Ljava/lang/String;)V

    return-void
.end method
